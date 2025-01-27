import xml.etree.ElementTree as ET

xml_file = "Documents/cases/K16-2020.xml"
tree = ET.parse(xml_file)
root = tree.getroot()

sections = {
    "introduction": "U IME CRNE GORE",
    "background": "P R E S U D U",
    "decision": "Kriv je",
    "arguments": "O b r a z l o ž e nj e",
}

last_section = {
    "conclusions": ""
}

namespaces = {
    'akn': 'http://docs.oasis-open.org/legaldocml/ns/akn/3.0'
}

html_content = """<?xml version="1.0" encoding="UTF-8"?>
<html>
    <style>
        h1, h2, h3, h4 { text-align: center;margin: 0;font-family: Calibri,serif; }
        h1 { color: #444475; font-weight: bolder;}
        h2 { margin-bottom: 20px; margin-top: 30px; }
        h2,h4 {font-weight: normal; }
    </style>
    <div>
"""


def extract_FRBRauthor():
    global html_content
    element = root.find(".//akn:FRBRauthor", namespaces)
    if element is not None and element.text:
        html_content += f"""
        <h4>
            {element.text.strip()}
        </h4>"""
def extract_FRBRtitle():
    global html_content
    element = root.find(".//akn:FRBRtitle", namespaces)
    if element is not None and element.text:
        html_content += f"""
        <h1>
            {element.text.strip()}
        </h1>"""
def extract_FRBRdate():
    global html_content
    element = root.find(".//akn:FRBRdate", namespaces)
    if element is not None and element.text:
        html_content += f"""
        <h4 style="color: #757171;">
           {element.text.strip()}
        </h4>"""


def extract_and_add_to_html(tag_name, section_title):
    global html_content
    element = root.find(f".//akn:{tag_name}", namespaces)
    if element is not None:
        html_content += f"""
        <div class="section">
            <h2>{section_title}</h2>
            <p>
            """
        def process_element(sub_elem):
            global html_content
            if sub_elem.tag.title()[-1] == 'P':
                html_content += "<br /><br />"
                if sub_elem.text:
                    if sub_elem.text == "MJERA BEZBJEDNOSTI":
                        html_content+= f"""
             <h2>MJERA BEZBJEDNOSTI</h2>"""
                    elif sub_elem.text == "O S U Đ U J E":
                        html_content += f"""
             <h2>O S U Đ U J E</h2>"""
                    elif sub_elem.text == "USLOVNU OSUDU":
                        html_content += f"""
                    <h2>USLOVNU OSUDU</h2>"""
                    elif sub_elem.text == "ODUZIMANJE PREDMETA":
                        html_content += f"""
            <h2>ODUZIMANJE PREDMETA</h2>"""
                    else:
                        html_content += sub_elem.text.strip()
            elif sub_elem.tag.title()[-3:] == "Ref":
                href = sub_elem.attrib["href"]
                text = sub_elem.text.strip() if sub_elem.text else "Link"
                html_content += f'<a href="{href}">{text}</a>'
            elif sub_elem.text:
                html_content += sub_elem.text
            if sub_elem.tail:
                html_content += sub_elem.tail

            for child in sub_elem:
                process_element(child)

        process_element(element)

        html_content += f"""
            </p>
        </div>"""
    else:
        print("Element nije pronađen.")

def extract_last_section_and_add_to_html(tag_name):
    global html_content
    element = root.find(f".//akn:{tag_name}", namespaces)
    if element is not None:
        def process_element(sub_elem):
            global html_content
            if sub_elem.tag.title()[-1] == 'P':
                html_content += "<br /><br />"
                if sub_elem.text:
                        html_content += sub_elem.text.strip()
            elif sub_elem.text:
                if "OSNOVNI" in sub_elem.text:
                    html_content += f"""
                              <div class="section">
                                  <h2>{sub_elem.text}</h2>
                                  """
                elif "Dana" in sub_elem.text:
                    html_content += f"""
                                  <h2>{sub_elem.text}</h2>
                                  <p>
                                  """
                else:
                    html_content +=sub_elem.text.strip()
            if sub_elem.tail:
                html_content += sub_elem.tail

            for child in sub_elem:
                process_element(child)

        process_element(element)

        html_content += f"""
               </p>
           </div>"""
    else:
        print("Element nije pronađen.")


if __name__ == '__main__':
    extract_FRBRauthor()
    extract_FRBRtitle()
    extract_FRBRdate()
    for tag, title in sections.items():
        extract_and_add_to_html(tag, title)
    for tag1, title1 in last_section.items():
        extract_last_section_and_add_to_html(tag1)
    output_file = "K16-2020.html"
    html_content += """
    </div>
</html>"""
    with open(output_file, "w", encoding="utf-8") as file:
        file.write(html_content)

    print(f"HTML stranica je generisana i sačuvana u fajlu: {output_file}")
