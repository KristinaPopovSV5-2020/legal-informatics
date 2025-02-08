([pen15-defeasibly-dot] of derived-attribute-rule
   (pos-name pen15-defeasibly-dot-gen158)
   (depends-on declare to_pay_min2 money to_pay_min2)
   (implies to_pay_min2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen15] ) ) ) ?gen136 <- ( to_pay_min2 ( value 30 ) ( positive 1 ) ( positive-derivator pen15 $? ) ) ( test ( eq ( class ?gen136 ) to_pay_min2 ) ) ( not ( and ?gen143 <- ( money ( defendant ?Defendant ) ( positive ?gen142 & : ( >= ?gen142 1 ) ) ) ?gen136 <- ( to_pay_min2 ( negative ~ 2 ) ( positive-overruled $?gen138 & : ( not ( member$ pen15 $?gen138 ) ) ) ) ) ) => ?gen136 <- ( to_pay_min2 ( positive 0 ) )"))

([pen15-defeasibly] of derived-attribute-rule
   (pos-name pen15-defeasibly-gen160)
   (depends-on declare money to_pay_min2)
   (implies to_pay_min2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen15] ) ) ) ?gen143 <- ( money ( defendant ?Defendant ) ( positive ?gen142 & : ( >= ?gen142 1 ) ) ) ?gen136 <- ( to_pay_min2 ( value 30 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen138 & : ( not ( member$ pen15 $?gen138 ) ) ) ) ( test ( eq ( class ?gen136 ) to_pay_min2 ) ) => ?gen136 <- ( to_pay_min2 ( positive 1 ) ( positive-derivator pen15 ?gen143 ) )"))

([pen15-overruled-dot] of derived-attribute-rule
   (pos-name pen15-overruled-dot-gen162)
   (depends-on declare to_pay_min2 money to_pay_min2)
   (implies to_pay_min2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen15] ) ) ) ?gen136 <- ( to_pay_min2 ( value 30 ) ( negative-support $?gen139 ) ( negative-overruled $?gen140 & : ( subseq-pos ( create$ pen15-overruled $?gen139 $$$ $?gen140 ) ) ) ) ( test ( eq ( class ?gen136 ) to_pay_min2 ) ) ( not ( and ?gen143 <- ( money ( defendant ?Defendant ) ( positive ?gen142 & : ( >= ?gen142 1 ) ) ) ?gen136 <- ( to_pay_min2 ( positive-defeated $?gen138 & : ( not ( member$ pen15 $?gen138 ) ) ) ) ) ) => ( calc ( bind $?gen141 ( delete-member$ $?gen140 ( create$ pen15-overruled $?gen139 ) ) ) ) ?gen136 <- ( to_pay_min2 ( negative-overruled $?gen141 ) )"))

([pen15-overruled] of derived-attribute-rule
   (pos-name pen15-overruled-gen164)
   (depends-on declare money to_pay_min2)
   (implies to_pay_min2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen15] ) ) ) ?gen143 <- ( money ( defendant ?Defendant ) ( positive ?gen142 & : ( >= ?gen142 1 ) ) ) ?gen136 <- ( to_pay_min2 ( value 30 ) ( negative-support $?gen139 ) ( negative-overruled $?gen140 & : ( not ( subseq-pos ( create$ pen15-overruled $?gen139 $$$ $?gen140 ) ) ) ) ( positive-defeated $?gen138 & : ( not ( member$ pen15 $?gen138 ) ) ) ) ( test ( eq ( class ?gen136 ) to_pay_min2 ) ) => ( calc ( bind $?gen141 ( create$ pen15-overruled $?gen139 $?gen140 ) ) ) ?gen136 <- ( to_pay_min2 ( negative-overruled $?gen141 ) )"))

([pen15-support] of derived-attribute-rule
   (pos-name pen15-support-gen166)
   (depends-on declare money to_pay_min2)
   (implies to_pay_min2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen15] ) ) ) ?gen135 <- ( money ( defendant ?Defendant ) ) ?gen136 <- ( to_pay_min2 ( value 30 ) ( positive-support $?gen138 & : ( not ( subseq-pos ( create$ pen15 ?gen135 $$$ $?gen138 ) ) ) ) ) ( test ( eq ( class ?gen136 ) to_pay_min2 ) ) => ( calc ( bind $?gen141 ( create$ pen15 ?gen135 $?gen138 ) ) ) ?gen136 <- ( to_pay_min2 ( positive-support $?gen141 ) )"))

([pen14-defeasibly-dot] of derived-attribute-rule
   (pos-name pen14-defeasibly-dot-gen168)
   (depends-on declare to_pay_max2 money to_pay_max2)
   (implies to_pay_max2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen14] ) ) ) ?gen127 <- ( to_pay_max2 ( value 500 ) ( positive 1 ) ( positive-derivator pen14 $? ) ) ( test ( eq ( class ?gen127 ) to_pay_max2 ) ) ( not ( and ?gen134 <- ( money ( defendant ?Defendant ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen127 <- ( to_pay_max2 ( negative ~ 2 ) ( positive-overruled $?gen129 & : ( not ( member$ pen14 $?gen129 ) ) ) ) ) ) => ?gen127 <- ( to_pay_max2 ( positive 0 ) )"))

([pen14-defeasibly] of derived-attribute-rule
   (pos-name pen14-defeasibly-gen170)
   (depends-on declare money to_pay_max2)
   (implies to_pay_max2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen14] ) ) ) ?gen134 <- ( money ( defendant ?Defendant ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen127 <- ( to_pay_max2 ( value 500 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen129 & : ( not ( member$ pen14 $?gen129 ) ) ) ) ( test ( eq ( class ?gen127 ) to_pay_max2 ) ) => ?gen127 <- ( to_pay_max2 ( positive 1 ) ( positive-derivator pen14 ?gen134 ) )"))

([pen14-overruled-dot] of derived-attribute-rule
   (pos-name pen14-overruled-dot-gen172)
   (depends-on declare to_pay_max2 money to_pay_max2)
   (implies to_pay_max2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen14] ) ) ) ?gen127 <- ( to_pay_max2 ( value 500 ) ( negative-support $?gen130 ) ( negative-overruled $?gen131 & : ( subseq-pos ( create$ pen14-overruled $?gen130 $$$ $?gen131 ) ) ) ) ( test ( eq ( class ?gen127 ) to_pay_max2 ) ) ( not ( and ?gen134 <- ( money ( defendant ?Defendant ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen127 <- ( to_pay_max2 ( positive-defeated $?gen129 & : ( not ( member$ pen14 $?gen129 ) ) ) ) ) ) => ( calc ( bind $?gen132 ( delete-member$ $?gen131 ( create$ pen14-overruled $?gen130 ) ) ) ) ?gen127 <- ( to_pay_max2 ( negative-overruled $?gen132 ) )"))

([pen14-overruled] of derived-attribute-rule
   (pos-name pen14-overruled-gen174)
   (depends-on declare money to_pay_max2)
   (implies to_pay_max2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen14] ) ) ) ?gen134 <- ( money ( defendant ?Defendant ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen127 <- ( to_pay_max2 ( value 500 ) ( negative-support $?gen130 ) ( negative-overruled $?gen131 & : ( not ( subseq-pos ( create$ pen14-overruled $?gen130 $$$ $?gen131 ) ) ) ) ( positive-defeated $?gen129 & : ( not ( member$ pen14 $?gen129 ) ) ) ) ( test ( eq ( class ?gen127 ) to_pay_max2 ) ) => ( calc ( bind $?gen132 ( create$ pen14-overruled $?gen130 $?gen131 ) ) ) ?gen127 <- ( to_pay_max2 ( negative-overruled $?gen132 ) )"))

([pen14-support] of derived-attribute-rule
   (pos-name pen14-support-gen176)
   (depends-on declare money to_pay_max2)
   (implies to_pay_max2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen14] ) ) ) ?gen126 <- ( money ( defendant ?Defendant ) ) ?gen127 <- ( to_pay_max2 ( value 500 ) ( positive-support $?gen129 & : ( not ( subseq-pos ( create$ pen14 ?gen126 $$$ $?gen129 ) ) ) ) ) ( test ( eq ( class ?gen127 ) to_pay_max2 ) ) => ( calc ( bind $?gen132 ( create$ pen14 ?gen126 $?gen129 ) ) ) ?gen127 <- ( to_pay_max2 ( positive-support $?gen132 ) )"))

