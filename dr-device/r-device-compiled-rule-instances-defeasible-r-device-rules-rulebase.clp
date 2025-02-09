([pen18-defeasibly-dot] of derived-attribute-rule
   (pos-name pen18-defeasibly-dot-gen208)
   (depends-on declare to_pay_min3 fine to_pay_min3)
   (implies to_pay_min3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen18] ) ) ) ?gen181 <- ( to_pay_min3 ( value 30 ) ( positive 1 ) ( positive-derivator pen18 $? ) ) ( test ( eq ( class ?gen181 ) to_pay_min3 ) ) ( not ( and ?gen188 <- ( fine ( defendant ?Defendant ) ( positive ?gen187 & : ( >= ?gen187 1 ) ) ) ?gen181 <- ( to_pay_min3 ( negative ~ 2 ) ( positive-overruled $?gen183 & : ( not ( member$ pen18 $?gen183 ) ) ) ) ) ) => ?gen181 <- ( to_pay_min3 ( positive 0 ) )"))

([pen18-defeasibly] of derived-attribute-rule
   (pos-name pen18-defeasibly-gen210)
   (depends-on declare fine to_pay_min3)
   (implies to_pay_min3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen18] ) ) ) ?gen188 <- ( fine ( defendant ?Defendant ) ( positive ?gen187 & : ( >= ?gen187 1 ) ) ) ?gen181 <- ( to_pay_min3 ( value 30 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen183 & : ( not ( member$ pen18 $?gen183 ) ) ) ) ( test ( eq ( class ?gen181 ) to_pay_min3 ) ) => ?gen181 <- ( to_pay_min3 ( positive 1 ) ( positive-derivator pen18 ?gen188 ) )"))

([pen18-overruled-dot] of derived-attribute-rule
   (pos-name pen18-overruled-dot-gen212)
   (depends-on declare to_pay_min3 fine to_pay_min3)
   (implies to_pay_min3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen18] ) ) ) ?gen181 <- ( to_pay_min3 ( value 30 ) ( negative-support $?gen184 ) ( negative-overruled $?gen185 & : ( subseq-pos ( create$ pen18-overruled $?gen184 $$$ $?gen185 ) ) ) ) ( test ( eq ( class ?gen181 ) to_pay_min3 ) ) ( not ( and ?gen188 <- ( fine ( defendant ?Defendant ) ( positive ?gen187 & : ( >= ?gen187 1 ) ) ) ?gen181 <- ( to_pay_min3 ( positive-defeated $?gen183 & : ( not ( member$ pen18 $?gen183 ) ) ) ) ) ) => ( calc ( bind $?gen186 ( delete-member$ $?gen185 ( create$ pen18-overruled $?gen184 ) ) ) ) ?gen181 <- ( to_pay_min3 ( negative-overruled $?gen186 ) )"))

([pen18-overruled] of derived-attribute-rule
   (pos-name pen18-overruled-gen214)
   (depends-on declare fine to_pay_min3)
   (implies to_pay_min3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen18] ) ) ) ?gen188 <- ( fine ( defendant ?Defendant ) ( positive ?gen187 & : ( >= ?gen187 1 ) ) ) ?gen181 <- ( to_pay_min3 ( value 30 ) ( negative-support $?gen184 ) ( negative-overruled $?gen185 & : ( not ( subseq-pos ( create$ pen18-overruled $?gen184 $$$ $?gen185 ) ) ) ) ( positive-defeated $?gen183 & : ( not ( member$ pen18 $?gen183 ) ) ) ) ( test ( eq ( class ?gen181 ) to_pay_min3 ) ) => ( calc ( bind $?gen186 ( create$ pen18-overruled $?gen184 $?gen185 ) ) ) ?gen181 <- ( to_pay_min3 ( negative-overruled $?gen186 ) )"))

([pen18-support] of derived-attribute-rule
   (pos-name pen18-support-gen216)
   (depends-on declare fine to_pay_min3)
   (implies to_pay_min3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen18] ) ) ) ?gen180 <- ( fine ( defendant ?Defendant ) ) ?gen181 <- ( to_pay_min3 ( value 30 ) ( positive-support $?gen183 & : ( not ( subseq-pos ( create$ pen18 ?gen180 $$$ $?gen183 ) ) ) ) ) ( test ( eq ( class ?gen181 ) to_pay_min3 ) ) => ( calc ( bind $?gen186 ( create$ pen18 ?gen180 $?gen183 ) ) ) ?gen181 <- ( to_pay_min3 ( positive-support $?gen186 ) )"))

([pen17-defeasibly-dot] of derived-attribute-rule
   (pos-name pen17-defeasibly-dot-gen218)
   (depends-on declare to_pay_max3 fine to_pay_max3)
   (implies to_pay_max3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen17] ) ) ) ?gen172 <- ( to_pay_max3 ( value 500 ) ( positive 1 ) ( positive-derivator pen17 $? ) ) ( test ( eq ( class ?gen172 ) to_pay_max3 ) ) ( not ( and ?gen179 <- ( fine ( defendant ?Defendant ) ( positive ?gen178 & : ( >= ?gen178 1 ) ) ) ?gen172 <- ( to_pay_max3 ( negative ~ 2 ) ( positive-overruled $?gen174 & : ( not ( member$ pen17 $?gen174 ) ) ) ) ) ) => ?gen172 <- ( to_pay_max3 ( positive 0 ) )"))

([pen17-defeasibly] of derived-attribute-rule
   (pos-name pen17-defeasibly-gen220)
   (depends-on declare fine to_pay_max3)
   (implies to_pay_max3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen17] ) ) ) ?gen179 <- ( fine ( defendant ?Defendant ) ( positive ?gen178 & : ( >= ?gen178 1 ) ) ) ?gen172 <- ( to_pay_max3 ( value 500 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen174 & : ( not ( member$ pen17 $?gen174 ) ) ) ) ( test ( eq ( class ?gen172 ) to_pay_max3 ) ) => ?gen172 <- ( to_pay_max3 ( positive 1 ) ( positive-derivator pen17 ?gen179 ) )"))

([pen17-overruled-dot] of derived-attribute-rule
   (pos-name pen17-overruled-dot-gen222)
   (depends-on declare to_pay_max3 fine to_pay_max3)
   (implies to_pay_max3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen17] ) ) ) ?gen172 <- ( to_pay_max3 ( value 500 ) ( negative-support $?gen175 ) ( negative-overruled $?gen176 & : ( subseq-pos ( create$ pen17-overruled $?gen175 $$$ $?gen176 ) ) ) ) ( test ( eq ( class ?gen172 ) to_pay_max3 ) ) ( not ( and ?gen179 <- ( fine ( defendant ?Defendant ) ( positive ?gen178 & : ( >= ?gen178 1 ) ) ) ?gen172 <- ( to_pay_max3 ( positive-defeated $?gen174 & : ( not ( member$ pen17 $?gen174 ) ) ) ) ) ) => ( calc ( bind $?gen177 ( delete-member$ $?gen176 ( create$ pen17-overruled $?gen175 ) ) ) ) ?gen172 <- ( to_pay_max3 ( negative-overruled $?gen177 ) )"))

([pen17-overruled] of derived-attribute-rule
   (pos-name pen17-overruled-gen224)
   (depends-on declare fine to_pay_max3)
   (implies to_pay_max3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen17] ) ) ) ?gen179 <- ( fine ( defendant ?Defendant ) ( positive ?gen178 & : ( >= ?gen178 1 ) ) ) ?gen172 <- ( to_pay_max3 ( value 500 ) ( negative-support $?gen175 ) ( negative-overruled $?gen176 & : ( not ( subseq-pos ( create$ pen17-overruled $?gen175 $$$ $?gen176 ) ) ) ) ( positive-defeated $?gen174 & : ( not ( member$ pen17 $?gen174 ) ) ) ) ( test ( eq ( class ?gen172 ) to_pay_max3 ) ) => ( calc ( bind $?gen177 ( create$ pen17-overruled $?gen175 $?gen176 ) ) ) ?gen172 <- ( to_pay_max3 ( negative-overruled $?gen177 ) )"))

([pen17-support] of derived-attribute-rule
   (pos-name pen17-support-gen226)
   (depends-on declare fine to_pay_max3)
   (implies to_pay_max3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen17] ) ) ) ?gen171 <- ( fine ( defendant ?Defendant ) ) ?gen172 <- ( to_pay_max3 ( value 500 ) ( positive-support $?gen174 & : ( not ( subseq-pos ( create$ pen17 ?gen171 $$$ $?gen174 ) ) ) ) ) ( test ( eq ( class ?gen172 ) to_pay_max3 ) ) => ( calc ( bind $?gen177 ( create$ pen17 ?gen171 $?gen174 ) ) ) ?gen172 <- ( to_pay_max3 ( positive-support $?gen177 ) )"))

([pen16-defeasibly-dot] of derived-attribute-rule
   (pos-name pen16-defeasibly-dot-gen228)
   (depends-on declare jail_3_year harm_done_with_weapon jail_3_year)
   (implies jail_3_year)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen16] ) ) ) ?gen163 <- ( jail_3_year ( value 3 ) ( positive 1 ) ( positive-derivator pen16 $? ) ) ( test ( eq ( class ?gen163 ) jail_3_year ) ) ( not ( and ?gen170 <- ( harm_done_with_weapon ( defendant ?Defendant ) ( positive ?gen169 & : ( >= ?gen169 1 ) ) ) ?gen163 <- ( jail_3_year ( negative ~ 2 ) ( positive-overruled $?gen165 & : ( not ( member$ pen16 $?gen165 ) ) ) ) ) ) => ?gen163 <- ( jail_3_year ( positive 0 ) )"))

([pen16-defeasibly] of derived-attribute-rule
   (pos-name pen16-defeasibly-gen230)
   (depends-on declare harm_done_with_weapon jail_3_year)
   (implies jail_3_year)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen16] ) ) ) ?gen170 <- ( harm_done_with_weapon ( defendant ?Defendant ) ( positive ?gen169 & : ( >= ?gen169 1 ) ) ) ?gen163 <- ( jail_3_year ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen165 & : ( not ( member$ pen16 $?gen165 ) ) ) ) ( test ( eq ( class ?gen163 ) jail_3_year ) ) => ?gen163 <- ( jail_3_year ( positive 1 ) ( positive-derivator pen16 ?gen170 ) )"))

([pen16-overruled-dot] of derived-attribute-rule
   (pos-name pen16-overruled-dot-gen232)
   (depends-on declare jail_3_year harm_done_with_weapon jail_3_year)
   (implies jail_3_year)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen16] ) ) ) ?gen163 <- ( jail_3_year ( value 3 ) ( negative-support $?gen166 ) ( negative-overruled $?gen167 & : ( subseq-pos ( create$ pen16-overruled $?gen166 $$$ $?gen167 ) ) ) ) ( test ( eq ( class ?gen163 ) jail_3_year ) ) ( not ( and ?gen170 <- ( harm_done_with_weapon ( defendant ?Defendant ) ( positive ?gen169 & : ( >= ?gen169 1 ) ) ) ?gen163 <- ( jail_3_year ( positive-defeated $?gen165 & : ( not ( member$ pen16 $?gen165 ) ) ) ) ) ) => ( calc ( bind $?gen168 ( delete-member$ $?gen167 ( create$ pen16-overruled $?gen166 ) ) ) ) ?gen163 <- ( jail_3_year ( negative-overruled $?gen168 ) )"))

