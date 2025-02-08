([pen13-defeasibly-dot] of derived-attribute-rule
   (pos-name pen13-defeasibly-dot-gen85)
   (depends-on declare to_pay_min is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen13] ) ) ) ?gen70 <- ( to_pay_min ( value 30 ) ( positive 1 ) ( positive-derivator pen13 $? ) ) ( test ( eq ( class ?gen70 ) to_pay_min ) ) ( not ( and ?gen77 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( to_pay_min ( negative ~ 2 ) ( positive-overruled $?gen72 & : ( not ( member$ pen13 $?gen72 ) ) ) ) ) ) => ?gen70 <- ( to_pay_min ( positive 0 ) )"))

([pen13-defeasibly] of derived-attribute-rule
   (pos-name pen13-defeasibly-gen87)
   (depends-on declare is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen13] ) ) ) ?gen77 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( to_pay_min ( value 30 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen72 & : ( not ( member$ pen13 $?gen72 ) ) ) ) ( test ( eq ( class ?gen70 ) to_pay_min ) ) => ?gen70 <- ( to_pay_min ( positive 1 ) ( positive-derivator pen13 ?gen77 ) )"))

([pen13-overruled-dot] of derived-attribute-rule
   (pos-name pen13-overruled-dot-gen89)
   (depends-on declare to_pay_min is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen13] ) ) ) ?gen70 <- ( to_pay_min ( value 30 ) ( negative-support $?gen73 ) ( negative-overruled $?gen74 & : ( subseq-pos ( create$ pen13-overruled $?gen73 $$$ $?gen74 ) ) ) ) ( test ( eq ( class ?gen70 ) to_pay_min ) ) ( not ( and ?gen77 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( to_pay_min ( positive-defeated $?gen72 & : ( not ( member$ pen13 $?gen72 ) ) ) ) ) ) => ( calc ( bind $?gen75 ( delete-member$ $?gen74 ( create$ pen13-overruled $?gen73 ) ) ) ) ?gen70 <- ( to_pay_min ( negative-overruled $?gen75 ) )"))

([pen13-overruled] of derived-attribute-rule
   (pos-name pen13-overruled-gen91)
   (depends-on declare is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen13] ) ) ) ?gen77 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( to_pay_min ( value 30 ) ( negative-support $?gen73 ) ( negative-overruled $?gen74 & : ( not ( subseq-pos ( create$ pen13-overruled $?gen73 $$$ $?gen74 ) ) ) ) ( positive-defeated $?gen72 & : ( not ( member$ pen13 $?gen72 ) ) ) ) ( test ( eq ( class ?gen70 ) to_pay_min ) ) => ( calc ( bind $?gen75 ( create$ pen13-overruled $?gen73 $?gen74 ) ) ) ?gen70 <- ( to_pay_min ( negative-overruled $?gen75 ) )"))

([pen13-support] of derived-attribute-rule
   (pos-name pen13-support-gen93)
   (depends-on declare is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen13] ) ) ) ?gen69 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ) ?gen70 <- ( to_pay_min ( value 30 ) ( positive-support $?gen72 & : ( not ( subseq-pos ( create$ pen13 ?gen69 $$$ $?gen72 ) ) ) ) ) ( test ( eq ( class ?gen70 ) to_pay_min ) ) => ( calc ( bind $?gen75 ( create$ pen13 ?gen69 $?gen72 ) ) ) ?gen70 <- ( to_pay_min ( positive-support $?gen75 ) )"))

([pen12-defeasibly-dot] of derived-attribute-rule
   (pos-name pen12-defeasibly-dot-gen95)
   (depends-on declare to_pay_max is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen12] ) ) ) ?gen61 <- ( to_pay_max ( value 500 ) ( positive 1 ) ( positive-derivator pen12 $? ) ) ( test ( eq ( class ?gen61 ) to_pay_max ) ) ( not ( and ?gen68 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( to_pay_max ( negative ~ 2 ) ( positive-overruled $?gen63 & : ( not ( member$ pen12 $?gen63 ) ) ) ) ) ) => ?gen61 <- ( to_pay_max ( positive 0 ) )"))