([pen13-defeasibly-dot] of derived-attribute-rule
   (pos-name pen13-defeasibly-dot-gen178)
   (depends-on declare to_pay_min is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen13] ) ) ) ?gen118 <- ( to_pay_min ( value 30 ) ( positive 1 ) ( positive-derivator pen13 $? ) ) ( test ( eq ( class ?gen118 ) to_pay_min ) ) ( not ( and ?gen125 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ?gen118 <- ( to_pay_min ( negative ~ 2 ) ( positive-overruled $?gen120 & : ( not ( member$ pen13 $?gen120 ) ) ) ) ) ) => ?gen118 <- ( to_pay_min ( positive 0 ) )"))

([pen13-defeasibly] of derived-attribute-rule
   (pos-name pen13-defeasibly-gen180)
   (depends-on declare is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen13] ) ) ) ?gen125 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ?gen118 <- ( to_pay_min ( value 30 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen120 & : ( not ( member$ pen13 $?gen120 ) ) ) ) ( test ( eq ( class ?gen118 ) to_pay_min ) ) => ?gen118 <- ( to_pay_min ( positive 1 ) ( positive-derivator pen13 ?gen125 ) )"))

([pen13-overruled-dot] of derived-attribute-rule
   (pos-name pen13-overruled-dot-gen182)
   (depends-on declare to_pay_min is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen13] ) ) ) ?gen118 <- ( to_pay_min ( value 30 ) ( negative-support $?gen121 ) ( negative-overruled $?gen122 & : ( subseq-pos ( create$ pen13-overruled $?gen121 $$$ $?gen122 ) ) ) ) ( test ( eq ( class ?gen118 ) to_pay_min ) ) ( not ( and ?gen125 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ?gen118 <- ( to_pay_min ( positive-defeated $?gen120 & : ( not ( member$ pen13 $?gen120 ) ) ) ) ) ) => ( calc ( bind $?gen123 ( delete-member$ $?gen122 ( create$ pen13-overruled $?gen121 ) ) ) ) ?gen118 <- ( to_pay_min ( negative-overruled $?gen123 ) )"))

([pen13-overruled] of derived-attribute-rule
   (pos-name pen13-overruled-gen184)
   (depends-on declare is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen13] ) ) ) ?gen125 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ?gen118 <- ( to_pay_min ( value 30 ) ( negative-support $?gen121 ) ( negative-overruled $?gen122 & : ( not ( subseq-pos ( create$ pen13-overruled $?gen121 $$$ $?gen122 ) ) ) ) ( positive-defeated $?gen120 & : ( not ( member$ pen13 $?gen120 ) ) ) ) ( test ( eq ( class ?gen118 ) to_pay_min ) ) => ( calc ( bind $?gen123 ( create$ pen13-overruled $?gen121 $?gen122 ) ) ) ?gen118 <- ( to_pay_min ( negative-overruled $?gen123 ) )"))

([pen13-support] of derived-attribute-rule
   (pos-name pen13-support-gen186)
   (depends-on declare is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen13] ) ) ) ?gen117 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ) ?gen118 <- ( to_pay_min ( value 30 ) ( positive-support $?gen120 & : ( not ( subseq-pos ( create$ pen13 ?gen117 $$$ $?gen120 ) ) ) ) ) ( test ( eq ( class ?gen118 ) to_pay_min ) ) => ( calc ( bind $?gen123 ( create$ pen13 ?gen117 $?gen120 ) ) ) ?gen118 <- ( to_pay_min ( positive-support $?gen123 ) )"))

([pen12-defeasibly-dot] of derived-attribute-rule
   (pos-name pen12-defeasibly-dot-gen188)
   (depends-on declare to_pay_max is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen12] ) ) ) ?gen109 <- ( to_pay_max ( value 500 ) ( positive 1 ) ( positive-derivator pen12 $? ) ) ( test ( eq ( class ?gen109 ) to_pay_max ) ) ( not ( and ?gen116 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen115 & : ( >= ?gen115 1 ) ) ) ?gen109 <- ( to_pay_max ( negative ~ 2 ) ( positive-overruled $?gen111 & : ( not ( member$ pen12 $?gen111 ) ) ) ) ) ) => ?gen109 <- ( to_pay_max ( positive 0 ) )"))

([pen12-defeasibly] of derived-attribute-rule
   (pos-name pen12-defeasibly-gen190)
   (depends-on declare is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen12] ) ) ) ?gen116 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen115 & : ( >= ?gen115 1 ) ) ) ?gen109 <- ( to_pay_max ( value 500 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen111 & : ( not ( member$ pen12 $?gen111 ) ) ) ) ( test ( eq ( class ?gen109 ) to_pay_max ) ) => ?gen109 <- ( to_pay_max ( positive 1 ) ( positive-derivator pen12 ?gen116 ) )"))

([pen12-overruled-dot] of derived-attribute-rule
   (pos-name pen12-overruled-dot-gen192)
   (depends-on declare to_pay_max is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen12] ) ) ) ?gen109 <- ( to_pay_max ( value 500 ) ( negative-support $?gen112 ) ( negative-overruled $?gen113 & : ( subseq-pos ( create$ pen12-overruled $?gen112 $$$ $?gen113 ) ) ) ) ( test ( eq ( class ?gen109 ) to_pay_max ) ) ( not ( and ?gen116 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen115 & : ( >= ?gen115 1 ) ) ) ?gen109 <- ( to_pay_max ( positive-defeated $?gen111 & : ( not ( member$ pen12 $?gen111 ) ) ) ) ) ) => ( calc ( bind $?gen114 ( delete-member$ $?gen113 ( create$ pen12-overruled $?gen112 ) ) ) ) ?gen109 <- ( to_pay_max ( negative-overruled $?gen114 ) )"))

([pen12-overruled] of derived-attribute-rule
   (pos-name pen12-overruled-gen194)
   (depends-on declare is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen12] ) ) ) ?gen116 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen115 & : ( >= ?gen115 1 ) ) ) ?gen109 <- ( to_pay_max ( value 500 ) ( negative-support $?gen112 ) ( negative-overruled $?gen113 & : ( not ( subseq-pos ( create$ pen12-overruled $?gen112 $$$ $?gen113 ) ) ) ) ( positive-defeated $?gen111 & : ( not ( member$ pen12 $?gen111 ) ) ) ) ( test ( eq ( class ?gen109 ) to_pay_max ) ) => ( calc ( bind $?gen114 ( create$ pen12-overruled $?gen112 $?gen113 ) ) ) ?gen109 <- ( to_pay_max ( negative-overruled $?gen114 ) )"))

([pen12-support] of derived-attribute-rule
   (pos-name pen12-support-gen196)
   (depends-on declare is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen12] ) ) ) ?gen108 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ) ?gen109 <- ( to_pay_max ( value 500 ) ( positive-support $?gen111 & : ( not ( subseq-pos ( create$ pen12 ?gen108 $$$ $?gen111 ) ) ) ) ) ( test ( eq ( class ?gen109 ) to_pay_max ) ) => ( calc ( bind $?gen114 ( create$ pen12 ?gen108 $?gen111 ) ) ) ?gen109 <- ( to_pay_max ( positive-support $?gen114 ) )"))