([pen16-overruled] of derived-attribute-rule
   (pos-name pen16-overruled-gen234)
   (depends-on declare harm_done_with_weapon jail_3_year)
   (implies jail_3_year)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen16] ) ) ) ?gen170 <- ( harm_done_with_weapon ( defendant ?Defendant ) ( positive ?gen169 & : ( >= ?gen169 1 ) ) ) ?gen163 <- ( jail_3_year ( value 3 ) ( negative-support $?gen166 ) ( negative-overruled $?gen167 & : ( not ( subseq-pos ( create$ pen16-overruled $?gen166 $$$ $?gen167 ) ) ) ) ( positive-defeated $?gen165 & : ( not ( member$ pen16 $?gen165 ) ) ) ) ( test ( eq ( class ?gen163 ) jail_3_year ) ) => ( calc ( bind $?gen168 ( create$ pen16-overruled $?gen166 $?gen167 ) ) ) ?gen163 <- ( jail_3_year ( negative-overruled $?gen168 ) )"))

([pen16-support] of derived-attribute-rule
   (pos-name pen16-support-gen236)
   (depends-on declare harm_done_with_weapon jail_3_year)
   (implies jail_3_year)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen16] ) ) ) ?gen162 <- ( harm_done_with_weapon ( defendant ?Defendant ) ) ?gen163 <- ( jail_3_year ( value 3 ) ( positive-support $?gen165 & : ( not ( subseq-pos ( create$ pen16 ?gen162 $$$ $?gen165 ) ) ) ) ) ( test ( eq ( class ?gen163 ) jail_3_year ) ) => ( calc ( bind $?gen168 ( create$ pen16 ?gen162 $?gen165 ) ) ) ?gen163 <- ( jail_3_year ( positive-support $?gen168 ) )"))

([pen15-defeasibly-dot] of derived-attribute-rule
   (pos-name pen15-defeasibly-dot-gen238)
   (depends-on declare to_pay_min2 money to_pay_min2)
   (implies to_pay_min2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen15] ) ) ) ?gen154 <- ( to_pay_min2 ( value 30 ) ( positive 1 ) ( positive-derivator pen15 $? ) ) ( test ( eq ( class ?gen154 ) to_pay_min2 ) ) ( not ( and ?gen161 <- ( money ( defendant ?Defendant ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ?gen154 <- ( to_pay_min2 ( negative ~ 2 ) ( positive-overruled $?gen156 & : ( not ( member$ pen15 $?gen156 ) ) ) ) ) ) => ?gen154 <- ( to_pay_min2 ( positive 0 ) )"))

([pen15-defeasibly] of derived-attribute-rule
   (pos-name pen15-defeasibly-gen240)
   (depends-on declare money to_pay_min2)
   (implies to_pay_min2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen15] ) ) ) ?gen161 <- ( money ( defendant ?Defendant ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ?gen154 <- ( to_pay_min2 ( value 30 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen156 & : ( not ( member$ pen15 $?gen156 ) ) ) ) ( test ( eq ( class ?gen154 ) to_pay_min2 ) ) => ?gen154 <- ( to_pay_min2 ( positive 1 ) ( positive-derivator pen15 ?gen161 ) )"))

([pen15-overruled-dot] of derived-attribute-rule
   (pos-name pen15-overruled-dot-gen242)
   (depends-on declare to_pay_min2 money to_pay_min2)
   (implies to_pay_min2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen15] ) ) ) ?gen154 <- ( to_pay_min2 ( value 30 ) ( negative-support $?gen157 ) ( negative-overruled $?gen158 & : ( subseq-pos ( create$ pen15-overruled $?gen157 $$$ $?gen158 ) ) ) ) ( test ( eq ( class ?gen154 ) to_pay_min2 ) ) ( not ( and ?gen161 <- ( money ( defendant ?Defendant ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ?gen154 <- ( to_pay_min2 ( positive-defeated $?gen156 & : ( not ( member$ pen15 $?gen156 ) ) ) ) ) ) => ( calc ( bind $?gen159 ( delete-member$ $?gen158 ( create$ pen15-overruled $?gen157 ) ) ) ) ?gen154 <- ( to_pay_min2 ( negative-overruled $?gen159 ) )"))

([pen15-overruled] of derived-attribute-rule
   (pos-name pen15-overruled-gen244)
   (depends-on declare money to_pay_min2)
   (implies to_pay_min2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen15] ) ) ) ?gen161 <- ( money ( defendant ?Defendant ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ?gen154 <- ( to_pay_min2 ( value 30 ) ( negative-support $?gen157 ) ( negative-overruled $?gen158 & : ( not ( subseq-pos ( create$ pen15-overruled $?gen157 $$$ $?gen158 ) ) ) ) ( positive-defeated $?gen156 & : ( not ( member$ pen15 $?gen156 ) ) ) ) ( test ( eq ( class ?gen154 ) to_pay_min2 ) ) => ( calc ( bind $?gen159 ( create$ pen15-overruled $?gen157 $?gen158 ) ) ) ?gen154 <- ( to_pay_min2 ( negative-overruled $?gen159 ) )"))

([pen15-support] of derived-attribute-rule
   (pos-name pen15-support-gen246)
   (depends-on declare money to_pay_min2)
   (implies to_pay_min2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen15] ) ) ) ?gen153 <- ( money ( defendant ?Defendant ) ) ?gen154 <- ( to_pay_min2 ( value 30 ) ( positive-support $?gen156 & : ( not ( subseq-pos ( create$ pen15 ?gen153 $$$ $?gen156 ) ) ) ) ) ( test ( eq ( class ?gen154 ) to_pay_min2 ) ) => ( calc ( bind $?gen159 ( create$ pen15 ?gen153 $?gen156 ) ) ) ?gen154 <- ( to_pay_min2 ( positive-support $?gen159 ) )"))

([pen14-defeasibly-dot] of derived-attribute-rule
   (pos-name pen14-defeasibly-dot-gen248)
   (depends-on declare to_pay_max2 money to_pay_max2)
   (implies to_pay_max2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen14] ) ) ) ?gen145 <- ( to_pay_max2 ( value 500 ) ( positive 1 ) ( positive-derivator pen14 $? ) ) ( test ( eq ( class ?gen145 ) to_pay_max2 ) ) ( not ( and ?gen152 <- ( money ( defendant ?Defendant ) ( positive ?gen151 & : ( >= ?gen151 1 ) ) ) ?gen145 <- ( to_pay_max2 ( negative ~ 2 ) ( positive-overruled $?gen147 & : ( not ( member$ pen14 $?gen147 ) ) ) ) ) ) => ?gen145 <- ( to_pay_max2 ( positive 0 ) )"))

([pen14-defeasibly] of derived-attribute-rule
   (pos-name pen14-defeasibly-gen250)
   (depends-on declare money to_pay_max2)
   (implies to_pay_max2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen14] ) ) ) ?gen152 <- ( money ( defendant ?Defendant ) ( positive ?gen151 & : ( >= ?gen151 1 ) ) ) ?gen145 <- ( to_pay_max2 ( value 500 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen147 & : ( not ( member$ pen14 $?gen147 ) ) ) ) ( test ( eq ( class ?gen145 ) to_pay_max2 ) ) => ?gen145 <- ( to_pay_max2 ( positive 1 ) ( positive-derivator pen14 ?gen152 ) )"))

([pen14-overruled-dot] of derived-attribute-rule
   (pos-name pen14-overruled-dot-gen252)
   (depends-on declare to_pay_max2 money to_pay_max2)
   (implies to_pay_max2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen14] ) ) ) ?gen145 <- ( to_pay_max2 ( value 500 ) ( negative-support $?gen148 ) ( negative-overruled $?gen149 & : ( subseq-pos ( create$ pen14-overruled $?gen148 $$$ $?gen149 ) ) ) ) ( test ( eq ( class ?gen145 ) to_pay_max2 ) ) ( not ( and ?gen152 <- ( money ( defendant ?Defendant ) ( positive ?gen151 & : ( >= ?gen151 1 ) ) ) ?gen145 <- ( to_pay_max2 ( positive-defeated $?gen147 & : ( not ( member$ pen14 $?gen147 ) ) ) ) ) ) => ( calc ( bind $?gen150 ( delete-member$ $?gen149 ( create$ pen14-overruled $?gen148 ) ) ) ) ?gen145 <- ( to_pay_max2 ( negative-overruled $?gen150 ) )"))

([pen14-overruled] of derived-attribute-rule
   (pos-name pen14-overruled-gen254)
   (depends-on declare money to_pay_max2)
   (implies to_pay_max2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen14] ) ) ) ?gen152 <- ( money ( defendant ?Defendant ) ( positive ?gen151 & : ( >= ?gen151 1 ) ) ) ?gen145 <- ( to_pay_max2 ( value 500 ) ( negative-support $?gen148 ) ( negative-overruled $?gen149 & : ( not ( subseq-pos ( create$ pen14-overruled $?gen148 $$$ $?gen149 ) ) ) ) ( positive-defeated $?gen147 & : ( not ( member$ pen14 $?gen147 ) ) ) ) ( test ( eq ( class ?gen145 ) to_pay_max2 ) ) => ( calc ( bind $?gen150 ( create$ pen14-overruled $?gen148 $?gen149 ) ) ) ?gen145 <- ( to_pay_max2 ( negative-overruled $?gen150 ) )"))

([pen14-support] of derived-attribute-rule
   (pos-name pen14-support-gen256)
   (depends-on declare money to_pay_max2)
   (implies to_pay_max2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen14] ) ) ) ?gen144 <- ( money ( defendant ?Defendant ) ) ?gen145 <- ( to_pay_max2 ( value 500 ) ( positive-support $?gen147 & : ( not ( subseq-pos ( create$ pen14 ?gen144 $$$ $?gen147 ) ) ) ) ) ( test ( eq ( class ?gen145 ) to_pay_max2 ) ) => ( calc ( bind $?gen150 ( create$ pen14 ?gen144 $?gen147 ) ) ) ?gen145 <- ( to_pay_max2 ( positive-support $?gen150 ) )"))