([pen12-defeasibly] of derived-attribute-rule
   (pos-name pen12-defeasibly-gen97)
   (depends-on declare is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen12] ) ) ) ?gen68 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( to_pay_max ( value 500 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen63 & : ( not ( member$ pen12 $?gen63 ) ) ) ) ( test ( eq ( class ?gen61 ) to_pay_max ) ) => ?gen61 <- ( to_pay_max ( positive 1 ) ( positive-derivator pen12 ?gen68 ) )"))

([pen12-overruled-dot] of derived-attribute-rule
   (pos-name pen12-overruled-dot-gen99)
   (depends-on declare to_pay_max is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen12] ) ) ) ?gen61 <- ( to_pay_max ( value 500 ) ( negative-support $?gen64 ) ( negative-overruled $?gen65 & : ( subseq-pos ( create$ pen12-overruled $?gen64 $$$ $?gen65 ) ) ) ) ( test ( eq ( class ?gen61 ) to_pay_max ) ) ( not ( and ?gen68 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( to_pay_max ( positive-defeated $?gen63 & : ( not ( member$ pen12 $?gen63 ) ) ) ) ) ) => ( calc ( bind $?gen66 ( delete-member$ $?gen65 ( create$ pen12-overruled $?gen64 ) ) ) ) ?gen61 <- ( to_pay_max ( negative-overruled $?gen66 ) )"))

([pen12-overruled] of derived-attribute-rule
   (pos-name pen12-overruled-gen101)
   (depends-on declare is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen12] ) ) ) ?gen68 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( to_pay_max ( value 500 ) ( negative-support $?gen64 ) ( negative-overruled $?gen65 & : ( not ( subseq-pos ( create$ pen12-overruled $?gen64 $$$ $?gen65 ) ) ) ) ( positive-defeated $?gen63 & : ( not ( member$ pen12 $?gen63 ) ) ) ) ( test ( eq ( class ?gen61 ) to_pay_max ) ) => ( calc ( bind $?gen66 ( create$ pen12-overruled $?gen64 $?gen65 ) ) ) ?gen61 <- ( to_pay_max ( negative-overruled $?gen66 ) )"))

([pen12-support] of derived-attribute-rule
   (pos-name pen12-support-gen103)
   (depends-on declare is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen12] ) ) ) ?gen60 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ) ?gen61 <- ( to_pay_max ( value 500 ) ( positive-support $?gen63 & : ( not ( subseq-pos ( create$ pen12 ?gen60 $$$ $?gen63 ) ) ) ) ) ( test ( eq ( class ?gen61 ) to_pay_max ) ) => ( calc ( bind $?gen66 ( create$ pen12 ?gen60 $?gen63 ) ) ) ?gen61 <- ( to_pay_max ( positive-support $?gen66 ) )"))

([pen11-defeasibly-dot] of derived-attribute-rule
   (pos-name pen11-defeasibly-dot-gen105)
   (depends-on declare to_increase_penalty recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen11] ) ) ) ?gen52 <- ( to_increase_penalty ( value 1 ) ( positive 1 ) ( positive-derivator pen11 $? ) ) ( test ( eq ( class ?gen52 ) to_increase_penalty ) ) ( not ( and ?gen59 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen52 <- ( to_increase_penalty ( negative ~ 2 ) ( positive-overruled $?gen54 & : ( not ( member$ pen11 $?gen54 ) ) ) ) ) ) => ?gen52 <- ( to_increase_penalty ( positive 0 ) )"))

([pen11-defeasibly] of derived-attribute-rule
   (pos-name pen11-defeasibly-gen107)
   (depends-on declare recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen11] ) ) ) ?gen59 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen52 <- ( to_increase_penalty ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen54 & : ( not ( member$ pen11 $?gen54 ) ) ) ) ( test ( eq ( class ?gen52 ) to_increase_penalty ) ) => ?gen52 <- ( to_increase_penalty ( positive 1 ) ( positive-derivator pen11 ?gen59 ) )"))