([pen11-defeasibly-dot] of derived-attribute-rule
   (pos-name pen11-defeasibly-dot-gen198)
   (depends-on declare to_increase_penalty recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen11] ) ) ) ?gen100 <- ( to_increase_penalty ( value 1 ) ( positive 1 ) ( positive-derivator pen11 $? ) ) ( test ( eq ( class ?gen100 ) to_increase_penalty ) ) ( not ( and ?gen107 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive ?gen106 & : ( >= ?gen106 1 ) ) ) ?gen100 <- ( to_increase_penalty ( negative ~ 2 ) ( positive-overruled $?gen102 & : ( not ( member$ pen11 $?gen102 ) ) ) ) ) ) => ?gen100 <- ( to_increase_penalty ( positive 0 ) )"))

([pen11-defeasibly] of derived-attribute-rule
   (pos-name pen11-defeasibly-gen200)
   (depends-on declare recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen11] ) ) ) ?gen107 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive ?gen106 & : ( >= ?gen106 1 ) ) ) ?gen100 <- ( to_increase_penalty ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen102 & : ( not ( member$ pen11 $?gen102 ) ) ) ) ( test ( eq ( class ?gen100 ) to_increase_penalty ) ) => ?gen100 <- ( to_increase_penalty ( positive 1 ) ( positive-derivator pen11 ?gen107 ) )"))

([pen11-overruled-dot] of derived-attribute-rule
   (pos-name pen11-overruled-dot-gen202)
   (depends-on declare to_increase_penalty recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen11] ) ) ) ?gen100 <- ( to_increase_penalty ( value 1 ) ( negative-support $?gen103 ) ( negative-overruled $?gen104 & : ( subseq-pos ( create$ pen11-overruled $?gen103 $$$ $?gen104 ) ) ) ) ( test ( eq ( class ?gen100 ) to_increase_penalty ) ) ( not ( and ?gen107 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive ?gen106 & : ( >= ?gen106 1 ) ) ) ?gen100 <- ( to_increase_penalty ( positive-defeated $?gen102 & : ( not ( member$ pen11 $?gen102 ) ) ) ) ) ) => ( calc ( bind $?gen105 ( delete-member$ $?gen104 ( create$ pen11-overruled $?gen103 ) ) ) ) ?gen100 <- ( to_increase_penalty ( negative-overruled $?gen105 ) )"))

([pen11-overruled] of derived-attribute-rule
   (pos-name pen11-overruled-gen204)
   (depends-on declare recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen11] ) ) ) ?gen107 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive ?gen106 & : ( >= ?gen106 1 ) ) ) ?gen100 <- ( to_increase_penalty ( value 1 ) ( negative-support $?gen103 ) ( negative-overruled $?gen104 & : ( not ( subseq-pos ( create$ pen11-overruled $?gen103 $$$ $?gen104 ) ) ) ) ( positive-defeated $?gen102 & : ( not ( member$ pen11 $?gen102 ) ) ) ) ( test ( eq ( class ?gen100 ) to_increase_penalty ) ) => ( calc ( bind $?gen105 ( create$ pen11-overruled $?gen103 $?gen104 ) ) ) ?gen100 <- ( to_increase_penalty ( negative-overruled $?gen105 ) )"))

([pen11-support] of derived-attribute-rule
   (pos-name pen11-support-gen206)
   (depends-on declare recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen11] ) ) ) ?gen99 <- ( recommend_increased_penalty ( defendant ?Defendant ) ) ?gen100 <- ( to_increase_penalty ( value 1 ) ( positive-support $?gen102 & : ( not ( subseq-pos ( create$ pen11 ?gen99 $$$ $?gen102 ) ) ) ) ) ( test ( eq ( class ?gen100 ) to_increase_penalty ) ) => ( calc ( bind $?gen105 ( create$ pen11 ?gen99 $?gen102 ) ) ) ?gen100 <- ( to_increase_penalty ( positive-support $?gen105 ) )"))

([pen10-defeasibly-dot] of derived-attribute-rule
   (pos-name pen10-defeasibly-dot-gen208)
   (depends-on declare to_pay_less recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen10] ) ) ) ?gen91 <- ( to_pay_less ( value 1 ) ( positive 1 ) ( positive-derivator pen10 $? ) ) ( test ( eq ( class ?gen91 ) to_pay_less ) ) ( not ( and ?gen98 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive ?gen97 & : ( >= ?gen97 1 ) ) ) ?gen91 <- ( to_pay_less ( negative ~ 2 ) ( positive-overruled $?gen93 & : ( not ( member$ pen10 $?gen93 ) ) ) ) ) ) => ?gen91 <- ( to_pay_less ( positive 0 ) )"))

([pen10-defeasibly] of derived-attribute-rule
   (pos-name pen10-defeasibly-gen210)
   (depends-on declare recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen10] ) ) ) ?gen98 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive ?gen97 & : ( >= ?gen97 1 ) ) ) ?gen91 <- ( to_pay_less ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen93 & : ( not ( member$ pen10 $?gen93 ) ) ) ) ( test ( eq ( class ?gen91 ) to_pay_less ) ) => ?gen91 <- ( to_pay_less ( positive 1 ) ( positive-derivator pen10 ?gen98 ) )"))

([pen10-overruled-dot] of derived-attribute-rule
   (pos-name pen10-overruled-dot-gen212)
   (depends-on declare to_pay_less recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen10] ) ) ) ?gen91 <- ( to_pay_less ( value 1 ) ( negative-support $?gen94 ) ( negative-overruled $?gen95 & : ( subseq-pos ( create$ pen10-overruled $?gen94 $$$ $?gen95 ) ) ) ) ( test ( eq ( class ?gen91 ) to_pay_less ) ) ( not ( and ?gen98 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive ?gen97 & : ( >= ?gen97 1 ) ) ) ?gen91 <- ( to_pay_less ( positive-defeated $?gen93 & : ( not ( member$ pen10 $?gen93 ) ) ) ) ) ) => ( calc ( bind $?gen96 ( delete-member$ $?gen95 ( create$ pen10-overruled $?gen94 ) ) ) ) ?gen91 <- ( to_pay_less ( negative-overruled $?gen96 ) )"))

([pen10-overruled] of derived-attribute-rule
   (pos-name pen10-overruled-gen214)
   (depends-on declare recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen10] ) ) ) ?gen98 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive ?gen97 & : ( >= ?gen97 1 ) ) ) ?gen91 <- ( to_pay_less ( value 1 ) ( negative-support $?gen94 ) ( negative-overruled $?gen95 & : ( not ( subseq-pos ( create$ pen10-overruled $?gen94 $$$ $?gen95 ) ) ) ) ( positive-defeated $?gen93 & : ( not ( member$ pen10 $?gen93 ) ) ) ) ( test ( eq ( class ?gen91 ) to_pay_less ) ) => ( calc ( bind $?gen96 ( create$ pen10-overruled $?gen94 $?gen95 ) ) ) ?gen91 <- ( to_pay_less ( negative-overruled $?gen96 ) )"))

([pen10-support] of derived-attribute-rule
   (pos-name pen10-support-gen216)
   (depends-on declare recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen10] ) ) ) ?gen90 <- ( recommend_fine_reduction ( defendant ?Defendant ) ) ?gen91 <- ( to_pay_less ( value 1 ) ( positive-support $?gen93 & : ( not ( subseq-pos ( create$ pen10 ?gen90 $$$ $?gen93 ) ) ) ) ) ( test ( eq ( class ?gen91 ) to_pay_less ) ) => ( calc ( bind $?gen96 ( create$ pen10 ?gen90 $?gen93 ) ) ) ?gen91 <- ( to_pay_less ( positive-support $?gen96 ) )"))

([pen7-defeasibly-dot] of derived-attribute-rule
   (pos-name pen7-defeasibly-dot-gen218)
   (depends-on declare confiscate_weapon confiscation confiscate_weapon)
   (implies confiscate_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen7] ) ) ) ?gen82 <- ( confiscate_weapon ( value 1 ) ( positive 1 ) ( positive-derivator pen7 $? ) ) ( test ( eq ( class ?gen82 ) confiscate_weapon ) ) ( not ( and ?gen89 <- ( confiscation ( defendant ?Defendant ) ( positive ?gen88 & : ( >= ?gen88 1 ) ) ) ?gen82 <- ( confiscate_weapon ( negative ~ 2 ) ( positive-overruled $?gen84 & : ( not ( member$ pen7 $?gen84 ) ) ) ) ) ) => ?gen82 <- ( confiscate_weapon ( positive 0 ) )"))