([pen13-defeasibly-dot] of derived-attribute-rule
   (pos-name pen13-defeasibly-dot-gen258)
   (depends-on declare to_pay_min is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen13] ) ) ) ?gen136 <- ( to_pay_min ( value 30 ) ( positive 1 ) ( positive-derivator pen13 $? ) ) ( test ( eq ( class ?gen136 ) to_pay_min ) ) ( not ( and ?gen143 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen142 & : ( >= ?gen142 1 ) ) ) ?gen136 <- ( to_pay_min ( negative ~ 2 ) ( positive-overruled $?gen138 & : ( not ( member$ pen13 $?gen138 ) ) ) ) ) ) => ?gen136 <- ( to_pay_min ( positive 0 ) )"))

([pen13-defeasibly] of derived-attribute-rule
   (pos-name pen13-defeasibly-gen260)
   (depends-on declare is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen13] ) ) ) ?gen143 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen142 & : ( >= ?gen142 1 ) ) ) ?gen136 <- ( to_pay_min ( value 30 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen138 & : ( not ( member$ pen13 $?gen138 ) ) ) ) ( test ( eq ( class ?gen136 ) to_pay_min ) ) => ?gen136 <- ( to_pay_min ( positive 1 ) ( positive-derivator pen13 ?gen143 ) )"))

([pen13-overruled-dot] of derived-attribute-rule
   (pos-name pen13-overruled-dot-gen262)
   (depends-on declare to_pay_min is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen13] ) ) ) ?gen136 <- ( to_pay_min ( value 30 ) ( negative-support $?gen139 ) ( negative-overruled $?gen140 & : ( subseq-pos ( create$ pen13-overruled $?gen139 $$$ $?gen140 ) ) ) ) ( test ( eq ( class ?gen136 ) to_pay_min ) ) ( not ( and ?gen143 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen142 & : ( >= ?gen142 1 ) ) ) ?gen136 <- ( to_pay_min ( positive-defeated $?gen138 & : ( not ( member$ pen13 $?gen138 ) ) ) ) ) ) => ( calc ( bind $?gen141 ( delete-member$ $?gen140 ( create$ pen13-overruled $?gen139 ) ) ) ) ?gen136 <- ( to_pay_min ( negative-overruled $?gen141 ) )"))

([pen13-overruled] of derived-attribute-rule
   (pos-name pen13-overruled-gen264)
   (depends-on declare is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen13] ) ) ) ?gen143 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen142 & : ( >= ?gen142 1 ) ) ) ?gen136 <- ( to_pay_min ( value 30 ) ( negative-support $?gen139 ) ( negative-overruled $?gen140 & : ( not ( subseq-pos ( create$ pen13-overruled $?gen139 $$$ $?gen140 ) ) ) ) ( positive-defeated $?gen138 & : ( not ( member$ pen13 $?gen138 ) ) ) ) ( test ( eq ( class ?gen136 ) to_pay_min ) ) => ( calc ( bind $?gen141 ( create$ pen13-overruled $?gen139 $?gen140 ) ) ) ?gen136 <- ( to_pay_min ( negative-overruled $?gen141 ) )"))

([pen13-support] of derived-attribute-rule
   (pos-name pen13-support-gen266)
   (depends-on declare is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen13] ) ) ) ?gen135 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ) ?gen136 <- ( to_pay_min ( value 30 ) ( positive-support $?gen138 & : ( not ( subseq-pos ( create$ pen13 ?gen135 $$$ $?gen138 ) ) ) ) ) ( test ( eq ( class ?gen136 ) to_pay_min ) ) => ( calc ( bind $?gen141 ( create$ pen13 ?gen135 $?gen138 ) ) ) ?gen136 <- ( to_pay_min ( positive-support $?gen141 ) )"))

([pen12-defeasibly-dot] of derived-attribute-rule
   (pos-name pen12-defeasibly-dot-gen268)
   (depends-on declare to_pay_max is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen12] ) ) ) ?gen127 <- ( to_pay_max ( value 500 ) ( positive 1 ) ( positive-derivator pen12 $? ) ) ( test ( eq ( class ?gen127 ) to_pay_max ) ) ( not ( and ?gen134 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen127 <- ( to_pay_max ( negative ~ 2 ) ( positive-overruled $?gen129 & : ( not ( member$ pen12 $?gen129 ) ) ) ) ) ) => ?gen127 <- ( to_pay_max ( positive 0 ) )"))

([pen12-defeasibly] of derived-attribute-rule
   (pos-name pen12-defeasibly-gen270)
   (depends-on declare is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen12] ) ) ) ?gen134 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen127 <- ( to_pay_max ( value 500 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen129 & : ( not ( member$ pen12 $?gen129 ) ) ) ) ( test ( eq ( class ?gen127 ) to_pay_max ) ) => ?gen127 <- ( to_pay_max ( positive 1 ) ( positive-derivator pen12 ?gen134 ) )"))

([pen12-overruled-dot] of derived-attribute-rule
   (pos-name pen12-overruled-dot-gen272)
   (depends-on declare to_pay_max is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen12] ) ) ) ?gen127 <- ( to_pay_max ( value 500 ) ( negative-support $?gen130 ) ( negative-overruled $?gen131 & : ( subseq-pos ( create$ pen12-overruled $?gen130 $$$ $?gen131 ) ) ) ) ( test ( eq ( class ?gen127 ) to_pay_max ) ) ( not ( and ?gen134 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen127 <- ( to_pay_max ( positive-defeated $?gen129 & : ( not ( member$ pen12 $?gen129 ) ) ) ) ) ) => ( calc ( bind $?gen132 ( delete-member$ $?gen131 ( create$ pen12-overruled $?gen130 ) ) ) ) ?gen127 <- ( to_pay_max ( negative-overruled $?gen132 ) )"))

([pen12-overruled] of derived-attribute-rule
   (pos-name pen12-overruled-gen274)
   (depends-on declare is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen12] ) ) ) ?gen134 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen127 <- ( to_pay_max ( value 500 ) ( negative-support $?gen130 ) ( negative-overruled $?gen131 & : ( not ( subseq-pos ( create$ pen12-overruled $?gen130 $$$ $?gen131 ) ) ) ) ( positive-defeated $?gen129 & : ( not ( member$ pen12 $?gen129 ) ) ) ) ( test ( eq ( class ?gen127 ) to_pay_max ) ) => ( calc ( bind $?gen132 ( create$ pen12-overruled $?gen130 $?gen131 ) ) ) ?gen127 <- ( to_pay_max ( negative-overruled $?gen132 ) )"))

([pen12-support] of derived-attribute-rule
   (pos-name pen12-support-gen276)
   (depends-on declare is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen12] ) ) ) ?gen126 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ) ?gen127 <- ( to_pay_max ( value 500 ) ( positive-support $?gen129 & : ( not ( subseq-pos ( create$ pen12 ?gen126 $$$ $?gen129 ) ) ) ) ) ( test ( eq ( class ?gen127 ) to_pay_max ) ) => ( calc ( bind $?gen132 ( create$ pen12 ?gen126 $?gen129 ) ) ) ?gen127 <- ( to_pay_max ( positive-support $?gen132 ) )"))

([pen11-defeasibly-dot] of derived-attribute-rule
   (pos-name pen11-defeasibly-dot-gen278)
   (depends-on declare to_increase_penalty recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen11] ) ) ) ?gen118 <- ( to_increase_penalty ( value true ) ( positive 1 ) ( positive-derivator pen11 $? ) ) ( test ( eq ( class ?gen118 ) to_increase_penalty ) ) ( not ( and ?gen125 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ?gen118 <- ( to_increase_penalty ( negative ~ 2 ) ( positive-overruled $?gen120 & : ( not ( member$ pen11 $?gen120 ) ) ) ) ) ) => ?gen118 <- ( to_increase_penalty ( positive 0 ) )"))

([pen11-defeasibly] of derived-attribute-rule
   (pos-name pen11-defeasibly-gen280)
   (depends-on declare recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen11] ) ) ) ?gen125 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ?gen118 <- ( to_increase_penalty ( value true ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen120 & : ( not ( member$ pen11 $?gen120 ) ) ) ) ( test ( eq ( class ?gen118 ) to_increase_penalty ) ) => ?gen118 <- ( to_increase_penalty ( positive 1 ) ( positive-derivator pen11 ?gen125 ) )"))

([pen11-overruled-dot] of derived-attribute-rule
   (pos-name pen11-overruled-dot-gen282)
   (depends-on declare to_increase_penalty recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen11] ) ) ) ?gen118 <- ( to_increase_penalty ( value true ) ( negative-support $?gen121 ) ( negative-overruled $?gen122 & : ( subseq-pos ( create$ pen11-overruled $?gen121 $$$ $?gen122 ) ) ) ) ( test ( eq ( class ?gen118 ) to_increase_penalty ) ) ( not ( and ?gen125 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ?gen118 <- ( to_increase_penalty ( positive-defeated $?gen120 & : ( not ( member$ pen11 $?gen120 ) ) ) ) ) ) => ( calc ( bind $?gen123 ( delete-member$ $?gen122 ( create$ pen11-overruled $?gen121 ) ) ) ) ?gen118 <- ( to_increase_penalty ( negative-overruled $?gen123 ) )"))

([pen11-overruled] of derived-attribute-rule
   (pos-name pen11-overruled-gen284)
   (depends-on declare recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen11] ) ) ) ?gen125 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ?gen118 <- ( to_increase_penalty ( value true ) ( negative-support $?gen121 ) ( negative-overruled $?gen122 & : ( not ( subseq-pos ( create$ pen11-overruled $?gen121 $$$ $?gen122 ) ) ) ) ( positive-defeated $?gen120 & : ( not ( member$ pen11 $?gen120 ) ) ) ) ( test ( eq ( class ?gen118 ) to_increase_penalty ) ) => ( calc ( bind $?gen123 ( create$ pen11-overruled $?gen121 $?gen122 ) ) ) ?gen118 <- ( to_increase_penalty ( negative-overruled $?gen123 ) )"))

([pen11-support] of derived-attribute-rule
   (pos-name pen11-support-gen286)
   (depends-on declare recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen11] ) ) ) ?gen117 <- ( recommend_increased_penalty ( defendant ?Defendant ) ) ?gen118 <- ( to_increase_penalty ( value true ) ( positive-support $?gen120 & : ( not ( subseq-pos ( create$ pen11 ?gen117 $$$ $?gen120 ) ) ) ) ) ( test ( eq ( class ?gen118 ) to_increase_penalty ) ) => ( calc ( bind $?gen123 ( create$ pen11 ?gen117 $?gen120 ) ) ) ?gen118 <- ( to_increase_penalty ( positive-support $?gen123 ) )"))

([pen10-defeasibly-dot] of derived-attribute-rule
   (pos-name pen10-defeasibly-dot-gen288)
   (depends-on declare to_pay_less recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen10] ) ) ) ?gen109 <- ( to_pay_less ( value true ) ( positive 1 ) ( positive-derivator pen10 $? ) ) ( test ( eq ( class ?gen109 ) to_pay_less ) ) ( not ( and ?gen116 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive ?gen115 & : ( >= ?gen115 1 ) ) ) ?gen109 <- ( to_pay_less ( negative ~ 2 ) ( positive-overruled $?gen111 & : ( not ( member$ pen10 $?gen111 ) ) ) ) ) ) => ?gen109 <- ( to_pay_less ( positive 0 ) )"))