([pen11-overruled-dot] of derived-attribute-rule
   (pos-name pen11-overruled-dot-gen109)
   (depends-on declare to_increase_penalty recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen11] ) ) ) ?gen52 <- ( to_increase_penalty ( value 1 ) ( negative-support $?gen55 ) ( negative-overruled $?gen56 & : ( subseq-pos ( create$ pen11-overruled $?gen55 $$$ $?gen56 ) ) ) ) ( test ( eq ( class ?gen52 ) to_increase_penalty ) ) ( not ( and ?gen59 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen52 <- ( to_increase_penalty ( positive-defeated $?gen54 & : ( not ( member$ pen11 $?gen54 ) ) ) ) ) ) => ( calc ( bind $?gen57 ( delete-member$ $?gen56 ( create$ pen11-overruled $?gen55 ) ) ) ) ?gen52 <- ( to_increase_penalty ( negative-overruled $?gen57 ) )"))

([pen11-overruled] of derived-attribute-rule
   (pos-name pen11-overruled-gen111)
   (depends-on declare recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen11] ) ) ) ?gen59 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen52 <- ( to_increase_penalty ( value 1 ) ( negative-support $?gen55 ) ( negative-overruled $?gen56 & : ( not ( subseq-pos ( create$ pen11-overruled $?gen55 $$$ $?gen56 ) ) ) ) ( positive-defeated $?gen54 & : ( not ( member$ pen11 $?gen54 ) ) ) ) ( test ( eq ( class ?gen52 ) to_increase_penalty ) ) => ( calc ( bind $?gen57 ( create$ pen11-overruled $?gen55 $?gen56 ) ) ) ?gen52 <- ( to_increase_penalty ( negative-overruled $?gen57 ) )"))

([pen11-support] of derived-attribute-rule
   (pos-name pen11-support-gen113)
   (depends-on declare recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen11] ) ) ) ?gen51 <- ( recommend_increased_penalty ( defendant ?Defendant ) ) ?gen52 <- ( to_increase_penalty ( value 1 ) ( positive-support $?gen54 & : ( not ( subseq-pos ( create$ pen11 ?gen51 $$$ $?gen54 ) ) ) ) ) ( test ( eq ( class ?gen52 ) to_increase_penalty ) ) => ( calc ( bind $?gen57 ( create$ pen11 ?gen51 $?gen54 ) ) ) ?gen52 <- ( to_increase_penalty ( positive-support $?gen57 ) )"))

([pen10-defeasibly-dot] of derived-attribute-rule
   (pos-name pen10-defeasibly-dot-gen115)
   (depends-on declare to_pay_less recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen10] ) ) ) ?gen43 <- ( to_pay_less ( value 1 ) ( positive 1 ) ( positive-derivator pen10 $? ) ) ( test ( eq ( class ?gen43 ) to_pay_less ) ) ( not ( and ?gen50 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( to_pay_less ( negative ~ 2 ) ( positive-overruled $?gen45 & : ( not ( member$ pen10 $?gen45 ) ) ) ) ) ) => ?gen43 <- ( to_pay_less ( positive 0 ) )"))

([pen10-defeasibly] of derived-attribute-rule
   (pos-name pen10-defeasibly-gen117)
   (depends-on declare recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen10] ) ) ) ?gen50 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( to_pay_less ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen45 & : ( not ( member$ pen10 $?gen45 ) ) ) ) ( test ( eq ( class ?gen43 ) to_pay_less ) ) => ?gen43 <- ( to_pay_less ( positive 1 ) ( positive-derivator pen10 ?gen50 ) )"))

([pen10-overruled-dot] of derived-attribute-rule
   (pos-name pen10-overruled-dot-gen119)
   (depends-on declare to_pay_less recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen10] ) ) ) ?gen43 <- ( to_pay_less ( value 1 ) ( negative-support $?gen46 ) ( negative-overruled $?gen47 & : ( subseq-pos ( create$ pen10-overruled $?gen46 $$$ $?gen47 ) ) ) ) ( test ( eq ( class ?gen43 ) to_pay_less ) ) ( not ( and ?gen50 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( to_pay_less ( positive-defeated $?gen45 & : ( not ( member$ pen10 $?gen45 ) ) ) ) ) ) => ( calc ( bind $?gen48 ( delete-member$ $?gen47 ( create$ pen10-overruled $?gen46 ) ) ) ) ?gen43 <- ( to_pay_less ( negative-overruled $?gen48 ) )"))