([pen7-defeasibly] of derived-attribute-rule
   (pos-name pen7-defeasibly-gen220)
   (depends-on declare confiscation confiscate_weapon)
   (implies confiscate_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen7] ) ) ) ?gen89 <- ( confiscation ( defendant ?Defendant ) ( positive ?gen88 & : ( >= ?gen88 1 ) ) ) ?gen82 <- ( confiscate_weapon ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen84 & : ( not ( member$ pen7 $?gen84 ) ) ) ) ( test ( eq ( class ?gen82 ) confiscate_weapon ) ) => ?gen82 <- ( confiscate_weapon ( positive 1 ) ( positive-derivator pen7 ?gen89 ) )"))

([pen7-overruled-dot] of derived-attribute-rule
   (pos-name pen7-overruled-dot-gen222)
   (depends-on declare confiscate_weapon confiscation confiscate_weapon)
   (implies confiscate_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen7] ) ) ) ?gen82 <- ( confiscate_weapon ( value 1 ) ( negative-support $?gen85 ) ( negative-overruled $?gen86 & : ( subseq-pos ( create$ pen7-overruled $?gen85 $$$ $?gen86 ) ) ) ) ( test ( eq ( class ?gen82 ) confiscate_weapon ) ) ( not ( and ?gen89 <- ( confiscation ( defendant ?Defendant ) ( positive ?gen88 & : ( >= ?gen88 1 ) ) ) ?gen82 <- ( confiscate_weapon ( positive-defeated $?gen84 & : ( not ( member$ pen7 $?gen84 ) ) ) ) ) ) => ( calc ( bind $?gen87 ( delete-member$ $?gen86 ( create$ pen7-overruled $?gen85 ) ) ) ) ?gen82 <- ( confiscate_weapon ( negative-overruled $?gen87 ) )"))

([pen7-overruled] of derived-attribute-rule
   (pos-name pen7-overruled-gen224)
   (depends-on declare confiscation confiscate_weapon)
   (implies confiscate_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen7] ) ) ) ?gen89 <- ( confiscation ( defendant ?Defendant ) ( positive ?gen88 & : ( >= ?gen88 1 ) ) ) ?gen82 <- ( confiscate_weapon ( value 1 ) ( negative-support $?gen85 ) ( negative-overruled $?gen86 & : ( not ( subseq-pos ( create$ pen7-overruled $?gen85 $$$ $?gen86 ) ) ) ) ( positive-defeated $?gen84 & : ( not ( member$ pen7 $?gen84 ) ) ) ) ( test ( eq ( class ?gen82 ) confiscate_weapon ) ) => ( calc ( bind $?gen87 ( create$ pen7-overruled $?gen85 $?gen86 ) ) ) ?gen82 <- ( confiscate_weapon ( negative-overruled $?gen87 ) )"))

([pen7-support] of derived-attribute-rule
   (pos-name pen7-support-gen226)
   (depends-on declare confiscation confiscate_weapon)
   (implies confiscate_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen7] ) ) ) ?gen81 <- ( confiscation ( defendant ?Defendant ) ) ?gen82 <- ( confiscate_weapon ( value 1 ) ( positive-support $?gen84 & : ( not ( subseq-pos ( create$ pen7 ?gen81 $$$ $?gen84 ) ) ) ) ) ( test ( eq ( class ?gen82 ) confiscate_weapon ) ) => ( calc ( bind $?gen87 ( create$ pen7 ?gen81 $?gen84 ) ) ) ?gen82 <- ( confiscate_weapon ( positive-support $?gen87 ) )"))

([pen1-defeasibly-dot] of derived-attribute-rule
   (pos-name pen1-defeasibly-dot-gen228)
   (depends-on declare 30_imprisonment jail_3_months 30_imprisonment)
   (implies 30_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen1] ) ) ) ?gen73 <- ( 30_imprisonment ( value 30 ) ( positive 1 ) ( positive-derivator pen1 $? ) ) ( test ( eq ( class ?gen73 ) 30_imprisonment ) ) ( not ( and ?gen80 <- ( jail_3_months ( defendant ?Defendant ) ( positive ?gen79 & : ( >= ?gen79 1 ) ) ) ?gen73 <- ( 30_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen75 & : ( not ( member$ pen1 $?gen75 ) ) ) ) ) ) => ?gen73 <- ( 30_imprisonment ( positive 0 ) )"))

([pen1-defeasibly] of derived-attribute-rule
   (pos-name pen1-defeasibly-gen230)
   (depends-on declare jail_3_months 30_imprisonment)
   (implies 30_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen1] ) ) ) ?gen80 <- ( jail_3_months ( defendant ?Defendant ) ( positive ?gen79 & : ( >= ?gen79 1 ) ) ) ?gen73 <- ( 30_imprisonment ( value 30 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen75 & : ( not ( member$ pen1 $?gen75 ) ) ) ) ( test ( eq ( class ?gen73 ) 30_imprisonment ) ) => ?gen73 <- ( 30_imprisonment ( positive 1 ) ( positive-derivator pen1 ?gen80 ) )"))

([pen1-overruled-dot] of derived-attribute-rule
   (pos-name pen1-overruled-dot-gen232)
   (depends-on declare 30_imprisonment jail_3_months 30_imprisonment)
   (implies 30_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen1] ) ) ) ?gen73 <- ( 30_imprisonment ( value 30 ) ( negative-support $?gen76 ) ( negative-overruled $?gen77 & : ( subseq-pos ( create$ pen1-overruled $?gen76 $$$ $?gen77 ) ) ) ) ( test ( eq ( class ?gen73 ) 30_imprisonment ) ) ( not ( and ?gen80 <- ( jail_3_months ( defendant ?Defendant ) ( positive ?gen79 & : ( >= ?gen79 1 ) ) ) ?gen73 <- ( 30_imprisonment ( positive-defeated $?gen75 & : ( not ( member$ pen1 $?gen75 ) ) ) ) ) ) => ( calc ( bind $?gen78 ( delete-member$ $?gen77 ( create$ pen1-overruled $?gen76 ) ) ) ) ?gen73 <- ( 30_imprisonment ( negative-overruled $?gen78 ) )"))

([pen1-overruled] of derived-attribute-rule
   (pos-name pen1-overruled-gen234)
   (depends-on declare jail_3_months 30_imprisonment)
   (implies 30_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen1] ) ) ) ?gen80 <- ( jail_3_months ( defendant ?Defendant ) ( positive ?gen79 & : ( >= ?gen79 1 ) ) ) ?gen73 <- ( 30_imprisonment ( value 30 ) ( negative-support $?gen76 ) ( negative-overruled $?gen77 & : ( not ( subseq-pos ( create$ pen1-overruled $?gen76 $$$ $?gen77 ) ) ) ) ( positive-defeated $?gen75 & : ( not ( member$ pen1 $?gen75 ) ) ) ) ( test ( eq ( class ?gen73 ) 30_imprisonment ) ) => ( calc ( bind $?gen78 ( create$ pen1-overruled $?gen76 $?gen77 ) ) ) ?gen73 <- ( 30_imprisonment ( negative-overruled $?gen78 ) )"))

([pen1-support] of derived-attribute-rule
   (pos-name pen1-support-gen236)
   (depends-on declare jail_3_months 30_imprisonment)
   (implies 30_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen1] ) ) ) ?gen72 <- ( jail_3_months ( defendant ?Defendant ) ) ?gen73 <- ( 30_imprisonment ( value 30 ) ( positive-support $?gen75 & : ( not ( subseq-pos ( create$ pen1 ?gen72 $$$ $?gen75 ) ) ) ) ) ( test ( eq ( class ?gen73 ) 30_imprisonment ) ) => ( calc ( bind $?gen78 ( create$ pen1 ?gen72 $?gen75 ) ) ) ?gen73 <- ( 30_imprisonment ( positive-support $?gen78 ) )"))