([pen10-defeasibly] of derived-attribute-rule
   (pos-name pen10-defeasibly-gen290)
   (depends-on declare recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen10] ) ) ) ?gen116 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive ?gen115 & : ( >= ?gen115 1 ) ) ) ?gen109 <- ( to_pay_less ( value true ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen111 & : ( not ( member$ pen10 $?gen111 ) ) ) ) ( test ( eq ( class ?gen109 ) to_pay_less ) ) => ?gen109 <- ( to_pay_less ( positive 1 ) ( positive-derivator pen10 ?gen116 ) )"))

([pen10-overruled-dot] of derived-attribute-rule
   (pos-name pen10-overruled-dot-gen292)
   (depends-on declare to_pay_less recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen10] ) ) ) ?gen109 <- ( to_pay_less ( value true ) ( negative-support $?gen112 ) ( negative-overruled $?gen113 & : ( subseq-pos ( create$ pen10-overruled $?gen112 $$$ $?gen113 ) ) ) ) ( test ( eq ( class ?gen109 ) to_pay_less ) ) ( not ( and ?gen116 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive ?gen115 & : ( >= ?gen115 1 ) ) ) ?gen109 <- ( to_pay_less ( positive-defeated $?gen111 & : ( not ( member$ pen10 $?gen111 ) ) ) ) ) ) => ( calc ( bind $?gen114 ( delete-member$ $?gen113 ( create$ pen10-overruled $?gen112 ) ) ) ) ?gen109 <- ( to_pay_less ( negative-overruled $?gen114 ) )"))

([pen10-overruled] of derived-attribute-rule
   (pos-name pen10-overruled-gen294)
   (depends-on declare recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen10] ) ) ) ?gen116 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive ?gen115 & : ( >= ?gen115 1 ) ) ) ?gen109 <- ( to_pay_less ( value true ) ( negative-support $?gen112 ) ( negative-overruled $?gen113 & : ( not ( subseq-pos ( create$ pen10-overruled $?gen112 $$$ $?gen113 ) ) ) ) ( positive-defeated $?gen111 & : ( not ( member$ pen10 $?gen111 ) ) ) ) ( test ( eq ( class ?gen109 ) to_pay_less ) ) => ( calc ( bind $?gen114 ( create$ pen10-overruled $?gen112 $?gen113 ) ) ) ?gen109 <- ( to_pay_less ( negative-overruled $?gen114 ) )"))

([pen10-support] of derived-attribute-rule
   (pos-name pen10-support-gen296)
   (depends-on declare recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen10] ) ) ) ?gen108 <- ( recommend_fine_reduction ( defendant ?Defendant ) ) ?gen109 <- ( to_pay_less ( value true ) ( positive-support $?gen111 & : ( not ( subseq-pos ( create$ pen10 ?gen108 $$$ $?gen111 ) ) ) ) ) ( test ( eq ( class ?gen109 ) to_pay_less ) ) => ( calc ( bind $?gen114 ( create$ pen10 ?gen108 $?gen111 ) ) ) ?gen109 <- ( to_pay_less ( positive-support $?gen114 ) )"))

([pen7-defeasibly-dot] of derived-attribute-rule
   (pos-name pen7-defeasibly-dot-gen298)
   (depends-on declare confiscate_weapon confiscation confiscate_weapon)
   (implies confiscate_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen7] ) ) ) ?gen100 <- ( confiscate_weapon ( value true ) ( positive 1 ) ( positive-derivator pen7 $? ) ) ( test ( eq ( class ?gen100 ) confiscate_weapon ) ) ( not ( and ?gen107 <- ( confiscation ( defendant ?Defendant ) ( positive ?gen106 & : ( >= ?gen106 1 ) ) ) ?gen100 <- ( confiscate_weapon ( negative ~ 2 ) ( positive-overruled $?gen102 & : ( not ( member$ pen7 $?gen102 ) ) ) ) ) ) => ?gen100 <- ( confiscate_weapon ( positive 0 ) )"))

([pen7-defeasibly] of derived-attribute-rule
   (pos-name pen7-defeasibly-gen300)
   (depends-on declare confiscation confiscate_weapon)
   (implies confiscate_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen7] ) ) ) ?gen107 <- ( confiscation ( defendant ?Defendant ) ( positive ?gen106 & : ( >= ?gen106 1 ) ) ) ?gen100 <- ( confiscate_weapon ( value true ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen102 & : ( not ( member$ pen7 $?gen102 ) ) ) ) ( test ( eq ( class ?gen100 ) confiscate_weapon ) ) => ?gen100 <- ( confiscate_weapon ( positive 1 ) ( positive-derivator pen7 ?gen107 ) )"))

([pen7-overruled-dot] of derived-attribute-rule
   (pos-name pen7-overruled-dot-gen302)
   (depends-on declare confiscate_weapon confiscation confiscate_weapon)
   (implies confiscate_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen7] ) ) ) ?gen100 <- ( confiscate_weapon ( value true ) ( negative-support $?gen103 ) ( negative-overruled $?gen104 & : ( subseq-pos ( create$ pen7-overruled $?gen103 $$$ $?gen104 ) ) ) ) ( test ( eq ( class ?gen100 ) confiscate_weapon ) ) ( not ( and ?gen107 <- ( confiscation ( defendant ?Defendant ) ( positive ?gen106 & : ( >= ?gen106 1 ) ) ) ?gen100 <- ( confiscate_weapon ( positive-defeated $?gen102 & : ( not ( member$ pen7 $?gen102 ) ) ) ) ) ) => ( calc ( bind $?gen105 ( delete-member$ $?gen104 ( create$ pen7-overruled $?gen103 ) ) ) ) ?gen100 <- ( confiscate_weapon ( negative-overruled $?gen105 ) )"))

([pen7-overruled] of derived-attribute-rule
   (pos-name pen7-overruled-gen304)
   (depends-on declare confiscation confiscate_weapon)
   (implies confiscate_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen7] ) ) ) ?gen107 <- ( confiscation ( defendant ?Defendant ) ( positive ?gen106 & : ( >= ?gen106 1 ) ) ) ?gen100 <- ( confiscate_weapon ( value true ) ( negative-support $?gen103 ) ( negative-overruled $?gen104 & : ( not ( subseq-pos ( create$ pen7-overruled $?gen103 $$$ $?gen104 ) ) ) ) ( positive-defeated $?gen102 & : ( not ( member$ pen7 $?gen102 ) ) ) ) ( test ( eq ( class ?gen100 ) confiscate_weapon ) ) => ( calc ( bind $?gen105 ( create$ pen7-overruled $?gen103 $?gen104 ) ) ) ?gen100 <- ( confiscate_weapon ( negative-overruled $?gen105 ) )"))

([pen7-support] of derived-attribute-rule
   (pos-name pen7-support-gen306)
   (depends-on declare confiscation confiscate_weapon)
   (implies confiscate_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen7] ) ) ) ?gen99 <- ( confiscation ( defendant ?Defendant ) ) ?gen100 <- ( confiscate_weapon ( value true ) ( positive-support $?gen102 & : ( not ( subseq-pos ( create$ pen7 ?gen99 $$$ $?gen102 ) ) ) ) ) ( test ( eq ( class ?gen100 ) confiscate_weapon ) ) => ( calc ( bind $?gen105 ( create$ pen7 ?gen99 $?gen102 ) ) ) ?gen100 <- ( confiscate_weapon ( positive-support $?gen105 ) )"))

([pen1-defeasibly-dot] of derived-attribute-rule
   (pos-name pen1-defeasibly-dot-gen308)
   (depends-on declare 30_imprisonment jail_3_months 30_imprisonment)
   (implies 30_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen1] ) ) ) ?gen91 <- ( 30_imprisonment ( value 30 ) ( positive 1 ) ( positive-derivator pen1 $? ) ) ( test ( eq ( class ?gen91 ) 30_imprisonment ) ) ( not ( and ?gen98 <- ( jail_3_months ( defendant ?Defendant ) ( positive ?gen97 & : ( >= ?gen97 1 ) ) ) ?gen91 <- ( 30_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen93 & : ( not ( member$ pen1 $?gen93 ) ) ) ) ) ) => ?gen91 <- ( 30_imprisonment ( positive 0 ) )"))

([pen1-defeasibly] of derived-attribute-rule
   (pos-name pen1-defeasibly-gen310)
   (depends-on declare jail_3_months 30_imprisonment)
   (implies 30_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen1] ) ) ) ?gen98 <- ( jail_3_months ( defendant ?Defendant ) ( positive ?gen97 & : ( >= ?gen97 1 ) ) ) ?gen91 <- ( 30_imprisonment ( value 30 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen93 & : ( not ( member$ pen1 $?gen93 ) ) ) ) ( test ( eq ( class ?gen91 ) 30_imprisonment ) ) => ?gen91 <- ( 30_imprisonment ( positive 1 ) ( positive-derivator pen1 ?gen98 ) )"))

([pen1-overruled-dot] of derived-attribute-rule
   (pos-name pen1-overruled-dot-gen312)
   (depends-on declare 30_imprisonment jail_3_months 30_imprisonment)
   (implies 30_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen1] ) ) ) ?gen91 <- ( 30_imprisonment ( value 30 ) ( negative-support $?gen94 ) ( negative-overruled $?gen95 & : ( subseq-pos ( create$ pen1-overruled $?gen94 $$$ $?gen95 ) ) ) ) ( test ( eq ( class ?gen91 ) 30_imprisonment ) ) ( not ( and ?gen98 <- ( jail_3_months ( defendant ?Defendant ) ( positive ?gen97 & : ( >= ?gen97 1 ) ) ) ?gen91 <- ( 30_imprisonment ( positive-defeated $?gen93 & : ( not ( member$ pen1 $?gen93 ) ) ) ) ) ) => ( calc ( bind $?gen96 ( delete-member$ $?gen95 ( create$ pen1-overruled $?gen94 ) ) ) ) ?gen91 <- ( 30_imprisonment ( negative-overruled $?gen96 ) )"))

([pen1-overruled] of derived-attribute-rule
   (pos-name pen1-overruled-gen314)
   (depends-on declare jail_3_months 30_imprisonment)
   (implies 30_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen1] ) ) ) ?gen98 <- ( jail_3_months ( defendant ?Defendant ) ( positive ?gen97 & : ( >= ?gen97 1 ) ) ) ?gen91 <- ( 30_imprisonment ( value 30 ) ( negative-support $?gen94 ) ( negative-overruled $?gen95 & : ( not ( subseq-pos ( create$ pen1-overruled $?gen94 $$$ $?gen95 ) ) ) ) ( positive-defeated $?gen93 & : ( not ( member$ pen1 $?gen93 ) ) ) ) ( test ( eq ( class ?gen91 ) 30_imprisonment ) ) => ( calc ( bind $?gen96 ( create$ pen1-overruled $?gen94 $?gen95 ) ) ) ?gen91 <- ( 30_imprisonment ( negative-overruled $?gen96 ) )"))