([pen10-overruled] of derived-attribute-rule
   (pos-name pen10-overruled-gen121)
   (depends-on declare recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen10] ) ) ) ?gen50 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( to_pay_less ( value 1 ) ( negative-support $?gen46 ) ( negative-overruled $?gen47 & : ( not ( subseq-pos ( create$ pen10-overruled $?gen46 $$$ $?gen47 ) ) ) ) ( positive-defeated $?gen45 & : ( not ( member$ pen10 $?gen45 ) ) ) ) ( test ( eq ( class ?gen43 ) to_pay_less ) ) => ( calc ( bind $?gen48 ( create$ pen10-overruled $?gen46 $?gen47 ) ) ) ?gen43 <- ( to_pay_less ( negative-overruled $?gen48 ) )"))

([pen10-support] of derived-attribute-rule
   (pos-name pen10-support-gen123)
   (depends-on declare recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen10] ) ) ) ?gen42 <- ( recommend_fine_reduction ( defendant ?Defendant ) ) ?gen43 <- ( to_pay_less ( value 1 ) ( positive-support $?gen45 & : ( not ( subseq-pos ( create$ pen10 ?gen42 $$$ $?gen45 ) ) ) ) ) ( test ( eq ( class ?gen43 ) to_pay_less ) ) => ( calc ( bind $?gen48 ( create$ pen10 ?gen42 $?gen45 ) ) ) ?gen43 <- ( to_pay_less ( positive-support $?gen48 ) )"))

([rule11-defeasibly-dot] of derived-attribute-rule
   (pos-name rule11-defeasibly-dot-gen125)
   (depends-on declare is_high_category_weapon_in_public lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule11] ) ) ) ?gen34 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule11 $? ) ) ( test ( eq ( class ?gen34 ) is_high_category_weapon_in_public ) ) ( not ( and ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen34 <- ( is_high_category_weapon_in_public ( negative ~ 2 ) ( positive-overruled $?gen36 & : ( not ( member$ rule11 $?gen36 ) ) ) ) ) ) => ?gen34 <- ( is_high_category_weapon_in_public ( positive 0 ) )"))

([rule11-defeasibly] of derived-attribute-rule
   (pos-name rule11-defeasibly-gen127)
   (depends-on declare lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule11] ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen34 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen36 & : ( not ( member$ rule11 $?gen36 ) ) ) ) ( test ( eq ( class ?gen34 ) is_high_category_weapon_in_public ) ) => ?gen34 <- ( is_high_category_weapon_in_public ( positive 1 ) ( positive-derivator rule11 ?gen41 ) )"))

([rule11-overruled-dot] of derived-attribute-rule
   (pos-name rule11-overruled-dot-gen129)
   (depends-on declare is_high_category_weapon_in_public lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule11] ) ) ) ?gen34 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( negative-support $?gen37 ) ( negative-overruled $?gen38 & : ( subseq-pos ( create$ rule11-overruled $?gen37 $$$ $?gen38 ) ) ) ) ( test ( eq ( class ?gen34 ) is_high_category_weapon_in_public ) ) ( not ( and ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen34 <- ( is_high_category_weapon_in_public ( positive-defeated $?gen36 & : ( not ( member$ rule11 $?gen36 ) ) ) ) ) ) => ( calc ( bind $?gen39 ( delete-member$ $?gen38 ( create$ rule11-overruled $?gen37 ) ) ) ) ?gen34 <- ( is_high_category_weapon_in_public ( negative-overruled $?gen39 ) )"))

([rule11-overruled] of derived-attribute-rule
   (pos-name rule11-overruled-gen131)
   (depends-on declare lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule11] ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen34 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( negative-support $?gen37 ) ( negative-overruled $?gen38 & : ( not ( subseq-pos ( create$ rule11-overruled $?gen37 $$$ $?gen38 ) ) ) ) ( positive-defeated $?gen36 & : ( not ( member$ rule11 $?gen36 ) ) ) ) ( test ( eq ( class ?gen34 ) is_high_category_weapon_in_public ) ) => ( calc ( bind $?gen39 ( create$ rule11-overruled $?gen37 $?gen38 ) ) ) ?gen34 <- ( is_high_category_weapon_in_public ( negative-overruled $?gen39 ) )"))

