(import-rdf "facts.rdf")
		(export-rdf export.rdf  to_pay_min to_pay_max recommend_fine_reduction
        to_pay_less recommend_increased_penalty is_high_category_weapon_in_public
        to_increase_penalty)
		(export-proof proof.ruleml)
		
(defeasiblerule rule9
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:low_income "yes")
	) 
  => 
	 
	(recommend_fine_reduction 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule10
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:previously_convicted "yes")
	) 
  => 
	 
	(recommend_increased_penalty 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule11
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:method_of_weapon_discovery "public")
	) 
  => 
	 
	(is_high_category_weapon_in_public 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule pen10
		 
	(recommend_fine_reduction 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_less 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pen11
		 
	(recommend_increased_penalty 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_increase_penalty 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pen12
		 
	(is_high_category_weapon_in_public 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_max 
		(
		 value 500)
	) 
) 
	
(defeasiblerule pen13
		 
	(is_high_category_weapon_in_public 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_min 
		(
		 value 30)
	) 
) 
	