([pen1-support] of derived-attribute-rule
   (pos-name pen1-support-gen316)
   (depends-on declare jail_3_months 30_imprisonment)
   (implies 30_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen1] ) ) ) ?gen90 <- ( jail_3_months ( defendant ?Defendant ) ) ?gen91 <- ( 30_imprisonment ( value 30 ) ( positive-support $?gen93 & : ( not ( subseq-pos ( create$ pen1 ?gen90 $$$ $?gen93 ) ) ) ) ) ( test ( eq ( class ?gen91 ) 30_imprisonment ) ) => ( calc ( bind $?gen96 ( create$ pen1 ?gen90 $?gen93 ) ) ) ?gen91 <- ( 30_imprisonment ( positive-support $?gen96 ) )"))

([rule11-defeasibly-dot] of derived-attribute-rule
   (pos-name rule11-defeasibly-dot-gen318)
   (depends-on declare is_high_category_weapon_in_public lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule11] ) ) ) ?gen82 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule11 $? ) ) ( test ( eq ( class ?gen82 ) is_high_category_weapon_in_public ) ) ( not ( and ?gen89 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ( positive ?gen88 & : ( >= ?gen88 1 ) ) ) ?gen82 <- ( is_high_category_weapon_in_public ( negative ~ 2 ) ( positive-overruled $?gen84 & : ( not ( member$ rule11 $?gen84 ) ) ) ) ) ) => ?gen82 <- ( is_high_category_weapon_in_public ( positive 0 ) )"))

([rule11-defeasibly] of derived-attribute-rule
   (pos-name rule11-defeasibly-gen320)
   (depends-on declare lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule11] ) ) ) ?gen89 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ( positive ?gen88 & : ( >= ?gen88 1 ) ) ) ?gen82 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen84 & : ( not ( member$ rule11 $?gen84 ) ) ) ) ( test ( eq ( class ?gen82 ) is_high_category_weapon_in_public ) ) => ?gen82 <- ( is_high_category_weapon_in_public ( positive 1 ) ( positive-derivator rule11 ?gen89 ) )"))

([rule11-overruled-dot] of derived-attribute-rule
   (pos-name rule11-overruled-dot-gen322)
   (depends-on declare is_high_category_weapon_in_public lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule11] ) ) ) ?gen82 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( negative-support $?gen85 ) ( negative-overruled $?gen86 & : ( subseq-pos ( create$ rule11-overruled $?gen85 $$$ $?gen86 ) ) ) ) ( test ( eq ( class ?gen82 ) is_high_category_weapon_in_public ) ) ( not ( and ?gen89 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ( positive ?gen88 & : ( >= ?gen88 1 ) ) ) ?gen82 <- ( is_high_category_weapon_in_public ( positive-defeated $?gen84 & : ( not ( member$ rule11 $?gen84 ) ) ) ) ) ) => ( calc ( bind $?gen87 ( delete-member$ $?gen86 ( create$ rule11-overruled $?gen85 ) ) ) ) ?gen82 <- ( is_high_category_weapon_in_public ( negative-overruled $?gen87 ) )"))

([rule11-overruled] of derived-attribute-rule
   (pos-name rule11-overruled-gen324)
   (depends-on declare lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule11] ) ) ) ?gen89 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ( positive ?gen88 & : ( >= ?gen88 1 ) ) ) ?gen82 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( negative-support $?gen85 ) ( negative-overruled $?gen86 & : ( not ( subseq-pos ( create$ rule11-overruled $?gen85 $$$ $?gen86 ) ) ) ) ( positive-defeated $?gen84 & : ( not ( member$ rule11 $?gen84 ) ) ) ) ( test ( eq ( class ?gen82 ) is_high_category_weapon_in_public ) ) => ( calc ( bind $?gen87 ( create$ rule11-overruled $?gen85 $?gen86 ) ) ) ?gen82 <- ( is_high_category_weapon_in_public ( negative-overruled $?gen87 ) )"))

([rule11-support] of derived-attribute-rule
   (pos-name rule11-support-gen326)
   (depends-on declare lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule11] ) ) ) ?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ) ?gen82 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive-support $?gen84 & : ( not ( subseq-pos ( create$ rule11 ?gen81 $$$ $?gen84 ) ) ) ) ) ( test ( eq ( class ?gen82 ) is_high_category_weapon_in_public ) ) => ( calc ( bind $?gen87 ( create$ rule11 ?gen81 $?gen84 ) ) ) ?gen82 <- ( is_high_category_weapon_in_public ( positive-support $?gen87 ) )"))

([rule10-defeasibly-dot] of derived-attribute-rule
   (pos-name rule10-defeasibly-dot-gen328)
   (depends-on declare recommend_increased_penalty lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule10] ) ) ) ?gen73 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule10 $? ) ) ( test ( eq ( class ?gen73 ) recommend_increased_penalty ) ) ( not ( and ?gen80 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ( positive ?gen79 & : ( >= ?gen79 1 ) ) ) ?gen73 <- ( recommend_increased_penalty ( negative ~ 2 ) ( positive-overruled $?gen75 & : ( not ( member$ rule10 $?gen75 ) ) ) ) ) ) => ?gen73 <- ( recommend_increased_penalty ( positive 0 ) )"))

([rule10-defeasibly] of derived-attribute-rule
   (pos-name rule10-defeasibly-gen330)
   (depends-on declare lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule10] ) ) ) ?gen80 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ( positive ?gen79 & : ( >= ?gen79 1 ) ) ) ?gen73 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen75 & : ( not ( member$ rule10 $?gen75 ) ) ) ) ( test ( eq ( class ?gen73 ) recommend_increased_penalty ) ) => ?gen73 <- ( recommend_increased_penalty ( positive 1 ) ( positive-derivator rule10 ?gen80 ) )"))

([rule10-overruled-dot] of derived-attribute-rule
   (pos-name rule10-overruled-dot-gen332)
   (depends-on declare recommend_increased_penalty lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule10] ) ) ) ?gen73 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( negative-support $?gen76 ) ( negative-overruled $?gen77 & : ( subseq-pos ( create$ rule10-overruled $?gen76 $$$ $?gen77 ) ) ) ) ( test ( eq ( class ?gen73 ) recommend_increased_penalty ) ) ( not ( and ?gen80 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ( positive ?gen79 & : ( >= ?gen79 1 ) ) ) ?gen73 <- ( recommend_increased_penalty ( positive-defeated $?gen75 & : ( not ( member$ rule10 $?gen75 ) ) ) ) ) ) => ( calc ( bind $?gen78 ( delete-member$ $?gen77 ( create$ rule10-overruled $?gen76 ) ) ) ) ?gen73 <- ( recommend_increased_penalty ( negative-overruled $?gen78 ) )"))

([rule10-overruled] of derived-attribute-rule
   (pos-name rule10-overruled-gen334)
   (depends-on declare lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule10] ) ) ) ?gen80 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ( positive ?gen79 & : ( >= ?gen79 1 ) ) ) ?gen73 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( negative-support $?gen76 ) ( negative-overruled $?gen77 & : ( not ( subseq-pos ( create$ rule10-overruled $?gen76 $$$ $?gen77 ) ) ) ) ( positive-defeated $?gen75 & : ( not ( member$ rule10 $?gen75 ) ) ) ) ( test ( eq ( class ?gen73 ) recommend_increased_penalty ) ) => ( calc ( bind $?gen78 ( create$ rule10-overruled $?gen76 $?gen77 ) ) ) ?gen73 <- ( recommend_increased_penalty ( negative-overruled $?gen78 ) )"))

([rule10-support] of derived-attribute-rule
   (pos-name rule10-support-gen336)
   (depends-on declare lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule10] ) ) ) ?gen72 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ) ?gen73 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive-support $?gen75 & : ( not ( subseq-pos ( create$ rule10 ?gen72 $$$ $?gen75 ) ) ) ) ) ( test ( eq ( class ?gen73 ) recommend_increased_penalty ) ) => ( calc ( bind $?gen78 ( create$ rule10 ?gen72 $?gen75 ) ) ) ?gen73 <- ( recommend_increased_penalty ( positive-support $?gen78 ) )"))

([rule9-defeasibly-dot] of derived-attribute-rule
   (pos-name rule9-defeasibly-dot-gen338)
   (depends-on declare recommend_fine_reduction lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule9] ) ) ) ?gen64 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule9 $? ) ) ( test ( eq ( class ?gen64 ) recommend_fine_reduction ) ) ( not ( and ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen64 <- ( recommend_fine_reduction ( negative ~ 2 ) ( positive-overruled $?gen66 & : ( not ( member$ rule9 $?gen66 ) ) ) ) ) ) => ?gen64 <- ( recommend_fine_reduction ( positive 0 ) )"))

([rule9-defeasibly] of derived-attribute-rule
   (pos-name rule9-defeasibly-gen340)
   (depends-on declare lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule9] ) ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen64 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen66 & : ( not ( member$ rule9 $?gen66 ) ) ) ) ( test ( eq ( class ?gen64 ) recommend_fine_reduction ) ) => ?gen64 <- ( recommend_fine_reduction ( positive 1 ) ( positive-derivator rule9 ?gen71 ) )"))

([rule9-overruled-dot] of derived-attribute-rule
   (pos-name rule9-overruled-dot-gen342)
   (depends-on declare recommend_fine_reduction lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule9] ) ) ) ?gen64 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( negative-support $?gen67 ) ( negative-overruled $?gen68 & : ( subseq-pos ( create$ rule9-overruled $?gen67 $$$ $?gen68 ) ) ) ) ( test ( eq ( class ?gen64 ) recommend_fine_reduction ) ) ( not ( and ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen64 <- ( recommend_fine_reduction ( positive-defeated $?gen66 & : ( not ( member$ rule9 $?gen66 ) ) ) ) ) ) => ( calc ( bind $?gen69 ( delete-member$ $?gen68 ( create$ rule9-overruled $?gen67 ) ) ) ) ?gen64 <- ( recommend_fine_reduction ( negative-overruled $?gen69 ) )"))

([rule9-overruled] of derived-attribute-rule
   (pos-name rule9-overruled-gen344)
   (depends-on declare lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule9] ) ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen64 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( negative-support $?gen67 ) ( negative-overruled $?gen68 & : ( not ( subseq-pos ( create$ rule9-overruled $?gen67 $$$ $?gen68 ) ) ) ) ( positive-defeated $?gen66 & : ( not ( member$ rule9 $?gen66 ) ) ) ) ( test ( eq ( class ?gen64 ) recommend_fine_reduction ) ) => ( calc ( bind $?gen69 ( create$ rule9-overruled $?gen67 $?gen68 ) ) ) ?gen64 <- ( recommend_fine_reduction ( negative-overruled $?gen69 ) )"))