([rule11-support] of derived-attribute-rule
   (pos-name rule11-support-gen133)
   (depends-on declare lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule11] ) ) ) ?gen33 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ) ?gen34 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive-support $?gen36 & : ( not ( subseq-pos ( create$ rule11 ?gen33 $$$ $?gen36 ) ) ) ) ) ( test ( eq ( class ?gen34 ) is_high_category_weapon_in_public ) ) => ( calc ( bind $?gen39 ( create$ rule11 ?gen33 $?gen36 ) ) ) ?gen34 <- ( is_high_category_weapon_in_public ( positive-support $?gen39 ) )"))

([rule10-defeasibly-dot] of derived-attribute-rule
   (pos-name rule10-defeasibly-dot-gen135)
   (depends-on declare recommend_increased_penalty lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule10] ) ) ) ?gen25 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule10 $? ) ) ( test ( eq ( class ?gen25 ) recommend_increased_penalty ) ) ( not ( and ?gen32 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ( positive ?gen31 & : ( >= ?gen31 1 ) ) ) ?gen25 <- ( recommend_increased_penalty ( negative ~ 2 ) ( positive-overruled $?gen27 & : ( not ( member$ rule10 $?gen27 ) ) ) ) ) ) => ?gen25 <- ( recommend_increased_penalty ( positive 0 ) )"))

([rule10-defeasibly] of derived-attribute-rule
   (pos-name rule10-defeasibly-gen137)
   (depends-on declare lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule10] ) ) ) ?gen32 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ( positive ?gen31 & : ( >= ?gen31 1 ) ) ) ?gen25 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen27 & : ( not ( member$ rule10 $?gen27 ) ) ) ) ( test ( eq ( class ?gen25 ) recommend_increased_penalty ) ) => ?gen25 <- ( recommend_increased_penalty ( positive 1 ) ( positive-derivator rule10 ?gen32 ) )"))

([rule10-overruled-dot] of derived-attribute-rule
   (pos-name rule10-overruled-dot-gen139)
   (depends-on declare recommend_increased_penalty lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule10] ) ) ) ?gen25 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( negative-support $?gen28 ) ( negative-overruled $?gen29 & : ( subseq-pos ( create$ rule10-overruled $?gen28 $$$ $?gen29 ) ) ) ) ( test ( eq ( class ?gen25 ) recommend_increased_penalty ) ) ( not ( and ?gen32 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ( positive ?gen31 & : ( >= ?gen31 1 ) ) ) ?gen25 <- ( recommend_increased_penalty ( positive-defeated $?gen27 & : ( not ( member$ rule10 $?gen27 ) ) ) ) ) ) => ( calc ( bind $?gen30 ( delete-member$ $?gen29 ( create$ rule10-overruled $?gen28 ) ) ) ) ?gen25 <- ( recommend_increased_penalty ( negative-overruled $?gen30 ) )"))

([rule10-overruled] of derived-attribute-rule
   (pos-name rule10-overruled-gen141)
   (depends-on declare lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule10] ) ) ) ?gen32 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ( positive ?gen31 & : ( >= ?gen31 1 ) ) ) ?gen25 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( negative-support $?gen28 ) ( negative-overruled $?gen29 & : ( not ( subseq-pos ( create$ rule10-overruled $?gen28 $$$ $?gen29 ) ) ) ) ( positive-defeated $?gen27 & : ( not ( member$ rule10 $?gen27 ) ) ) ) ( test ( eq ( class ?gen25 ) recommend_increased_penalty ) ) => ( calc ( bind $?gen30 ( create$ rule10-overruled $?gen28 $?gen29 ) ) ) ?gen25 <- ( recommend_increased_penalty ( negative-overruled $?gen30 ) )"))

([rule10-support] of derived-attribute-rule
   (pos-name rule10-support-gen143)
   (depends-on declare lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule10] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ) ?gen25 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive-support $?gen27 & : ( not ( subseq-pos ( create$ rule10 ?gen24 $$$ $?gen27 ) ) ) ) ) ( test ( eq ( class ?gen25 ) recommend_increased_penalty ) ) => ( calc ( bind $?gen30 ( create$ rule10 ?gen24 $?gen27 ) ) ) ?gen25 <- ( recommend_increased_penalty ( positive-support $?gen30 ) )"))