([rule11-defeasibly-dot] of derived-attribute-rule
   (pos-name rule11-defeasibly-dot-gen238)
   (depends-on declare is_high_category_weapon_in_public lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule11] ) ) ) ?gen64 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule11 $? ) ) ( test ( eq ( class ?gen64 ) is_high_category_weapon_in_public ) ) ( not ( and ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen64 <- ( is_high_category_weapon_in_public ( negative ~ 2 ) ( positive-overruled $?gen66 & : ( not ( member$ rule11 $?gen66 ) ) ) ) ) ) => ?gen64 <- ( is_high_category_weapon_in_public ( positive 0 ) )"))

([rule11-defeasibly] of derived-attribute-rule
   (pos-name rule11-defeasibly-gen240)
   (depends-on declare lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule11] ) ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen64 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen66 & : ( not ( member$ rule11 $?gen66 ) ) ) ) ( test ( eq ( class ?gen64 ) is_high_category_weapon_in_public ) ) => ?gen64 <- ( is_high_category_weapon_in_public ( positive 1 ) ( positive-derivator rule11 ?gen71 ) )"))

([rule11-overruled-dot] of derived-attribute-rule
   (pos-name rule11-overruled-dot-gen242)
   (depends-on declare is_high_category_weapon_in_public lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule11] ) ) ) ?gen64 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( negative-support $?gen67 ) ( negative-overruled $?gen68 & : ( subseq-pos ( create$ rule11-overruled $?gen67 $$$ $?gen68 ) ) ) ) ( test ( eq ( class ?gen64 ) is_high_category_weapon_in_public ) ) ( not ( and ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen64 <- ( is_high_category_weapon_in_public ( positive-defeated $?gen66 & : ( not ( member$ rule11 $?gen66 ) ) ) ) ) ) => ( calc ( bind $?gen69 ( delete-member$ $?gen68 ( create$ rule11-overruled $?gen67 ) ) ) ) ?gen64 <- ( is_high_category_weapon_in_public ( negative-overruled $?gen69 ) )"))

([rule11-overruled] of derived-attribute-rule
   (pos-name rule11-overruled-gen244)
   (depends-on declare lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule11] ) ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen64 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( negative-support $?gen67 ) ( negative-overruled $?gen68 & : ( not ( subseq-pos ( create$ rule11-overruled $?gen67 $$$ $?gen68 ) ) ) ) ( positive-defeated $?gen66 & : ( not ( member$ rule11 $?gen66 ) ) ) ) ( test ( eq ( class ?gen64 ) is_high_category_weapon_in_public ) ) => ( calc ( bind $?gen69 ( create$ rule11-overruled $?gen67 $?gen68 ) ) ) ?gen64 <- ( is_high_category_weapon_in_public ( negative-overruled $?gen69 ) )"))

([rule11-support] of derived-attribute-rule
   (pos-name rule11-support-gen246)
   (depends-on declare lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule11] ) ) ) ?gen63 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ) ?gen64 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive-support $?gen66 & : ( not ( subseq-pos ( create$ rule11 ?gen63 $$$ $?gen66 ) ) ) ) ) ( test ( eq ( class ?gen64 ) is_high_category_weapon_in_public ) ) => ( calc ( bind $?gen69 ( create$ rule11 ?gen63 $?gen66 ) ) ) ?gen64 <- ( is_high_category_weapon_in_public ( positive-support $?gen69 ) )"))

([rule10-defeasibly-dot] of derived-attribute-rule
   (pos-name rule10-defeasibly-dot-gen248)
   (depends-on declare recommend_increased_penalty lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule10] ) ) ) ?gen55 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule10 $? ) ) ( test ( eq ( class ?gen55 ) recommend_increased_penalty ) ) ( not ( and ?gen62 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen55 <- ( recommend_increased_penalty ( negative ~ 2 ) ( positive-overruled $?gen57 & : ( not ( member$ rule10 $?gen57 ) ) ) ) ) ) => ?gen55 <- ( recommend_increased_penalty ( positive 0 ) )"))

([rule10-defeasibly] of derived-attribute-rule
   (pos-name rule10-defeasibly-gen250)
   (depends-on declare lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule10] ) ) ) ?gen62 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen55 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen57 & : ( not ( member$ rule10 $?gen57 ) ) ) ) ( test ( eq ( class ?gen55 ) recommend_increased_penalty ) ) => ?gen55 <- ( recommend_increased_penalty ( positive 1 ) ( positive-derivator rule10 ?gen62 ) )"))

([rule10-overruled-dot] of derived-attribute-rule
   (pos-name rule10-overruled-dot-gen252)
   (depends-on declare recommend_increased_penalty lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule10] ) ) ) ?gen55 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( negative-support $?gen58 ) ( negative-overruled $?gen59 & : ( subseq-pos ( create$ rule10-overruled $?gen58 $$$ $?gen59 ) ) ) ) ( test ( eq ( class ?gen55 ) recommend_increased_penalty ) ) ( not ( and ?gen62 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen55 <- ( recommend_increased_penalty ( positive-defeated $?gen57 & : ( not ( member$ rule10 $?gen57 ) ) ) ) ) ) => ( calc ( bind $?gen60 ( delete-member$ $?gen59 ( create$ rule10-overruled $?gen58 ) ) ) ) ?gen55 <- ( recommend_increased_penalty ( negative-overruled $?gen60 ) )"))

([rule10-overruled] of derived-attribute-rule
   (pos-name rule10-overruled-gen254)
   (depends-on declare lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule10] ) ) ) ?gen62 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen55 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( negative-support $?gen58 ) ( negative-overruled $?gen59 & : ( not ( subseq-pos ( create$ rule10-overruled $?gen58 $$$ $?gen59 ) ) ) ) ( positive-defeated $?gen57 & : ( not ( member$ rule10 $?gen57 ) ) ) ) ( test ( eq ( class ?gen55 ) recommend_increased_penalty ) ) => ( calc ( bind $?gen60 ( create$ rule10-overruled $?gen58 $?gen59 ) ) ) ?gen55 <- ( recommend_increased_penalty ( negative-overruled $?gen60 ) )"))

([rule10-support] of derived-attribute-rule
   (pos-name rule10-support-gen256)
   (depends-on declare lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule10] ) ) ) ?gen54 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ) ?gen55 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive-support $?gen57 & : ( not ( subseq-pos ( create$ rule10 ?gen54 $$$ $?gen57 ) ) ) ) ) ( test ( eq ( class ?gen55 ) recommend_increased_penalty ) ) => ( calc ( bind $?gen60 ( create$ rule10 ?gen54 $?gen57 ) ) ) ?gen55 <- ( recommend_increased_penalty ( positive-support $?gen60 ) )"))

([rule9-defeasibly-dot] of derived-attribute-rule
   (pos-name rule9-defeasibly-dot-gen258)
   (depends-on declare recommend_fine_reduction lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule9] ) ) ) ?gen46 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule9 $? ) ) ( test ( eq ( class ?gen46 ) recommend_fine_reduction ) ) ( not ( and ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ?gen46 <- ( recommend_fine_reduction ( negative ~ 2 ) ( positive-overruled $?gen48 & : ( not ( member$ rule9 $?gen48 ) ) ) ) ) ) => ?gen46 <- ( recommend_fine_reduction ( positive 0 ) )"))

([rule9-defeasibly] of derived-attribute-rule
   (pos-name rule9-defeasibly-gen260)
   (depends-on declare lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule9] ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ?gen46 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen48 & : ( not ( member$ rule9 $?gen48 ) ) ) ) ( test ( eq ( class ?gen46 ) recommend_fine_reduction ) ) => ?gen46 <- ( recommend_fine_reduction ( positive 1 ) ( positive-derivator rule9 ?gen53 ) )"))