([rule9-support] of derived-attribute-rule
   (pos-name rule9-support-gen346)
   (depends-on declare lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule9] ) ) ) ?gen63 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ) ?gen64 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive-support $?gen66 & : ( not ( subseq-pos ( create$ rule9 ?gen63 $$$ $?gen66 ) ) ) ) ) ( test ( eq ( class ?gen64 ) recommend_fine_reduction ) ) => ( calc ( bind $?gen69 ( create$ rule9 ?gen63 $?gen66 ) ) ) ?gen64 <- ( recommend_fine_reduction ( positive-support $?gen69 ) )"))

([rule8-defeasibly-dot] of derived-attribute-rule
   (pos-name rule8-defeasibly-dot-gen348)
   (depends-on declare money lc:case lc:case money)
   (implies money)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule8] ) ) ) ?gen53 <- ( money ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule8 $? ) ) ( test ( eq ( class ?gen53 ) money ) ) ( not ( and ?gen60 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen59 & : ( >= ?gen59 1 ) ) ) ?gen62 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen53 <- ( money ( negative ~ 2 ) ( positive-overruled $?gen55 & : ( not ( member$ rule8 $?gen55 ) ) ) ) ) ) => ?gen53 <- ( money ( positive 0 ) )"))

([rule8-defeasibly] of derived-attribute-rule
   (pos-name rule8-defeasibly-gen350)
   (depends-on declare lc:case lc:case money)
   (implies money)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule8] ) ) ) ?gen60 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen59 & : ( >= ?gen59 1 ) ) ) ?gen62 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen53 <- ( money ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen55 & : ( not ( member$ rule8 $?gen55 ) ) ) ) ( test ( eq ( class ?gen53 ) money ) ) => ?gen53 <- ( money ( positive 1 ) ( positive-derivator rule8 ?gen60 ?gen62 ) )"))

([rule8-overruled-dot] of derived-attribute-rule
   (pos-name rule8-overruled-dot-gen352)
   (depends-on declare money lc:case lc:case money)
   (implies money)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule8] ) ) ) ?gen53 <- ( money ( defendant ?Defendant ) ( negative-support $?gen56 ) ( negative-overruled $?gen57 & : ( subseq-pos ( create$ rule8-overruled $?gen56 $$$ $?gen57 ) ) ) ) ( test ( eq ( class ?gen53 ) money ) ) ( not ( and ?gen60 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen59 & : ( >= ?gen59 1 ) ) ) ?gen62 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen53 <- ( money ( positive-defeated $?gen55 & : ( not ( member$ rule8 $?gen55 ) ) ) ) ) ) => ( calc ( bind $?gen58 ( delete-member$ $?gen57 ( create$ rule8-overruled $?gen56 ) ) ) ) ?gen53 <- ( money ( negative-overruled $?gen58 ) )"))

([rule8-overruled] of derived-attribute-rule
   (pos-name rule8-overruled-gen354)
   (depends-on declare lc:case lc:case money)
   (implies money)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule8] ) ) ) ?gen60 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen59 & : ( >= ?gen59 1 ) ) ) ?gen62 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen53 <- ( money ( defendant ?Defendant ) ( negative-support $?gen56 ) ( negative-overruled $?gen57 & : ( not ( subseq-pos ( create$ rule8-overruled $?gen56 $$$ $?gen57 ) ) ) ) ( positive-defeated $?gen55 & : ( not ( member$ rule8 $?gen55 ) ) ) ) ( test ( eq ( class ?gen53 ) money ) ) => ( calc ( bind $?gen58 ( create$ rule8-overruled $?gen56 $?gen57 ) ) ) ?gen53 <- ( money ( negative-overruled $?gen58 ) )"))

([rule8-support] of derived-attribute-rule
   (pos-name rule8-support-gen356)
   (depends-on declare lc:case lc:case money)
   (implies money)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule8] ) ) ) ?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ) ?gen52 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ) ?gen53 <- ( money ( defendant ?Defendant ) ( positive-support $?gen55 & : ( not ( subseq-pos ( create$ rule8 ?gen51 ?gen52 $$$ $?gen55 ) ) ) ) ) ( test ( eq ( class ?gen53 ) money ) ) => ( calc ( bind $?gen58 ( create$ rule8 ?gen51 ?gen52 $?gen55 ) ) ) ?gen53 <- ( money ( positive-support $?gen58 ) )"))

([rule7-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7-defeasibly-dot-gen358)
   (depends-on declare confiscation lc:case confiscation)
   (implies confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7] ) ) ) ?gen43 <- ( confiscation ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule7 $? ) ) ( test ( eq ( class ?gen43 ) confiscation ) ) ( not ( and ?gen50 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( confiscation ( negative ~ 2 ) ( positive-overruled $?gen45 & : ( not ( member$ rule7 $?gen45 ) ) ) ) ) ) => ?gen43 <- ( confiscation ( positive 0 ) )"))

([rule7-defeasibly] of derived-attribute-rule
   (pos-name rule7-defeasibly-gen360)
   (depends-on declare lc:case confiscation)
   (implies confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7] ) ) ) ?gen50 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( confiscation ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen45 & : ( not ( member$ rule7 $?gen45 ) ) ) ) ( test ( eq ( class ?gen43 ) confiscation ) ) => ?gen43 <- ( confiscation ( positive 1 ) ( positive-derivator rule7 ?gen50 ) )"))

([rule7-overruled-dot] of derived-attribute-rule
   (pos-name rule7-overruled-dot-gen362)
   (depends-on declare confiscation lc:case confiscation)
   (implies confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7] ) ) ) ?gen43 <- ( confiscation ( defendant ?Defendant ) ( negative-support $?gen46 ) ( negative-overruled $?gen47 & : ( subseq-pos ( create$ rule7-overruled $?gen46 $$$ $?gen47 ) ) ) ) ( test ( eq ( class ?gen43 ) confiscation ) ) ( not ( and ?gen50 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( confiscation ( positive-defeated $?gen45 & : ( not ( member$ rule7 $?gen45 ) ) ) ) ) ) => ( calc ( bind $?gen48 ( delete-member$ $?gen47 ( create$ rule7-overruled $?gen46 ) ) ) ) ?gen43 <- ( confiscation ( negative-overruled $?gen48 ) )"))

([rule7-overruled] of derived-attribute-rule
   (pos-name rule7-overruled-gen364)
   (depends-on declare lc:case confiscation)
   (implies confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7] ) ) ) ?gen50 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( confiscation ( defendant ?Defendant ) ( negative-support $?gen46 ) ( negative-overruled $?gen47 & : ( not ( subseq-pos ( create$ rule7-overruled $?gen46 $$$ $?gen47 ) ) ) ) ( positive-defeated $?gen45 & : ( not ( member$ rule7 $?gen45 ) ) ) ) ( test ( eq ( class ?gen43 ) confiscation ) ) => ( calc ( bind $?gen48 ( create$ rule7-overruled $?gen46 $?gen47 ) ) ) ?gen43 <- ( confiscation ( negative-overruled $?gen48 ) )"))

([rule7-support] of derived-attribute-rule
   (pos-name rule7-support-gen366)
   (depends-on declare lc:case confiscation)
   (implies confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7] ) ) ) ?gen42 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ) ?gen43 <- ( confiscation ( defendant ?Defendant ) ( positive-support $?gen45 & : ( not ( subseq-pos ( create$ rule7 ?gen42 $$$ $?gen45 ) ) ) ) ) ( test ( eq ( class ?gen43 ) confiscation ) ) => ( calc ( bind $?gen48 ( create$ rule7 ?gen42 $?gen45 ) ) ) ?gen43 <- ( confiscation ( positive-support $?gen48 ) )"))

([rule2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule2-defeasibly-dot-gen368)
   (depends-on declare harm_done_with_weapon lc:case harm_done_with_weapon)
   (implies harm_done_with_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule2] ) ) ) ?gen34 <- ( harm_done_with_weapon ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule2 $? ) ) ( test ( eq ( class ?gen34 ) harm_done_with_weapon ) ) ( not ( and ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:harm_done \"yes\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen34 <- ( harm_done_with_weapon ( negative ~ 2 ) ( positive-overruled $?gen36 & : ( not ( member$ rule2 $?gen36 ) ) ) ) ) ) => ?gen34 <- ( harm_done_with_weapon ( positive 0 ) )"))

([rule2-defeasibly] of derived-attribute-rule
   (pos-name rule2-defeasibly-gen370)
   (depends-on declare lc:case harm_done_with_weapon)
   (implies harm_done_with_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule2] ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:harm_done \"yes\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen34 <- ( harm_done_with_weapon ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen36 & : ( not ( member$ rule2 $?gen36 ) ) ) ) ( test ( eq ( class ?gen34 ) harm_done_with_weapon ) ) => ?gen34 <- ( harm_done_with_weapon ( positive 1 ) ( positive-derivator rule2 ?gen41 ) )"))

([rule2-overruled-dot] of derived-attribute-rule
   (pos-name rule2-overruled-dot-gen372)
   (depends-on declare harm_done_with_weapon lc:case harm_done_with_weapon)
   (implies harm_done_with_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule2] ) ) ) ?gen34 <- ( harm_done_with_weapon ( defendant ?Defendant ) ( negative-support $?gen37 ) ( negative-overruled $?gen38 & : ( subseq-pos ( create$ rule2-overruled $?gen37 $$$ $?gen38 ) ) ) ) ( test ( eq ( class ?gen34 ) harm_done_with_weapon ) ) ( not ( and ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:harm_done \"yes\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen34 <- ( harm_done_with_weapon ( positive-defeated $?gen36 & : ( not ( member$ rule2 $?gen36 ) ) ) ) ) ) => ( calc ( bind $?gen39 ( delete-member$ $?gen38 ( create$ rule2-overruled $?gen37 ) ) ) ) ?gen34 <- ( harm_done_with_weapon ( negative-overruled $?gen39 ) )"))

([rule2-overruled] of derived-attribute-rule
   (pos-name rule2-overruled-gen374)
   (depends-on declare lc:case harm_done_with_weapon)
   (implies harm_done_with_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule2] ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:harm_done \"yes\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen34 <- ( harm_done_with_weapon ( defendant ?Defendant ) ( negative-support $?gen37 ) ( negative-overruled $?gen38 & : ( not ( subseq-pos ( create$ rule2-overruled $?gen37 $$$ $?gen38 ) ) ) ) ( positive-defeated $?gen36 & : ( not ( member$ rule2 $?gen36 ) ) ) ) ( test ( eq ( class ?gen34 ) harm_done_with_weapon ) ) => ( calc ( bind $?gen39 ( create$ rule2-overruled $?gen37 $?gen38 ) ) ) ?gen34 <- ( harm_done_with_weapon ( negative-overruled $?gen39 ) )"))