([rule9-defeasibly-dot] of derived-attribute-rule
   (pos-name rule9-defeasibly-dot-gen145)
   (depends-on declare recommend_fine_reduction lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule9] ) ) ) ?gen16 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule9 $? ) ) ( test ( eq ( class ?gen16 ) recommend_fine_reduction ) ) ( not ( and ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( recommend_fine_reduction ( negative ~ 2 ) ( positive-overruled $?gen18 & : ( not ( member$ rule9 $?gen18 ) ) ) ) ) ) => ?gen16 <- ( recommend_fine_reduction ( positive 0 ) )"))

([rule9-defeasibly] of derived-attribute-rule
   (pos-name rule9-defeasibly-gen147)
   (depends-on declare lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule9] ) ) ) ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen18 & : ( not ( member$ rule9 $?gen18 ) ) ) ) ( test ( eq ( class ?gen16 ) recommend_fine_reduction ) ) => ?gen16 <- ( recommend_fine_reduction ( positive 1 ) ( positive-derivator rule9 ?gen23 ) )"))

([rule9-overruled-dot] of derived-attribute-rule
   (pos-name rule9-overruled-dot-gen149)
   (depends-on declare recommend_fine_reduction lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule9] ) ) ) ?gen16 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( negative-support $?gen19 ) ( negative-overruled $?gen20 & : ( subseq-pos ( create$ rule9-overruled $?gen19 $$$ $?gen20 ) ) ) ) ( test ( eq ( class ?gen16 ) recommend_fine_reduction ) ) ( not ( and ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( recommend_fine_reduction ( positive-defeated $?gen18 & : ( not ( member$ rule9 $?gen18 ) ) ) ) ) ) => ( calc ( bind $?gen21 ( delete-member$ $?gen20 ( create$ rule9-overruled $?gen19 ) ) ) ) ?gen16 <- ( recommend_fine_reduction ( negative-overruled $?gen21 ) )"))

([rule9-overruled] of derived-attribute-rule
   (pos-name rule9-overruled-gen151)
   (depends-on declare lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule9] ) ) ) ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( negative-support $?gen19 ) ( negative-overruled $?gen20 & : ( not ( subseq-pos ( create$ rule9-overruled $?gen19 $$$ $?gen20 ) ) ) ) ( positive-defeated $?gen18 & : ( not ( member$ rule9 $?gen18 ) ) ) ) ( test ( eq ( class ?gen16 ) recommend_fine_reduction ) ) => ( calc ( bind $?gen21 ( create$ rule9-overruled $?gen19 $?gen20 ) ) ) ?gen16 <- ( recommend_fine_reduction ( negative-overruled $?gen21 ) )"))

([rule9-support] of derived-attribute-rule
   (pos-name rule9-support-gen153)
   (depends-on declare lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule9] ) ) ) ?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ) ?gen16 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive-support $?gen18 & : ( not ( subseq-pos ( create$ rule9 ?gen15 $$$ $?gen18 ) ) ) ) ) ( test ( eq ( class ?gen16 ) recommend_fine_reduction ) ) => ( calc ( bind $?gen21 ( create$ rule9 ?gen15 $?gen18 ) ) ) ?gen16 <- ( recommend_fine_reduction ( positive-support $?gen21 ) )"))