([rule9-overruled-dot] of derived-attribute-rule
   (pos-name rule9-overruled-dot-gen262)
   (depends-on declare recommend_fine_reduction lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule9] ) ) ) ?gen46 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( negative-support $?gen49 ) ( negative-overruled $?gen50 & : ( subseq-pos ( create$ rule9-overruled $?gen49 $$$ $?gen50 ) ) ) ) ( test ( eq ( class ?gen46 ) recommend_fine_reduction ) ) ( not ( and ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ?gen46 <- ( recommend_fine_reduction ( positive-defeated $?gen48 & : ( not ( member$ rule9 $?gen48 ) ) ) ) ) ) => ( calc ( bind $?gen51 ( delete-member$ $?gen50 ( create$ rule9-overruled $?gen49 ) ) ) ) ?gen46 <- ( recommend_fine_reduction ( negative-overruled $?gen51 ) )"))

([rule9-overruled] of derived-attribute-rule
   (pos-name rule9-overruled-gen264)
   (depends-on declare lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule9] ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ?gen46 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( negative-support $?gen49 ) ( negative-overruled $?gen50 & : ( not ( subseq-pos ( create$ rule9-overruled $?gen49 $$$ $?gen50 ) ) ) ) ( positive-defeated $?gen48 & : ( not ( member$ rule9 $?gen48 ) ) ) ) ( test ( eq ( class ?gen46 ) recommend_fine_reduction ) ) => ( calc ( bind $?gen51 ( create$ rule9-overruled $?gen49 $?gen50 ) ) ) ?gen46 <- ( recommend_fine_reduction ( negative-overruled $?gen51 ) )"))

([rule9-support] of derived-attribute-rule
   (pos-name rule9-support-gen266)
   (depends-on declare lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule9] ) ) ) ?gen45 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ) ?gen46 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive-support $?gen48 & : ( not ( subseq-pos ( create$ rule9 ?gen45 $$$ $?gen48 ) ) ) ) ) ( test ( eq ( class ?gen46 ) recommend_fine_reduction ) ) => ( calc ( bind $?gen51 ( create$ rule9 ?gen45 $?gen48 ) ) ) ?gen46 <- ( recommend_fine_reduction ( positive-support $?gen51 ) )"))

([rule8-defeasibly-dot] of derived-attribute-rule
   (pos-name rule8-defeasibly-dot-gen268)
   (depends-on declare money lc:case lc:case money)
   (implies money)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule8] ) ) ) ?gen35 <- ( money ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule8 $? ) ) ( test ( eq ( class ?gen35 ) money ) ) ( not ( and ?gen42 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen41 & : ( >= ?gen41 1 ) ) ) ?gen44 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ( positive ?gen43 & : ( >= ?gen43 1 ) ) ) ?gen35 <- ( money ( negative ~ 2 ) ( positive-overruled $?gen37 & : ( not ( member$ rule8 $?gen37 ) ) ) ) ) ) => ?gen35 <- ( money ( positive 0 ) )"))

([rule8-defeasibly] of derived-attribute-rule
   (pos-name rule8-defeasibly-gen270)
   (depends-on declare lc:case lc:case money)
   (implies money)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule8] ) ) ) ?gen42 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen41 & : ( >= ?gen41 1 ) ) ) ?gen44 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ( positive ?gen43 & : ( >= ?gen43 1 ) ) ) ?gen35 <- ( money ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen37 & : ( not ( member$ rule8 $?gen37 ) ) ) ) ( test ( eq ( class ?gen35 ) money ) ) => ?gen35 <- ( money ( positive 1 ) ( positive-derivator rule8 ?gen42 ?gen44 ) )"))

([rule8-overruled-dot] of derived-attribute-rule
   (pos-name rule8-overruled-dot-gen272)
   (depends-on declare money lc:case lc:case money)
   (implies money)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule8] ) ) ) ?gen35 <- ( money ( defendant ?Defendant ) ( negative-support $?gen38 ) ( negative-overruled $?gen39 & : ( subseq-pos ( create$ rule8-overruled $?gen38 $$$ $?gen39 ) ) ) ) ( test ( eq ( class ?gen35 ) money ) ) ( not ( and ?gen42 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen41 & : ( >= ?gen41 1 ) ) ) ?gen44 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ( positive ?gen43 & : ( >= ?gen43 1 ) ) ) ?gen35 <- ( money ( positive-defeated $?gen37 & : ( not ( member$ rule8 $?gen37 ) ) ) ) ) ) => ( calc ( bind $?gen40 ( delete-member$ $?gen39 ( create$ rule8-overruled $?gen38 ) ) ) ) ?gen35 <- ( money ( negative-overruled $?gen40 ) )"))

([rule8-overruled] of derived-attribute-rule
   (pos-name rule8-overruled-gen274)
   (depends-on declare lc:case lc:case money)
   (implies money)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule8] ) ) ) ?gen42 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen41 & : ( >= ?gen41 1 ) ) ) ?gen44 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ( positive ?gen43 & : ( >= ?gen43 1 ) ) ) ?gen35 <- ( money ( defendant ?Defendant ) ( negative-support $?gen38 ) ( negative-overruled $?gen39 & : ( not ( subseq-pos ( create$ rule8-overruled $?gen38 $$$ $?gen39 ) ) ) ) ( positive-defeated $?gen37 & : ( not ( member$ rule8 $?gen37 ) ) ) ) ( test ( eq ( class ?gen35 ) money ) ) => ( calc ( bind $?gen40 ( create$ rule8-overruled $?gen38 $?gen39 ) ) ) ?gen35 <- ( money ( negative-overruled $?gen40 ) )"))

([rule8-support] of derived-attribute-rule
   (pos-name rule8-support-gen276)
   (depends-on declare lc:case lc:case money)
   (implies money)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule8] ) ) ) ?gen33 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ) ?gen34 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ) ?gen35 <- ( money ( defendant ?Defendant ) ( positive-support $?gen37 & : ( not ( subseq-pos ( create$ rule8 ?gen33 ?gen34 $$$ $?gen37 ) ) ) ) ) ( test ( eq ( class ?gen35 ) money ) ) => ( calc ( bind $?gen40 ( create$ rule8 ?gen33 ?gen34 $?gen37 ) ) ) ?gen35 <- ( money ( positive-support $?gen40 ) )"))

([rule7-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7-defeasibly-dot-gen278)
   (depends-on declare confiscation lc:case confiscation)
   (implies confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7] ) ) ) ?gen25 <- ( confiscation ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule7 $? ) ) ( test ( eq ( class ?gen25 ) confiscation ) ) ( not ( and ?gen32 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen31 & : ( >= ?gen31 1 ) ) ) ?gen25 <- ( confiscation ( negative ~ 2 ) ( positive-overruled $?gen27 & : ( not ( member$ rule7 $?gen27 ) ) ) ) ) ) => ?gen25 <- ( confiscation ( positive 0 ) )"))

([rule7-defeasibly] of derived-attribute-rule
   (pos-name rule7-defeasibly-gen280)
   (depends-on declare lc:case confiscation)
   (implies confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7] ) ) ) ?gen32 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen31 & : ( >= ?gen31 1 ) ) ) ?gen25 <- ( confiscation ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen27 & : ( not ( member$ rule7 $?gen27 ) ) ) ) ( test ( eq ( class ?gen25 ) confiscation ) ) => ?gen25 <- ( confiscation ( positive 1 ) ( positive-derivator rule7 ?gen32 ) )"))

