import xml.etree.ElementTree as ET


xml_file = "Documents/laws/krivicni.xml"
tree = ET.parse(xml_file)
root = tree.getroot()


html_content = """<?xml version="1.0" encoding="UTF-8"?>
<head>
    <title>Krivični zakonik</title>
    <style>
        body { font-family: Arial, sans-serif; line-height: 1.6; }
         h1 {text-align: center;}
        .chapter { margin-bottom: 20px; }
        .chapter h2 { color: #444;text-align: center; }
        .section { margin-left: 20px; margin-bottom: 10px; text-align: center; }
        .article { margin-left: 40px; text-align: center;}
        .article p { margin-left: 20px;text-align: left; }
        a { color: blue; text-decoration: none; }
        a:hover { text-decoration: underline; }
        .point  { margin-left: 20px;text-align: left; }
    </style>
</head>
<body>
    <h1>Krivični zakonik Crne Gore</h1>
"""

namespaces = {
    'akn': "http://docs.oasis-open.org/legaldocml/ns/akn/3.0/WD17"
}

def process_body_to_html():
    global html_content
    body = root.find(".//akn:body", namespaces)
    if body is not None:
        html_content += """
    <div class="body-content">"""
        def process_element(sub_elem):
            global html_content
            if sub_elem.tag.lower().endswith("chapter"):
                chapter_id = sub_elem.attrib.get("eId", "")
                html_content += f"""
        <div class="chapter" id="{chapter_id}">"""
                # Obradi chapter
                num = sub_elem.find("./akn:num", namespaces)
                heading = sub_elem.find("./akn:heading", namespaces)
                if num is not None and heading is not None:
                    html_content += f"""
            <h2>{num.text.strip()}</h2>"""
                    html_content += f"""
                <h2>{heading.text.strip()}</h2>"""
            elif sub_elem.tag.lower().endswith("section"):
                section_id = sub_elem.attrib.get("eId", "")
                html_content += f"""
            <div class="section" id="{section_id}">"""
                heading = sub_elem.find("./akn:heading", namespaces)
                if heading is not None:
                    html_content += f"""
                <h4>{heading.text.strip()}</h4>"""
            elif sub_elem.tag.lower().endswith("article"):
                article_id = sub_elem.attrib.get("eId", "")
                html_content += f"""
                <div class="article" id="{article_id}">"""
                # Obradi član
                num = sub_elem.find("./akn:num", namespaces)
                if num is not None:
                    html_content += f"""
                    <h5>{num.text.strip()}</h5>"""
            elif sub_elem.tag.lower().endswith("paragraph"):
                paragraph_id = sub_elem.attrib.get("eId", "")
                html_content += f"""
                    <p id="{paragraph_id}">"""
                intro = sub_elem.find("./akn:intro", namespaces)
                if intro is None:
                    # Obradi paragraf
                    num = sub_elem.find("./akn:num", namespaces)
                    content = sub_elem.find("./akn:content/akn:p", namespaces)
                    if num is not None:
                        html_content += f"<strong>{num.text.strip()} </strong>"
                    if content is not None and content.text:
                        html_content += process_paragraph_content(content)
                else:
                    if intro is not None:
                        intro_content = intro.find("./akn:p", namespaces)
                        if intro_content is not None and intro_content.text:
                            html_content += process_paragraph_content(intro_content)
                    # Obradi point-ove
                    for point in sub_elem.findall("./akn:point", namespaces):
                        point_id = point.attrib.get("eId", "")
                        html_content += f'<div class="point" id="{point_id}">'
                        num = point.find("./akn:num", namespaces)
                        content = point.find("./akn:content/akn:p", namespaces)
                        if num is not None:
                            html_content += f"<strong>{num.text.strip()} </strong>"
                        if content is not None and content.text:
                            html_content += process_paragraph_content(content)
                        html_content += "</div>"

                html_content += "</p>"

            # Rekurzivno obradi decu
            for child in sub_elem:
                print(child)
                process_element(child)

            # Zatvori div za chapter, section, ili article
            if sub_elem.tag.lower().endswith(("chapter", "section", "article")):
                html_content += "</div>"

        for elem in body:
            process_element(elem)

        html_content += """
        </div>
        """
    else:
        print("Body element nije pronađen.")


def process_paragraph_content(content):
    """
    Pomocna funkcija koja obrađuje sadržaj unutar <p> tagova, uključujući <ref> tagove.
    """
    result = content.text.strip()
    for child in content:
        # Obrada referenci (ako postoji <ref>)
        if child.tag.title()[-3:] == "Ref":
            href = child.attrib.get("href", "#")
            ref_text = child.text.strip() if child.text else "Link"
            result += f'<a href="{href}"> {ref_text} </a>'
        # Obrada preostalog teksta unutar <p>
        elif child.text:
            result += child.text.strip()
        # Obrada teksta nakon child elementa (<ref> ili bilo koji drugi)
        if child.tail:
            result += child.tail.strip()
    return result


if __name__ == '__main__':
    process_body_to_html()
    html_content += """
    </body>
    </html>
    """
    with open("krivicni_zakonik.html", "w", encoding="utf-8") as file:
        file.write(html_content)

    print("HTML generisanje je završeno!")