([rule2-support] of derived-attribute-rule
   (pos-name rule2-support-gen376)
   (depends-on declare lc:case harm_done_with_weapon)
   (implies harm_done_with_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule2] ) ) ) ?gen33 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:harm_done \"yes\" ) ) ?gen34 <- ( harm_done_with_weapon ( defendant ?Defendant ) ( positive-support $?gen36 & : ( not ( subseq-pos ( create$ rule2 ?gen33 $$$ $?gen36 ) ) ) ) ) ( test ( eq ( class ?gen34 ) harm_done_with_weapon ) ) => ( calc ( bind $?gen39 ( create$ rule2 ?gen33 $?gen36 ) ) ) ?gen34 <- ( harm_done_with_weapon ( positive-support $?gen39 ) )"))

([rule111-defeasibly-dot] of derived-attribute-rule
   (pos-name rule111-defeasibly-dot-gen378)
   (depends-on declare fine lc:case fine)
   (implies fine)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule111] ) ) ) ?gen25 <- ( fine ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule111 $? ) ) ( test ( eq ( class ?gen25 ) fine ) ) ( not ( and ?gen32 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ( positive ?gen31 & : ( >= ?gen31 1 ) ) ) ?gen25 <- ( fine ( negative ~ 2 ) ( positive-overruled $?gen27 & : ( not ( member$ rule111 $?gen27 ) ) ) ) ) ) => ?gen25 <- ( fine ( positive 0 ) )"))

([rule111-defeasibly] of derived-attribute-rule
   (pos-name rule111-defeasibly-gen380)
   (depends-on declare lc:case fine)
   (implies fine)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule111] ) ) ) ?gen32 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ( positive ?gen31 & : ( >= ?gen31 1 ) ) ) ?gen25 <- ( fine ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen27 & : ( not ( member$ rule111 $?gen27 ) ) ) ) ( test ( eq ( class ?gen25 ) fine ) ) => ?gen25 <- ( fine ( positive 1 ) ( positive-derivator rule111 ?gen32 ) )"))

([rule111-overruled-dot] of derived-attribute-rule
   (pos-name rule111-overruled-dot-gen382)
   (depends-on declare fine lc:case fine)
   (implies fine)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule111] ) ) ) ?gen25 <- ( fine ( defendant ?Defendant ) ( negative-support $?gen28 ) ( negative-overruled $?gen29 & : ( subseq-pos ( create$ rule111-overruled $?gen28 $$$ $?gen29 ) ) ) ) ( test ( eq ( class ?gen25 ) fine ) ) ( not ( and ?gen32 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ( positive ?gen31 & : ( >= ?gen31 1 ) ) ) ?gen25 <- ( fine ( positive-defeated $?gen27 & : ( not ( member$ rule111 $?gen27 ) ) ) ) ) ) => ( calc ( bind $?gen30 ( delete-member$ $?gen29 ( create$ rule111-overruled $?gen28 ) ) ) ) ?gen25 <- ( fine ( negative-overruled $?gen30 ) )"))

([rule111-overruled] of derived-attribute-rule
   (pos-name rule111-overruled-gen384)
   (depends-on declare lc:case fine)
   (implies fine)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule111] ) ) ) ?gen32 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ( positive ?gen31 & : ( >= ?gen31 1 ) ) ) ?gen25 <- ( fine ( defendant ?Defendant ) ( negative-support $?gen28 ) ( negative-overruled $?gen29 & : ( not ( subseq-pos ( create$ rule111-overruled $?gen28 $$$ $?gen29 ) ) ) ) ( positive-defeated $?gen27 & : ( not ( member$ rule111 $?gen27 ) ) ) ) ( test ( eq ( class ?gen25 ) fine ) ) => ( calc ( bind $?gen30 ( create$ rule111-overruled $?gen28 $?gen29 ) ) ) ?gen25 <- ( fine ( negative-overruled $?gen30 ) )"))

([rule111-support] of derived-attribute-rule
   (pos-name rule111-support-gen386)
   (depends-on declare lc:case fine)
   (implies fine)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule111] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ) ?gen25 <- ( fine ( defendant ?Defendant ) ( positive-support $?gen27 & : ( not ( subseq-pos ( create$ rule111 ?gen24 $$$ $?gen27 ) ) ) ) ) ( test ( eq ( class ?gen25 ) fine ) ) => ( calc ( bind $?gen30 ( create$ rule111 ?gen24 $?gen27 ) ) ) ?gen25 <- ( fine ( positive-support $?gen30 ) )"))

([rule1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule1-defeasibly-dot-gen388)
   (depends-on declare jail_3_months lc:case jail_3_months)
   (implies jail_3_months)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule1] ) ) ) ?gen16 <- ( jail_3_months ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule1 $? ) ) ( test ( eq ( class ?gen16 ) jail_3_months ) ) ( not ( and ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( jail_3_months ( negative ~ 2 ) ( positive-overruled $?gen18 & : ( not ( member$ rule1 $?gen18 ) ) ) ) ) ) => ?gen16 <- ( jail_3_months ( positive 0 ) )"))

([rule1-defeasibly] of derived-attribute-rule
   (pos-name rule1-defeasibly-gen390)
   (depends-on declare lc:case jail_3_months)
   (implies jail_3_months)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule1] ) ) ) ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( jail_3_months ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen18 & : ( not ( member$ rule1 $?gen18 ) ) ) ) ( test ( eq ( class ?gen16 ) jail_3_months ) ) => ?gen16 <- ( jail_3_months ( positive 1 ) ( positive-derivator rule1 ?gen23 ) )"))

([rule1-overruled-dot] of derived-attribute-rule
   (pos-name rule1-overruled-dot-gen392)
   (depends-on declare jail_3_months lc:case jail_3_months)
   (implies jail_3_months)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule1] ) ) ) ?gen16 <- ( jail_3_months ( defendant ?Defendant ) ( negative-support $?gen19 ) ( negative-overruled $?gen20 & : ( subseq-pos ( create$ rule1-overruled $?gen19 $$$ $?gen20 ) ) ) ) ( test ( eq ( class ?gen16 ) jail_3_months ) ) ( not ( and ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( jail_3_months ( positive-defeated $?gen18 & : ( not ( member$ rule1 $?gen18 ) ) ) ) ) ) => ( calc ( bind $?gen21 ( delete-member$ $?gen20 ( create$ rule1-overruled $?gen19 ) ) ) ) ?gen16 <- ( jail_3_months ( negative-overruled $?gen21 ) )"))

([rule1-overruled] of derived-attribute-rule
   (pos-name rule1-overruled-gen394)
   (depends-on declare lc:case jail_3_months)
   (implies jail_3_months)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule1] ) ) ) ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( jail_3_months ( defendant ?Defendant ) ( negative-support $?gen19 ) ( negative-overruled $?gen20 & : ( not ( subseq-pos ( create$ rule1-overruled $?gen19 $$$ $?gen20 ) ) ) ) ( positive-defeated $?gen18 & : ( not ( member$ rule1 $?gen18 ) ) ) ) ( test ( eq ( class ?gen16 ) jail_3_months ) ) => ( calc ( bind $?gen21 ( create$ rule1-overruled $?gen19 $?gen20 ) ) ) ?gen16 <- ( jail_3_months ( negative-overruled $?gen21 ) )"))

([rule1-support] of derived-attribute-rule
   (pos-name rule1-support-gen396)
   (depends-on declare lc:case jail_3_months)
   (implies jail_3_months)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule1] ) ) ) ?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ) ?gen16 <- ( jail_3_months ( defendant ?Defendant ) ( positive-support $?gen18 & : ( not ( subseq-pos ( create$ rule1 ?gen15 $$$ $?gen18 ) ) ) ) ) ( test ( eq ( class ?gen16 ) jail_3_months ) ) => ( calc ( bind $?gen21 ( create$ rule1 ?gen15 $?gen18 ) ) ) ?gen16 <- ( jail_3_months ( positive-support $?gen21 ) )"))

([pen18-deductive] of ntm-deductive-rule
   (pos-name pen18-deductive-gen207)
   (depends-on fine to_pay_min3)
   (implies to_pay_min3)
   (deductive-rule "?gen180 <- ( fine ( defendant ?Defendant ) ) ( not ( to_pay_min3 ( value 30 ) ) ) => ( to_pay_min3 ( value 30 ) )")
   (production-rule "( defrule pen18-deductive-gen207 ( declare ( salience ( calc-salience to_pay_min3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen180 ) ( is-a fine ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min3 ) ( value 30 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min3 30 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min3 30 ) ) ) ( make-instance ?oid of to_pay_min3 ( value 30 ) ) )")
   (derived-class to_pay_min3))

([pen17-deductive] of ntm-deductive-rule
   (pos-name pen17-deductive-gen206)
   (depends-on fine to_pay_max3)
   (implies to_pay_max3)
   (deductive-rule "?gen171 <- ( fine ( defendant ?Defendant ) ) ( not ( to_pay_max3 ( value 500 ) ) ) => ( to_pay_max3 ( value 500 ) )")
   (production-rule "( defrule pen17-deductive-gen206 ( declare ( salience ( calc-salience to_pay_max3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen171 ) ( is-a fine ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max3 ) ( value 500 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max3 500 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max3 500 ) ) ) ( make-instance ?oid of to_pay_max3 ( value 500 ) ) )")
   (derived-class to_pay_max3))

([pen16-deductive] of ntm-deductive-rule
   (pos-name pen16-deductive-gen205)
   (depends-on harm_done_with_weapon jail_3_year)
   (implies jail_3_year)
   (deductive-rule "?gen162 <- ( harm_done_with_weapon ( defendant ?Defendant ) ) ( not ( jail_3_year ( value 3 ) ) ) => ( jail_3_year ( value 3 ) )")
   (production-rule "( defrule pen16-deductive-gen205 ( declare ( salience ( calc-salience jail_3_year ) ) ) ( run-deductive-rules ) ( object ( name ?gen162 ) ( is-a harm_done_with_weapon ) ( defendant ?Defendant ) ) ( not ( object ( is-a jail_3_year ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat jail_3_year 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat jail_3_year 3 ) ) ) ( make-instance ?oid of jail_3_year ( value 3 ) ) )")
   (derived-class jail_3_year))

([pen15-deductive] of ntm-deductive-rule
   (pos-name pen15-deductive-gen204)
   (depends-on money to_pay_min2)
   (implies to_pay_min2)
   (deductive-rule "?gen153 <- ( money ( defendant ?Defendant ) ) ( not ( to_pay_min2 ( value 30 ) ) ) => ( to_pay_min2 ( value 30 ) )")
   (production-rule "( defrule pen15-deductive-gen204 ( declare ( salience ( calc-salience to_pay_min2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen153 ) ( is-a money ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min2 ) ( value 30 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min2 30 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min2 30 ) ) ) ( make-instance ?oid of to_pay_min2 ( value 30 ) ) )")
   (derived-class to_pay_min2))

