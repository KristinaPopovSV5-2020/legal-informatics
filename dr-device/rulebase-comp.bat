(import-rdf )
(import-rdf-files facts.rdf)
(load-compiled-dr-device rulebase.clp)
(go-dr-device)
(dr-device_export_rdf rulebase.ruleml export.rdf proof.ruleml to_pay_min to_pay_max recommend_fine_reduction to_pay_less recommend_increased_penalty is_high_category_weapon_in_public to_increase_penalty)