([rule7-overruled-dot] of derived-attribute-rule
   (pos-name rule7-overruled-dot-gen282)
   (depends-on declare confiscation lc:case confiscation)
   (implies confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7] ) ) ) ?gen25 <- ( confiscation ( defendant ?Defendant ) ( negative-support $?gen28 ) ( negative-overruled $?gen29 & : ( subseq-pos ( create$ rule7-overruled $?gen28 $$$ $?gen29 ) ) ) ) ( test ( eq ( class ?gen25 ) confiscation ) ) ( not ( and ?gen32 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen31 & : ( >= ?gen31 1 ) ) ) ?gen25 <- ( confiscation ( positive-defeated $?gen27 & : ( not ( member$ rule7 $?gen27 ) ) ) ) ) ) => ( calc ( bind $?gen30 ( delete-member$ $?gen29 ( create$ rule7-overruled $?gen28 ) ) ) ) ?gen25 <- ( confiscation ( negative-overruled $?gen30 ) )"))

([rule7-overruled] of derived-attribute-rule
   (pos-name rule7-overruled-gen284)
   (depends-on declare lc:case confiscation)
   (implies confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7] ) ) ) ?gen32 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen31 & : ( >= ?gen31 1 ) ) ) ?gen25 <- ( confiscation ( defendant ?Defendant ) ( negative-support $?gen28 ) ( negative-overruled $?gen29 & : ( not ( subseq-pos ( create$ rule7-overruled $?gen28 $$$ $?gen29 ) ) ) ) ( positive-defeated $?gen27 & : ( not ( member$ rule7 $?gen27 ) ) ) ) ( test ( eq ( class ?gen25 ) confiscation ) ) => ( calc ( bind $?gen30 ( create$ rule7-overruled $?gen28 $?gen29 ) ) ) ?gen25 <- ( confiscation ( negative-overruled $?gen30 ) )"))

([rule7-support] of derived-attribute-rule
   (pos-name rule7-support-gen286)
   (depends-on declare lc:case confiscation)
   (implies confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ) ?gen25 <- ( confiscation ( defendant ?Defendant ) ( positive-support $?gen27 & : ( not ( subseq-pos ( create$ rule7 ?gen24 $$$ $?gen27 ) ) ) ) ) ( test ( eq ( class ?gen25 ) confiscation ) ) => ( calc ( bind $?gen30 ( create$ rule7 ?gen24 $?gen27 ) ) ) ?gen25 <- ( confiscation ( positive-support $?gen30 ) )"))

([rule1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule1-defeasibly-dot-gen288)
   (depends-on declare jail_3_months lc:case jail_3_months)
   (implies jail_3_months)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule1] ) ) ) ?gen16 <- ( jail_3_months ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule1 $? ) ) ( test ( eq ( class ?gen16 ) jail_3_months ) ) ( not ( and ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( jail_3_months ( negative ~ 2 ) ( positive-overruled $?gen18 & : ( not ( member$ rule1 $?gen18 ) ) ) ) ) ) => ?gen16 <- ( jail_3_months ( positive 0 ) )"))

([rule1-defeasibly] of derived-attribute-rule
   (pos-name rule1-defeasibly-gen290)
   (depends-on declare lc:case jail_3_months)
   (implies jail_3_months)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule1] ) ) ) ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( jail_3_months ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen18 & : ( not ( member$ rule1 $?gen18 ) ) ) ) ( test ( eq ( class ?gen16 ) jail_3_months ) ) => ?gen16 <- ( jail_3_months ( positive 1 ) ( positive-derivator rule1 ?gen23 ) )"))

([rule1-overruled-dot] of derived-attribute-rule
   (pos-name rule1-overruled-dot-gen292)
   (depends-on declare jail_3_months lc:case jail_3_months)
   (implies jail_3_months)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule1] ) ) ) ?gen16 <- ( jail_3_months ( defendant ?Defendant ) ( negative-support $?gen19 ) ( negative-overruled $?gen20 & : ( subseq-pos ( create$ rule1-overruled $?gen19 $$$ $?gen20 ) ) ) ) ( test ( eq ( class ?gen16 ) jail_3_months ) ) ( not ( and ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( jail_3_months ( positive-defeated $?gen18 & : ( not ( member$ rule1 $?gen18 ) ) ) ) ) ) => ( calc ( bind $?gen21 ( delete-member$ $?gen20 ( create$ rule1-overruled $?gen19 ) ) ) ) ?gen16 <- ( jail_3_months ( negative-overruled $?gen21 ) )"))

([rule1-overruled] of derived-attribute-rule
   (pos-name rule1-overruled-gen294)
   (depends-on declare lc:case jail_3_months)
   (implies jail_3_months)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule1] ) ) ) ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( jail_3_months ( defendant ?Defendant ) ( negative-support $?gen19 ) ( negative-overruled $?gen20 & : ( not ( subseq-pos ( create$ rule1-overruled $?gen19 $$$ $?gen20 ) ) ) ) ( positive-defeated $?gen18 & : ( not ( member$ rule1 $?gen18 ) ) ) ) ( test ( eq ( class ?gen16 ) jail_3_months ) ) => ( calc ( bind $?gen21 ( create$ rule1-overruled $?gen19 $?gen20 ) ) ) ?gen16 <- ( jail_3_months ( negative-overruled $?gen21 ) )"))

([rule1-support] of derived-attribute-rule
   (pos-name rule1-support-gen296)
   (depends-on declare lc:case jail_3_months)
   (implies jail_3_months)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule1] ) ) ) ?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ) ?gen16 <- ( jail_3_months ( defendant ?Defendant ) ( positive-support $?gen18 & : ( not ( subseq-pos ( create$ rule1 ?gen15 $$$ $?gen18 ) ) ) ) ) ( test ( eq ( class ?gen16 ) jail_3_months ) ) => ( calc ( bind $?gen21 ( create$ rule1 ?gen15 $?gen18 ) ) ) ?gen16 <- ( jail_3_months ( positive-support $?gen21 ) )"))

([pen15-deductive] of ntm-deductive-rule
   (pos-name pen15-deductive-gen157)
   (depends-on money to_pay_min2)
   (implies to_pay_min2)
   (deductive-rule "?gen135 <- ( money ( defendant ?Defendant ) ) ( not ( to_pay_min2 ( value 30 ) ) ) => ( to_pay_min2 ( value 30 ) )")
   (production-rule "( defrule pen15-deductive-gen157 ( declare ( salience ( calc-salience to_pay_min2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen135 ) ( is-a money ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min2 ) ( value 30 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min2 30 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min2 30 ) ) ) ( make-instance ?oid of to_pay_min2 ( value 30 ) ) )")
   (derived-class to_pay_min2))

([pen14-deductive] of ntm-deductive-rule
   (pos-name pen14-deductive-gen156)
   (depends-on money to_pay_max2)
   (implies to_pay_max2)
   (deductive-rule "?gen126 <- ( money ( defendant ?Defendant ) ) ( not ( to_pay_max2 ( value 500 ) ) ) => ( to_pay_max2 ( value 500 ) )")
   (production-rule "( defrule pen14-deductive-gen156 ( declare ( salience ( calc-salience to_pay_max2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen126 ) ( is-a money ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max2 ) ( value 500 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max2 500 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max2 500 ) ) ) ( make-instance ?oid of to_pay_max2 ( value 500 ) ) )")
   (derived-class to_pay_max2))

