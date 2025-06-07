(import-rdf "facts.rdf")
		(export-rdf export.rdf  jail_3_months confiscation confiscate_weapon
        to_pay_min to_pay_max recommend_fine_reduction to_pay_less recommend_increased_penalty
        is_high_category_weapon_in_public to_increase_penalty imprisonment_3 money to_pay_max2
        to_pay_min2 harm_done_with_weapon jail_3_year reduce_penalty reduce_penalty1
        found_outside_safe to_pay_min_3 to_pay_max_3 jail_max_year jail_min_year)
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
		 lc:admitted_guilt "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:regrets_it "yes")
	) 
  => 
	 
	(reduce_penalty1 
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
		 lc:has_weapon_type_B "yes")
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
	
(defeasiblerule rule55
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:method_of_weapon_discovery "house")
	) 
  => 
	 
	(found_outside_safe 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule56
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:method_of_weapon_discovery "car")
	) 
  => 
	 
	(found_outside_safe 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule57
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:method_of_weapon_discovery "public")
	) 
  => 
	 
	(found_outside_safe 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule58
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:method_of_weapon_discovery "other")
	) 
  => 
	 
	(found_outside_safe 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule403
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:has_weapon_type_A "yes")
	) 
  => 
	 
	(destructive_weapon 
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
	 
	(imprisonment_3 
		(
		 value 3)
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
		 
	(reduce_penalty1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(reduce_penalty 
		(
		 value true)
	) 
) 
	
(defeasiblerule pen18
		 
	(found_outside_safe 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_max_3 
		(
		 value 500)
	) 
) 
	
(defeasiblerule pen19
		 
	(found_outside_safe 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_min_3 
		(
		 value 30)
	) 
) 
	
(defeasiblerule pen18
		 
	(found_outside_safe 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_max_3 
		(
		 value 500)
	) 
) 
	
(defeasiblerule pen19
		 
	(found_outside_safe 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_min_3 
		(
		 value 30)
	) 
) 
	
(defeasiblerule pen18
		 
	(found_outside_safe 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_max_3 
		(
		 value 500)
	) 
) 
	
(defeasiblerule pen19
		 
	(found_outside_safe 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_min_3 
		(
		 value 30)
	) 
) 
	
(defeasiblerule pen18
		 
	(found_outside_safe 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_max_3 
		(
		 value 500)
	) 
) 
	
(defeasiblerule pen19
		 
	(found_outside_safe 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_min_3 
		(
		 value 30)
	) 
) 
	
(defeasiblerule pen20
		 
	(destructive_weapon 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(jail_min_year 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pen21
		 
	(destructive_weapon 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(jail_max_year 
		(
		 value 8)
	) 
) 
	