([pen13-deductive] of ntm-deductive-rule
   (pos-name pen13-deductive-gen84)
   (depends-on is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (deductive-rule "?gen69 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ) ( not ( to_pay_min ( value 30 ) ) ) => ( to_pay_min ( value 30 ) )")
   (production-rule "( defrule pen13-deductive-gen84 ( declare ( salience ( calc-salience to_pay_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen69 ) ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min ) ( value 30 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min 30 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min 30 ) ) ) ( make-instance ?oid of to_pay_min ( value 30 ) ) )")
   (derived-class to_pay_min))

([pen12-deductive] of ntm-deductive-rule
   (pos-name pen12-deductive-gen83)
   (depends-on is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (deductive-rule "?gen60 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ) ( not ( to_pay_max ( value 500 ) ) ) => ( to_pay_max ( value 500 ) )")
   (production-rule "( defrule pen12-deductive-gen83 ( declare ( salience ( calc-salience to_pay_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen60 ) ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max ) ( value 500 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max 500 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max 500 ) ) ) ( make-instance ?oid of to_pay_max ( value 500 ) ) )")
   (derived-class to_pay_max))

([pen11-deductive] of ntm-deductive-rule
   (pos-name pen11-deductive-gen82)
   (depends-on recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (deductive-rule "?gen51 <- ( recommend_increased_penalty ( defendant ?Defendant ) ) ( not ( to_increase_penalty ( value 1 ) ) ) => ( to_increase_penalty ( value 1 ) )")
   (production-rule "( defrule pen11-deductive-gen82 ( declare ( salience ( calc-salience to_increase_penalty ) ) ) ( run-deductive-rules ) ( object ( name ?gen51 ) ( is-a recommend_increased_penalty ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_increase_penalty ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_increase_penalty 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_increase_penalty 1 ) ) ) ( make-instance ?oid of to_increase_penalty ( value 1 ) ) )")
   (derived-class to_increase_penalty))

([pen10-deductive] of ntm-deductive-rule
   (pos-name pen10-deductive-gen81)
   (depends-on recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (deductive-rule "?gen42 <- ( recommend_fine_reduction ( defendant ?Defendant ) ) ( not ( to_pay_less ( value 1 ) ) ) => ( to_pay_less ( value 1 ) )")
   (production-rule "( defrule pen10-deductive-gen81 ( declare ( salience ( calc-salience to_pay_less ) ) ) ( run-deductive-rules ) ( object ( name ?gen42 ) ( is-a recommend_fine_reduction ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_less ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_less 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_less 1 ) ) ) ( make-instance ?oid of to_pay_less ( value 1 ) ) )")
   (derived-class to_pay_less))

([rule11-deductive] of ntm-deductive-rule
   (pos-name rule11-deductive-gen80)
   (depends-on lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (deductive-rule "?gen33 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ) ( not ( is_high_category_weapon_in_public ( defendant ?Defendant ) ) ) => ( is_high_category_weapon_in_public ( defendant ?Defendant ) )")
   (production-rule "( defrule rule11-deductive-gen80 ( declare ( salience ( calc-salience is_high_category_weapon_in_public ) ) ) ( run-deductive-rules ) ( object ( name ?gen33 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ) ( not ( object ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_high_category_weapon_in_public ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_high_category_weapon_in_public ?Defendant ) ) ) ( make-instance ?oid of is_high_category_weapon_in_public ( defendant ?Defendant ) ) )")
   (derived-class is_high_category_weapon_in_public))

([rule10-deductive] of ntm-deductive-rule
   (pos-name rule10-deductive-gen79)
   (depends-on lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (deductive-rule "?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ) ( not ( recommend_increased_penalty ( defendant ?Defendant ) ) ) => ( recommend_increased_penalty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule10-deductive-gen79 ( declare ( salience ( calc-salience recommend_increased_penalty ) ) ) ( run-deductive-rules ) ( object ( name ?gen24 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ) ( not ( object ( is-a recommend_increased_penalty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat recommend_increased_penalty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat recommend_increased_penalty ?Defendant ) ) ) ( make-instance ?oid of recommend_increased_penalty ( defendant ?Defendant ) ) )")
   (derived-class recommend_increased_penalty))

([rule9-deductive] of ntm-deductive-rule
   (pos-name rule9-deductive-gen78)
   (depends-on lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (deductive-rule "?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ) ( not ( recommend_fine_reduction ( defendant ?Defendant ) ) ) => ( recommend_fine_reduction ( defendant ?Defendant ) )")
   (production-rule "( defrule rule9-deductive-gen78 ( declare ( salience ( calc-salience recommend_fine_reduction ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ) ( not ( object ( is-a recommend_fine_reduction ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat recommend_fine_reduction ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat recommend_fine_reduction ?Defendant ) ) ) ( make-instance ?oid of recommend_fine_reduction ( defendant ?Defendant ) ) )")
   (derived-class recommend_fine_reduction))