([pen14-deductive] of ntm-deductive-rule
   (pos-name pen14-deductive-gen203)
   (depends-on money to_pay_max2)
   (implies to_pay_max2)
   (deductive-rule "?gen144 <- ( money ( defendant ?Defendant ) ) ( not ( to_pay_max2 ( value 500 ) ) ) => ( to_pay_max2 ( value 500 ) )")
   (production-rule "( defrule pen14-deductive-gen203 ( declare ( salience ( calc-salience to_pay_max2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen144 ) ( is-a money ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max2 ) ( value 500 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max2 500 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max2 500 ) ) ) ( make-instance ?oid of to_pay_max2 ( value 500 ) ) )")
   (derived-class to_pay_max2))

([pen13-deductive] of ntm-deductive-rule
   (pos-name pen13-deductive-gen202)
   (depends-on is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (deductive-rule "?gen135 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ) ( not ( to_pay_min ( value 30 ) ) ) => ( to_pay_min ( value 30 ) )")
   (production-rule "( defrule pen13-deductive-gen202 ( declare ( salience ( calc-salience to_pay_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen135 ) ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min ) ( value 30 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min 30 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min 30 ) ) ) ( make-instance ?oid of to_pay_min ( value 30 ) ) )")
   (derived-class to_pay_min))

([pen12-deductive] of ntm-deductive-rule
   (pos-name pen12-deductive-gen201)
   (depends-on is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (deductive-rule "?gen126 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ) ( not ( to_pay_max ( value 500 ) ) ) => ( to_pay_max ( value 500 ) )")
   (production-rule "( defrule pen12-deductive-gen201 ( declare ( salience ( calc-salience to_pay_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen126 ) ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max ) ( value 500 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max 500 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max 500 ) ) ) ( make-instance ?oid of to_pay_max ( value 500 ) ) )")
   (derived-class to_pay_max))

([pen11-deductive] of ntm-deductive-rule
   (pos-name pen11-deductive-gen200)
   (depends-on recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (deductive-rule "?gen117 <- ( recommend_increased_penalty ( defendant ?Defendant ) ) ( not ( to_increase_penalty ( value true ) ) ) => ( to_increase_penalty ( value true ) )")
   (production-rule "( defrule pen11-deductive-gen200 ( declare ( salience ( calc-salience to_increase_penalty ) ) ) ( run-deductive-rules ) ( object ( name ?gen117 ) ( is-a recommend_increased_penalty ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_increase_penalty ) ( value true ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_increase_penalty true ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_increase_penalty true ) ) ) ( make-instance ?oid of to_increase_penalty ( value true ) ) )")
   (derived-class to_increase_penalty))

([pen10-deductive] of ntm-deductive-rule
   (pos-name pen10-deductive-gen199)
   (depends-on recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (deductive-rule "?gen108 <- ( recommend_fine_reduction ( defendant ?Defendant ) ) ( not ( to_pay_less ( value true ) ) ) => ( to_pay_less ( value true ) )")
   (production-rule "( defrule pen10-deductive-gen199 ( declare ( salience ( calc-salience to_pay_less ) ) ) ( run-deductive-rules ) ( object ( name ?gen108 ) ( is-a recommend_fine_reduction ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_less ) ( value true ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_less true ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_less true ) ) ) ( make-instance ?oid of to_pay_less ( value true ) ) )")
   (derived-class to_pay_less))

([pen7-deductive] of ntm-deductive-rule
   (pos-name pen7-deductive-gen198)
   (depends-on confiscation confiscate_weapon)
   (implies confiscate_weapon)
   (deductive-rule "?gen99 <- ( confiscation ( defendant ?Defendant ) ) ( not ( confiscate_weapon ( value true ) ) ) => ( confiscate_weapon ( value true ) )")
   (production-rule "( defrule pen7-deductive-gen198 ( declare ( salience ( calc-salience confiscate_weapon ) ) ) ( run-deductive-rules ) ( object ( name ?gen99 ) ( is-a confiscation ) ( defendant ?Defendant ) ) ( not ( object ( is-a confiscate_weapon ) ( value true ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat confiscate_weapon true ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat confiscate_weapon true ) ) ) ( make-instance ?oid of confiscate_weapon ( value true ) ) )")
   (derived-class confiscate_weapon))

([pen1-deductive] of ntm-deductive-rule
   (pos-name pen1-deductive-gen197)
   (depends-on jail_3_months 30_imprisonment)
   (implies 30_imprisonment)
   (deductive-rule "?gen90 <- ( jail_3_months ( defendant ?Defendant ) ) ( not ( 30_imprisonment ( value 30 ) ) ) => ( 30_imprisonment ( value 30 ) )")
   (production-rule "( defrule pen1-deductive-gen197 ( declare ( salience ( calc-salience 30_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen90 ) ( is-a jail_3_months ) ( defendant ?Defendant ) ) ( not ( object ( is-a 30_imprisonment ) ( value 30 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat 30_imprisonment 30 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat 30_imprisonment 30 ) ) ) ( make-instance ?oid of 30_imprisonment ( value 30 ) ) )")
   (derived-class 30_imprisonment))

([rule11-deductive] of ntm-deductive-rule
   (pos-name rule11-deductive-gen196)
   (depends-on lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (deductive-rule "?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ) ( not ( is_high_category_weapon_in_public ( defendant ?Defendant ) ) ) => ( is_high_category_weapon_in_public ( defendant ?Defendant ) )")
   (production-rule "( defrule rule11-deductive-gen196 ( declare ( salience ( calc-salience is_high_category_weapon_in_public ) ) ) ( run-deductive-rules ) ( object ( name ?gen81 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ) ( not ( object ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_high_category_weapon_in_public ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_high_category_weapon_in_public ?Defendant ) ) ) ( make-instance ?oid of is_high_category_weapon_in_public ( defendant ?Defendant ) ) )")
   (derived-class is_high_category_weapon_in_public))

([rule10-deductive] of ntm-deductive-rule
   (pos-name rule10-deductive-gen195)
   (depends-on lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (deductive-rule "?gen72 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ) ( not ( recommend_increased_penalty ( defendant ?Defendant ) ) ) => ( recommend_increased_penalty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule10-deductive-gen195 ( declare ( salience ( calc-salience recommend_increased_penalty ) ) ) ( run-deductive-rules ) ( object ( name ?gen72 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ) ( not ( object ( is-a recommend_increased_penalty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat recommend_increased_penalty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat recommend_increased_penalty ?Defendant ) ) ) ( make-instance ?oid of recommend_increased_penalty ( defendant ?Defendant ) ) )")
   (derived-class recommend_increased_penalty))

([rule9-deductive] of ntm-deductive-rule
   (pos-name rule9-deductive-gen194)
   (depends-on lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (deductive-rule "?gen63 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ) ( not ( recommend_fine_reduction ( defendant ?Defendant ) ) ) => ( recommend_fine_reduction ( defendant ?Defendant ) )")
   (production-rule "( defrule rule9-deductive-gen194 ( declare ( salience ( calc-salience recommend_fine_reduction ) ) ) ( run-deductive-rules ) ( object ( name ?gen63 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ) ( not ( object ( is-a recommend_fine_reduction ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat recommend_fine_reduction ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat recommend_fine_reduction ?Defendant ) ) ) ( make-instance ?oid of recommend_fine_reduction ( defendant ?Defendant ) ) )")
   (derived-class recommend_fine_reduction))

([rule8-deductive] of ntm-deductive-rule
   (pos-name rule8-deductive-gen193)
   (depends-on lc:case lc:case money)
   (implies money)
   (deductive-rule "?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ) ?gen52 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ) ( not ( money ( defendant ?Defendant ) ) ) => ( money ( defendant ?Defendant ) )")
   (production-rule "( defrule rule8-deductive-gen193 ( declare ( salience ( calc-salience money ) ) ) ( run-deductive-rules ) ( object ( name ?gen51 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ) ( object ( name ?gen52 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ) ( not ( object ( is-a money ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat money ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat money ?Defendant ) ) ) ( make-instance ?oid of money ( defendant ?Defendant ) ) )")
   (derived-class money))

([rule7-deductive] of ntm-deductive-rule
   (pos-name rule7-deductive-gen192)
   (depends-on lc:case confiscation)
   (implies confiscation)
   (deductive-rule "?gen42 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ) ( not ( confiscation ( defendant ?Defendant ) ) ) => ( confiscation ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7-deductive-gen192 ( declare ( salience ( calc-salience confiscation ) ) ) ( run-deductive-rules ) ( object ( name ?gen42 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ) ( not ( object ( is-a confiscation ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat confiscation ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat confiscation ?Defendant ) ) ) ( make-instance ?oid of confiscation ( defendant ?Defendant ) ) )")
   (derived-class confiscation))

([rule2-deductive] of ntm-deductive-rule
   (pos-name rule2-deductive-gen191)
   (depends-on lc:case harm_done_with_weapon)
   (implies harm_done_with_weapon)
   (deductive-rule "?gen33 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:harm_done \"yes\" ) ) ( not ( harm_done_with_weapon ( defendant ?Defendant ) ) ) => ( harm_done_with_weapon ( defendant ?Defendant ) )")
   (production-rule "( defrule rule2-deductive-gen191 ( declare ( salience ( calc-salience harm_done_with_weapon ) ) ) ( run-deductive-rules ) ( object ( name ?gen33 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:harm_done \"yes\" ) ) ( not ( object ( is-a harm_done_with_weapon ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat harm_done_with_weapon ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat harm_done_with_weapon ?Defendant ) ) ) ( make-instance ?oid of harm_done_with_weapon ( defendant ?Defendant ) ) )")
   (derived-class harm_done_with_weapon))

([rule111-deductive] of ntm-deductive-rule
   (pos-name rule111-deductive-gen190)
   (depends-on lc:case fine)
   (implies fine)
   (deductive-rule "?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ) ( not ( fine ( defendant ?Defendant ) ) ) => ( fine ( defendant ?Defendant ) )")
   (production-rule "( defrule rule111-deductive-gen190 ( declare ( salience ( calc-salience fine ) ) ) ( run-deductive-rules ) ( object ( name ?gen24 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ) ( not ( object ( is-a fine ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat fine ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat fine ?Defendant ) ) ) ( make-instance ?oid of fine ( defendant ?Defendant ) ) )")
   (derived-class fine))

([rule1-deductive] of ntm-deductive-rule
   (pos-name rule1-deductive-gen189)
   (depends-on lc:case jail_3_months)
   (implies jail_3_months)
   (deductive-rule "?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ) ( not ( jail_3_months ( defendant ?Defendant ) ) ) => ( jail_3_months ( defendant ?Defendant ) )")
   (production-rule "( defrule rule1-deductive-gen189 ( declare ( salience ( calc-salience jail_3_months ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ) ( not ( object ( is-a jail_3_months ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat jail_3_months ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat jail_3_months ?Defendant ) ) ) ( make-instance ?oid of jail_3_months ( defendant ?Defendant ) ) )")
   (derived-class jail_3_months))