([pen13-deductive] of ntm-deductive-rule
   (pos-name pen13-deductive-gen155)
   (depends-on is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (deductive-rule "?gen117 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ) ( not ( to_pay_min ( value 30 ) ) ) => ( to_pay_min ( value 30 ) )")
   (production-rule "( defrule pen13-deductive-gen155 ( declare ( salience ( calc-salience to_pay_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen117 ) ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min ) ( value 30 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min 30 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min 30 ) ) ) ( make-instance ?oid of to_pay_min ( value 30 ) ) )")
   (derived-class to_pay_min))

([pen12-deductive] of ntm-deductive-rule
   (pos-name pen12-deductive-gen154)
   (depends-on is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (deductive-rule "?gen108 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ) ( not ( to_pay_max ( value 500 ) ) ) => ( to_pay_max ( value 500 ) )")
   (production-rule "( defrule pen12-deductive-gen154 ( declare ( salience ( calc-salience to_pay_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen108 ) ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max ) ( value 500 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max 500 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max 500 ) ) ) ( make-instance ?oid of to_pay_max ( value 500 ) ) )")
   (derived-class to_pay_max))

([pen11-deductive] of ntm-deductive-rule
   (pos-name pen11-deductive-gen153)
   (depends-on recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (deductive-rule "?gen99 <- ( recommend_increased_penalty ( defendant ?Defendant ) ) ( not ( to_increase_penalty ( value 1 ) ) ) => ( to_increase_penalty ( value 1 ) )")
   (production-rule "( defrule pen11-deductive-gen153 ( declare ( salience ( calc-salience to_increase_penalty ) ) ) ( run-deductive-rules ) ( object ( name ?gen99 ) ( is-a recommend_increased_penalty ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_increase_penalty ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_increase_penalty 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_increase_penalty 1 ) ) ) ( make-instance ?oid of to_increase_penalty ( value 1 ) ) )")
   (derived-class to_increase_penalty))

([pen10-deductive] of ntm-deductive-rule
   (pos-name pen10-deductive-gen152)
   (depends-on recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (deductive-rule "?gen90 <- ( recommend_fine_reduction ( defendant ?Defendant ) ) ( not ( to_pay_less ( value 1 ) ) ) => ( to_pay_less ( value 1 ) )")
   (production-rule "( defrule pen10-deductive-gen152 ( declare ( salience ( calc-salience to_pay_less ) ) ) ( run-deductive-rules ) ( object ( name ?gen90 ) ( is-a recommend_fine_reduction ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_less ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_less 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_less 1 ) ) ) ( make-instance ?oid of to_pay_less ( value 1 ) ) )")
   (derived-class to_pay_less))

([pen7-deductive] of ntm-deductive-rule
   (pos-name pen7-deductive-gen151)
   (depends-on confiscation confiscate_weapon)
   (implies confiscate_weapon)
   (deductive-rule "?gen81 <- ( confiscation ( defendant ?Defendant ) ) ( not ( confiscate_weapon ( value 1 ) ) ) => ( confiscate_weapon ( value 1 ) )")
   (production-rule "( defrule pen7-deductive-gen151 ( declare ( salience ( calc-salience confiscate_weapon ) ) ) ( run-deductive-rules ) ( object ( name ?gen81 ) ( is-a confiscation ) ( defendant ?Defendant ) ) ( not ( object ( is-a confiscate_weapon ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat confiscate_weapon 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat confiscate_weapon 1 ) ) ) ( make-instance ?oid of confiscate_weapon ( value 1 ) ) )")
   (derived-class confiscate_weapon))

([pen1-deductive] of ntm-deductive-rule
   (pos-name pen1-deductive-gen150)
   (depends-on jail_3_months 30_imprisonment)
   (implies 30_imprisonment)
   (deductive-rule "?gen72 <- ( jail_3_months ( defendant ?Defendant ) ) ( not ( 30_imprisonment ( value 30 ) ) ) => ( 30_imprisonment ( value 30 ) )")
   (production-rule "( defrule pen1-deductive-gen150 ( declare ( salience ( calc-salience 30_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen72 ) ( is-a jail_3_months ) ( defendant ?Defendant ) ) ( not ( object ( is-a 30_imprisonment ) ( value 30 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat 30_imprisonment 30 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat 30_imprisonment 30 ) ) ) ( make-instance ?oid of 30_imprisonment ( value 30 ) ) )")
   (derived-class 30_imprisonment))

([rule11-deductive] of ntm-deductive-rule
   (pos-name rule11-deductive-gen149)
   (depends-on lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (deductive-rule "?gen63 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ) ( not ( is_high_category_weapon_in_public ( defendant ?Defendant ) ) ) => ( is_high_category_weapon_in_public ( defendant ?Defendant ) )")
   (production-rule "( defrule rule11-deductive-gen149 ( declare ( salience ( calc-salience is_high_category_weapon_in_public ) ) ) ( run-deductive-rules ) ( object ( name ?gen63 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ) ( not ( object ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_high_category_weapon_in_public ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_high_category_weapon_in_public ?Defendant ) ) ) ( make-instance ?oid of is_high_category_weapon_in_public ( defendant ?Defendant ) ) )")
   (derived-class is_high_category_weapon_in_public))

([rule10-deductive] of ntm-deductive-rule
   (pos-name rule10-deductive-gen148)
   (depends-on lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (deductive-rule "?gen54 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ) ( not ( recommend_increased_penalty ( defendant ?Defendant ) ) ) => ( recommend_increased_penalty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule10-deductive-gen148 ( declare ( salience ( calc-salience recommend_increased_penalty ) ) ) ( run-deductive-rules ) ( object ( name ?gen54 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ) ( not ( object ( is-a recommend_increased_penalty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat recommend_increased_penalty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat recommend_increased_penalty ?Defendant ) ) ) ( make-instance ?oid of recommend_increased_penalty ( defendant ?Defendant ) ) )")
   (derived-class recommend_increased_penalty))

([rule9-deductive] of ntm-deductive-rule
   (pos-name rule9-deductive-gen147)
   (depends-on lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (deductive-rule "?gen45 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ) ( not ( recommend_fine_reduction ( defendant ?Defendant ) ) ) => ( recommend_fine_reduction ( defendant ?Defendant ) )")
   (production-rule "( defrule rule9-deductive-gen147 ( declare ( salience ( calc-salience recommend_fine_reduction ) ) ) ( run-deductive-rules ) ( object ( name ?gen45 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ) ( not ( object ( is-a recommend_fine_reduction ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat recommend_fine_reduction ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat recommend_fine_reduction ?Defendant ) ) ) ( make-instance ?oid of recommend_fine_reduction ( defendant ?Defendant ) ) )")
   (derived-class recommend_fine_reduction))

([rule8-deductive] of ntm-deductive-rule
   (pos-name rule8-deductive-gen146)
   (depends-on lc:case lc:case money)
   (implies money)
   (deductive-rule "?gen33 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ) ?gen34 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ) ( not ( money ( defendant ?Defendant ) ) ) => ( money ( defendant ?Defendant ) )")
   (production-rule "( defrule rule8-deductive-gen146 ( declare ( salience ( calc-salience money ) ) ) ( run-deductive-rules ) ( object ( name ?gen33 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ) ( object ( name ?gen34 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ) ( not ( object ( is-a money ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat money ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat money ?Defendant ) ) ) ( make-instance ?oid of money ( defendant ?Defendant ) ) )")
   (derived-class money))

([rule7-deductive] of ntm-deductive-rule
   (pos-name rule7-deductive-gen145)
   (depends-on lc:case confiscation)
   (implies confiscation)
   (deductive-rule "?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ) ( not ( confiscation ( defendant ?Defendant ) ) ) => ( confiscation ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7-deductive-gen145 ( declare ( salience ( calc-salience confiscation ) ) ) ( run-deductive-rules ) ( object ( name ?gen24 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ) ( not ( object ( is-a confiscation ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat confiscation ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat confiscation ?Defendant ) ) ) ( make-instance ?oid of confiscation ( defendant ?Defendant ) ) )")
   (derived-class confiscation))

([rule1-deductive] of ntm-deductive-rule
   (pos-name rule1-deductive-gen144)
   (depends-on lc:case jail_3_months)
   (implies jail_3_months)
   (deductive-rule "?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ) ( not ( jail_3_months ( defendant ?Defendant ) ) ) => ( jail_3_months ( defendant ?Defendant ) )")
   (production-rule "( defrule rule1-deductive-gen144 ( declare ( salience ( calc-salience jail_3_months ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ) ( not ( object ( is-a jail_3_months ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat jail_3_months ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat jail_3_months ?Defendant ) ) ) ( make-instance ?oid of jail_3_months ( defendant ?Defendant ) ) )")
   (derived-class jail_3_months))

