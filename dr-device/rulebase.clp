(import-rdf "facts.rdf")
		(export-rdf export.rdf  jail_3_months confiscation confiscate_weapon
        to_pay_min to_pay_max recommend_fine_reduction to_pay_less recommend_increased_penalty
        is_high_category_weapon_in_public to_increase_penalty 30_imprisonment money to_pay_max2
        to_pay_min2 harm_done_with_weapon jail_3_year fine to_pay_max3 to_pay_min3)
		(export-proof proof.ruleml)
		
(defeasiblerule rule1
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:unauthorized_possession_of_a_weapon "yes")
	) 
  => 
	 
	(jail_3_months 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule111
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:weapon_type "B")
	) 
  => 
	 
	(fine 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule2
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:harm_done "yes")
	) 
  => 
	 
	(harm_done_with_weapon 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule7
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:unauthorized_possession_of_a_weapon "yes")
	) 
  => 
	 
	(confiscation 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule8
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:unauthorized_possession_of_a_weapon "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:weapon_type "B")
	) 
  => 
	 
	(money 
		(
		 defendant ?Defendant)
	) 
) 
	
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
	
(defeasiblerule pen1
		 
	(jail_3_months 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(30_imprisonment 
		(
		 value 30)
	) 
) 
	
(defeasiblerule pen7
		 
	(confiscation 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(confiscate_weapon 
		(
		 value true)
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
		 value true)
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
		 value true)
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
	
(defeasiblerule pen14
		 
	(money 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_max2 
		(
		 value 500)
	) 
) 
	
(defeasiblerule pen15
		 
	(money 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_min2 
		(
		 value 30)
	) 
) 
	
(defeasiblerule pen16
		 
	(harm_done_with_weapon 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(jail_3_year 
		(
		 value 3)
	) 
) 
	
(defeasiblerule pen17
		 
	(fine 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_max3 
		(
		 value 500)
	) 
) 
	
(defeasiblerule pen18
		 
	(fine 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_min3 
		(
		 value 30)
	) 
) 
	