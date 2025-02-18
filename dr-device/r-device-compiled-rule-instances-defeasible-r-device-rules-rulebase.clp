([pen18-defeasibly-dot] of derived-attribute-rule
   (pos-name pen18-defeasibly-dot-gen205)
   (depends-on declare to_pay_min3 fine to_pay_min3)
   (implies to_pay_min3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen18] ) ) ) ?gen178 <- ( to_pay_min3 ( value 30 ) ( positive 1 ) ( positive-derivator pen18 $? ) ) ( test ( eq ( class ?gen178 ) to_pay_min3 ) ) ( not ( and ?gen185 <- ( fine ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( to_pay_min3 ( negative ~ 2 ) ( positive-overruled $?gen180 & : ( not ( member$ pen18 $?gen180 ) ) ) ) ) ) => ?gen178 <- ( to_pay_min3 ( positive 0 ) )"))

([pen18-defeasibly] of derived-attribute-rule
   (pos-name pen18-defeasibly-gen207)
   (depends-on declare fine to_pay_min3)
   (implies to_pay_min3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen18] ) ) ) ?gen185 <- ( fine ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( to_pay_min3 ( value 30 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen180 & : ( not ( member$ pen18 $?gen180 ) ) ) ) ( test ( eq ( class ?gen178 ) to_pay_min3 ) ) => ?gen178 <- ( to_pay_min3 ( positive 1 ) ( positive-derivator pen18 ?gen185 ) )"))

([pen18-overruled-dot] of derived-attribute-rule
   (pos-name pen18-overruled-dot-gen209)
   (depends-on declare to_pay_min3 fine to_pay_min3)
   (implies to_pay_min3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen18] ) ) ) ?gen178 <- ( to_pay_min3 ( value 30 ) ( negative-support $?gen181 ) ( negative-overruled $?gen182 & : ( subseq-pos ( create$ pen18-overruled $?gen181 $$$ $?gen182 ) ) ) ) ( test ( eq ( class ?gen178 ) to_pay_min3 ) ) ( not ( and ?gen185 <- ( fine ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( to_pay_min3 ( positive-defeated $?gen180 & : ( not ( member$ pen18 $?gen180 ) ) ) ) ) ) => ( calc ( bind $?gen183 ( delete-member$ $?gen182 ( create$ pen18-overruled $?gen181 ) ) ) ) ?gen178 <- ( to_pay_min3 ( negative-overruled $?gen183 ) )"))

([pen18-overruled] of derived-attribute-rule
   (pos-name pen18-overruled-gen211)
   (depends-on declare fine to_pay_min3)
   (implies to_pay_min3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen18] ) ) ) ?gen185 <- ( fine ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( to_pay_min3 ( value 30 ) ( negative-support $?gen181 ) ( negative-overruled $?gen182 & : ( not ( subseq-pos ( create$ pen18-overruled $?gen181 $$$ $?gen182 ) ) ) ) ( positive-defeated $?gen180 & : ( not ( member$ pen18 $?gen180 ) ) ) ) ( test ( eq ( class ?gen178 ) to_pay_min3 ) ) => ( calc ( bind $?gen183 ( create$ pen18-overruled $?gen181 $?gen182 ) ) ) ?gen178 <- ( to_pay_min3 ( negative-overruled $?gen183 ) )"))

([pen18-support] of derived-attribute-rule
   (pos-name pen18-support-gen213)
   (depends-on declare fine to_pay_min3)
   (implies to_pay_min3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen18] ) ) ) ?gen177 <- ( fine ( defendant ?Defendant ) ) ?gen178 <- ( to_pay_min3 ( value 30 ) ( positive-support $?gen180 & : ( not ( subseq-pos ( create$ pen18 ?gen177 $$$ $?gen180 ) ) ) ) ) ( test ( eq ( class ?gen178 ) to_pay_min3 ) ) => ( calc ( bind $?gen183 ( create$ pen18 ?gen177 $?gen180 ) ) ) ?gen178 <- ( to_pay_min3 ( positive-support $?gen183 ) )"))

([pen17-defeasibly-dot] of derived-attribute-rule
   (pos-name pen17-defeasibly-dot-gen215)
   (depends-on declare to_pay_max3 fine to_pay_max3)
   (implies to_pay_max3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen17] ) ) ) ?gen169 <- ( to_pay_max3 ( value 500 ) ( positive 1 ) ( positive-derivator pen17 $? ) ) ( test ( eq ( class ?gen169 ) to_pay_max3 ) ) ( not ( and ?gen176 <- ( fine ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( to_pay_max3 ( negative ~ 2 ) ( positive-overruled $?gen171 & : ( not ( member$ pen17 $?gen171 ) ) ) ) ) ) => ?gen169 <- ( to_pay_max3 ( positive 0 ) )"))

([pen17-defeasibly] of derived-attribute-rule
   (pos-name pen17-defeasibly-gen217)
   (depends-on declare fine to_pay_max3)
   (implies to_pay_max3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen17] ) ) ) ?gen176 <- ( fine ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( to_pay_max3 ( value 500 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen171 & : ( not ( member$ pen17 $?gen171 ) ) ) ) ( test ( eq ( class ?gen169 ) to_pay_max3 ) ) => ?gen169 <- ( to_pay_max3 ( positive 1 ) ( positive-derivator pen17 ?gen176 ) )"))

([pen17-overruled-dot] of derived-attribute-rule
   (pos-name pen17-overruled-dot-gen219)
   (depends-on declare to_pay_max3 fine to_pay_max3)
   (implies to_pay_max3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen17] ) ) ) ?gen169 <- ( to_pay_max3 ( value 500 ) ( negative-support $?gen172 ) ( negative-overruled $?gen173 & : ( subseq-pos ( create$ pen17-overruled $?gen172 $$$ $?gen173 ) ) ) ) ( test ( eq ( class ?gen169 ) to_pay_max3 ) ) ( not ( and ?gen176 <- ( fine ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( to_pay_max3 ( positive-defeated $?gen171 & : ( not ( member$ pen17 $?gen171 ) ) ) ) ) ) => ( calc ( bind $?gen174 ( delete-member$ $?gen173 ( create$ pen17-overruled $?gen172 ) ) ) ) ?gen169 <- ( to_pay_max3 ( negative-overruled $?gen174 ) )"))

([pen17-overruled] of derived-attribute-rule
   (pos-name pen17-overruled-gen221)
   (depends-on declare fine to_pay_max3)
   (implies to_pay_max3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen17] ) ) ) ?gen176 <- ( fine ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( to_pay_max3 ( value 500 ) ( negative-support $?gen172 ) ( negative-overruled $?gen173 & : ( not ( subseq-pos ( create$ pen17-overruled $?gen172 $$$ $?gen173 ) ) ) ) ( positive-defeated $?gen171 & : ( not ( member$ pen17 $?gen171 ) ) ) ) ( test ( eq ( class ?gen169 ) to_pay_max3 ) ) => ( calc ( bind $?gen174 ( create$ pen17-overruled $?gen172 $?gen173 ) ) ) ?gen169 <- ( to_pay_max3 ( negative-overruled $?gen174 ) )"))

([pen17-support] of derived-attribute-rule
   (pos-name pen17-support-gen223)
   (depends-on declare fine to_pay_max3)
   (implies to_pay_max3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen17] ) ) ) ?gen168 <- ( fine ( defendant ?Defendant ) ) ?gen169 <- ( to_pay_max3 ( value 500 ) ( positive-support $?gen171 & : ( not ( subseq-pos ( create$ pen17 ?gen168 $$$ $?gen171 ) ) ) ) ) ( test ( eq ( class ?gen169 ) to_pay_max3 ) ) => ( calc ( bind $?gen174 ( create$ pen17 ?gen168 $?gen171 ) ) ) ?gen169 <- ( to_pay_max3 ( positive-support $?gen174 ) )"))

([pen16-defeasibly-dot] of derived-attribute-rule
   (pos-name pen16-defeasibly-dot-gen225)
   (depends-on declare jail_3_year harm_done_with_weapon jail_3_year)
   (implies jail_3_year)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen16] ) ) ) ?gen160 <- ( jail_3_year ( value 3 ) ( positive 1 ) ( positive-derivator pen16 $? ) ) ( test ( eq ( class ?gen160 ) jail_3_year ) ) ( not ( and ?gen167 <- ( harm_done_with_weapon ( defendant ?Defendant ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( jail_3_year ( negative ~ 2 ) ( positive-overruled $?gen162 & : ( not ( member$ pen16 $?gen162 ) ) ) ) ) ) => ?gen160 <- ( jail_3_year ( positive 0 ) )"))

([pen16-defeasibly] of derived-attribute-rule
   (pos-name pen16-defeasibly-gen227)
   (depends-on declare harm_done_with_weapon jail_3_year)
   (implies jail_3_year)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen16] ) ) ) ?gen167 <- ( harm_done_with_weapon ( defendant ?Defendant ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( jail_3_year ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen162 & : ( not ( member$ pen16 $?gen162 ) ) ) ) ( test ( eq ( class ?gen160 ) jail_3_year ) ) => ?gen160 <- ( jail_3_year ( positive 1 ) ( positive-derivator pen16 ?gen167 ) )"))

([pen16-overruled-dot] of derived-attribute-rule
   (pos-name pen16-overruled-dot-gen229)
   (depends-on declare jail_3_year harm_done_with_weapon jail_3_year)
   (implies jail_3_year)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen16] ) ) ) ?gen160 <- ( jail_3_year ( value 3 ) ( negative-support $?gen163 ) ( negative-overruled $?gen164 & : ( subseq-pos ( create$ pen16-overruled $?gen163 $$$ $?gen164 ) ) ) ) ( test ( eq ( class ?gen160 ) jail_3_year ) ) ( not ( and ?gen167 <- ( harm_done_with_weapon ( defendant ?Defendant ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( jail_3_year ( positive-defeated $?gen162 & : ( not ( member$ pen16 $?gen162 ) ) ) ) ) ) => ( calc ( bind $?gen165 ( delete-member$ $?gen164 ( create$ pen16-overruled $?gen163 ) ) ) ) ?gen160 <- ( jail_3_year ( negative-overruled $?gen165 ) )"))

([pen16-overruled] of derived-attribute-rule
   (pos-name pen16-overruled-gen231)
   (depends-on declare harm_done_with_weapon jail_3_year)
   (implies jail_3_year)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen16] ) ) ) ?gen167 <- ( harm_done_with_weapon ( defendant ?Defendant ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( jail_3_year ( value 3 ) ( negative-support $?gen163 ) ( negative-overruled $?gen164 & : ( not ( subseq-pos ( create$ pen16-overruled $?gen163 $$$ $?gen164 ) ) ) ) ( positive-defeated $?gen162 & : ( not ( member$ pen16 $?gen162 ) ) ) ) ( test ( eq ( class ?gen160 ) jail_3_year ) ) => ( calc ( bind $?gen165 ( create$ pen16-overruled $?gen163 $?gen164 ) ) ) ?gen160 <- ( jail_3_year ( negative-overruled $?gen165 ) )"))

([pen16-support] of derived-attribute-rule
   (pos-name pen16-support-gen233)
   (depends-on declare harm_done_with_weapon jail_3_year)
   (implies jail_3_year)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen16] ) ) ) ?gen159 <- ( harm_done_with_weapon ( defendant ?Defendant ) ) ?gen160 <- ( jail_3_year ( value 3 ) ( positive-support $?gen162 & : ( not ( subseq-pos ( create$ pen16 ?gen159 $$$ $?gen162 ) ) ) ) ) ( test ( eq ( class ?gen160 ) jail_3_year ) ) => ( calc ( bind $?gen165 ( create$ pen16 ?gen159 $?gen162 ) ) ) ?gen160 <- ( jail_3_year ( positive-support $?gen165 ) )"))

([pen15-defeasibly-dot] of derived-attribute-rule
   (pos-name pen15-defeasibly-dot-gen235)
   (depends-on declare to_pay_min2 money to_pay_min2)
   (implies to_pay_min2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen15] ) ) ) ?gen151 <- ( to_pay_min2 ( value 30 ) ( positive 1 ) ( positive-derivator pen15 $? ) ) ( test ( eq ( class ?gen151 ) to_pay_min2 ) ) ( not ( and ?gen158 <- ( money ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( to_pay_min2 ( negative ~ 2 ) ( positive-overruled $?gen153 & : ( not ( member$ pen15 $?gen153 ) ) ) ) ) ) => ?gen151 <- ( to_pay_min2 ( positive 0 ) )"))

([pen15-defeasibly] of derived-attribute-rule
   (pos-name pen15-defeasibly-gen237)
   (depends-on declare money to_pay_min2)
   (implies to_pay_min2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen15] ) ) ) ?gen158 <- ( money ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( to_pay_min2 ( value 30 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen153 & : ( not ( member$ pen15 $?gen153 ) ) ) ) ( test ( eq ( class ?gen151 ) to_pay_min2 ) ) => ?gen151 <- ( to_pay_min2 ( positive 1 ) ( positive-derivator pen15 ?gen158 ) )"))

([pen15-overruled-dot] of derived-attribute-rule
   (pos-name pen15-overruled-dot-gen239)
   (depends-on declare to_pay_min2 money to_pay_min2)
   (implies to_pay_min2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen15] ) ) ) ?gen151 <- ( to_pay_min2 ( value 30 ) ( negative-support $?gen154 ) ( negative-overruled $?gen155 & : ( subseq-pos ( create$ pen15-overruled $?gen154 $$$ $?gen155 ) ) ) ) ( test ( eq ( class ?gen151 ) to_pay_min2 ) ) ( not ( and ?gen158 <- ( money ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( to_pay_min2 ( positive-defeated $?gen153 & : ( not ( member$ pen15 $?gen153 ) ) ) ) ) ) => ( calc ( bind $?gen156 ( delete-member$ $?gen155 ( create$ pen15-overruled $?gen154 ) ) ) ) ?gen151 <- ( to_pay_min2 ( negative-overruled $?gen156 ) )"))

([pen15-overruled] of derived-attribute-rule
   (pos-name pen15-overruled-gen241)
   (depends-on declare money to_pay_min2)
   (implies to_pay_min2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen15] ) ) ) ?gen158 <- ( money ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( to_pay_min2 ( value 30 ) ( negative-support $?gen154 ) ( negative-overruled $?gen155 & : ( not ( subseq-pos ( create$ pen15-overruled $?gen154 $$$ $?gen155 ) ) ) ) ( positive-defeated $?gen153 & : ( not ( member$ pen15 $?gen153 ) ) ) ) ( test ( eq ( class ?gen151 ) to_pay_min2 ) ) => ( calc ( bind $?gen156 ( create$ pen15-overruled $?gen154 $?gen155 ) ) ) ?gen151 <- ( to_pay_min2 ( negative-overruled $?gen156 ) )"))

([pen15-support] of derived-attribute-rule
   (pos-name pen15-support-gen243)
   (depends-on declare money to_pay_min2)
   (implies to_pay_min2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen15] ) ) ) ?gen150 <- ( money ( defendant ?Defendant ) ) ?gen151 <- ( to_pay_min2 ( value 30 ) ( positive-support $?gen153 & : ( not ( subseq-pos ( create$ pen15 ?gen150 $$$ $?gen153 ) ) ) ) ) ( test ( eq ( class ?gen151 ) to_pay_min2 ) ) => ( calc ( bind $?gen156 ( create$ pen15 ?gen150 $?gen153 ) ) ) ?gen151 <- ( to_pay_min2 ( positive-support $?gen156 ) )"))

([pen14-defeasibly-dot] of derived-attribute-rule
   (pos-name pen14-defeasibly-dot-gen245)
   (depends-on declare to_pay_max2 money to_pay_max2)
   (implies to_pay_max2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen14] ) ) ) ?gen142 <- ( to_pay_max2 ( value 500 ) ( positive 1 ) ( positive-derivator pen14 $? ) ) ( test ( eq ( class ?gen142 ) to_pay_max2 ) ) ( not ( and ?gen149 <- ( money ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( to_pay_max2 ( negative ~ 2 ) ( positive-overruled $?gen144 & : ( not ( member$ pen14 $?gen144 ) ) ) ) ) ) => ?gen142 <- ( to_pay_max2 ( positive 0 ) )"))

([pen14-defeasibly] of derived-attribute-rule
   (pos-name pen14-defeasibly-gen247)
   (depends-on declare money to_pay_max2)
   (implies to_pay_max2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen14] ) ) ) ?gen149 <- ( money ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( to_pay_max2 ( value 500 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen144 & : ( not ( member$ pen14 $?gen144 ) ) ) ) ( test ( eq ( class ?gen142 ) to_pay_max2 ) ) => ?gen142 <- ( to_pay_max2 ( positive 1 ) ( positive-derivator pen14 ?gen149 ) )"))

([pen14-overruled-dot] of derived-attribute-rule
   (pos-name pen14-overruled-dot-gen249)
   (depends-on declare to_pay_max2 money to_pay_max2)
   (implies to_pay_max2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen14] ) ) ) ?gen142 <- ( to_pay_max2 ( value 500 ) ( negative-support $?gen145 ) ( negative-overruled $?gen146 & : ( subseq-pos ( create$ pen14-overruled $?gen145 $$$ $?gen146 ) ) ) ) ( test ( eq ( class ?gen142 ) to_pay_max2 ) ) ( not ( and ?gen149 <- ( money ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( to_pay_max2 ( positive-defeated $?gen144 & : ( not ( member$ pen14 $?gen144 ) ) ) ) ) ) => ( calc ( bind $?gen147 ( delete-member$ $?gen146 ( create$ pen14-overruled $?gen145 ) ) ) ) ?gen142 <- ( to_pay_max2 ( negative-overruled $?gen147 ) )"))

([pen14-overruled] of derived-attribute-rule
   (pos-name pen14-overruled-gen251)
   (depends-on declare money to_pay_max2)
   (implies to_pay_max2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen14] ) ) ) ?gen149 <- ( money ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( to_pay_max2 ( value 500 ) ( negative-support $?gen145 ) ( negative-overruled $?gen146 & : ( not ( subseq-pos ( create$ pen14-overruled $?gen145 $$$ $?gen146 ) ) ) ) ( positive-defeated $?gen144 & : ( not ( member$ pen14 $?gen144 ) ) ) ) ( test ( eq ( class ?gen142 ) to_pay_max2 ) ) => ( calc ( bind $?gen147 ( create$ pen14-overruled $?gen145 $?gen146 ) ) ) ?gen142 <- ( to_pay_max2 ( negative-overruled $?gen147 ) )"))

([pen14-support] of derived-attribute-rule
   (pos-name pen14-support-gen253)
   (depends-on declare money to_pay_max2)
   (implies to_pay_max2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen14] ) ) ) ?gen141 <- ( money ( defendant ?Defendant ) ) ?gen142 <- ( to_pay_max2 ( value 500 ) ( positive-support $?gen144 & : ( not ( subseq-pos ( create$ pen14 ?gen141 $$$ $?gen144 ) ) ) ) ) ( test ( eq ( class ?gen142 ) to_pay_max2 ) ) => ( calc ( bind $?gen147 ( create$ pen14 ?gen141 $?gen144 ) ) ) ?gen142 <- ( to_pay_max2 ( positive-support $?gen147 ) )"))

([pen13-defeasibly-dot] of derived-attribute-rule
   (pos-name pen13-defeasibly-dot-gen255)
   (depends-on declare to_pay_min is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen13] ) ) ) ?gen133 <- ( to_pay_min ( value 30 ) ( positive 1 ) ( positive-derivator pen13 $? ) ) ( test ( eq ( class ?gen133 ) to_pay_min ) ) ( not ( and ?gen140 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( to_pay_min ( negative ~ 2 ) ( positive-overruled $?gen135 & : ( not ( member$ pen13 $?gen135 ) ) ) ) ) ) => ?gen133 <- ( to_pay_min ( positive 0 ) )"))

([pen13-defeasibly] of derived-attribute-rule
   (pos-name pen13-defeasibly-gen257)
   (depends-on declare is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen13] ) ) ) ?gen140 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( to_pay_min ( value 30 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen135 & : ( not ( member$ pen13 $?gen135 ) ) ) ) ( test ( eq ( class ?gen133 ) to_pay_min ) ) => ?gen133 <- ( to_pay_min ( positive 1 ) ( positive-derivator pen13 ?gen140 ) )"))

([pen13-overruled-dot] of derived-attribute-rule
   (pos-name pen13-overruled-dot-gen259)
   (depends-on declare to_pay_min is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen13] ) ) ) ?gen133 <- ( to_pay_min ( value 30 ) ( negative-support $?gen136 ) ( negative-overruled $?gen137 & : ( subseq-pos ( create$ pen13-overruled $?gen136 $$$ $?gen137 ) ) ) ) ( test ( eq ( class ?gen133 ) to_pay_min ) ) ( not ( and ?gen140 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( to_pay_min ( positive-defeated $?gen135 & : ( not ( member$ pen13 $?gen135 ) ) ) ) ) ) => ( calc ( bind $?gen138 ( delete-member$ $?gen137 ( create$ pen13-overruled $?gen136 ) ) ) ) ?gen133 <- ( to_pay_min ( negative-overruled $?gen138 ) )"))

([pen13-overruled] of derived-attribute-rule
   (pos-name pen13-overruled-gen261)
   (depends-on declare is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen13] ) ) ) ?gen140 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( to_pay_min ( value 30 ) ( negative-support $?gen136 ) ( negative-overruled $?gen137 & : ( not ( subseq-pos ( create$ pen13-overruled $?gen136 $$$ $?gen137 ) ) ) ) ( positive-defeated $?gen135 & : ( not ( member$ pen13 $?gen135 ) ) ) ) ( test ( eq ( class ?gen133 ) to_pay_min ) ) => ( calc ( bind $?gen138 ( create$ pen13-overruled $?gen136 $?gen137 ) ) ) ?gen133 <- ( to_pay_min ( negative-overruled $?gen138 ) )"))

([pen13-support] of derived-attribute-rule
   (pos-name pen13-support-gen263)
   (depends-on declare is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen13] ) ) ) ?gen132 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ) ?gen133 <- ( to_pay_min ( value 30 ) ( positive-support $?gen135 & : ( not ( subseq-pos ( create$ pen13 ?gen132 $$$ $?gen135 ) ) ) ) ) ( test ( eq ( class ?gen133 ) to_pay_min ) ) => ( calc ( bind $?gen138 ( create$ pen13 ?gen132 $?gen135 ) ) ) ?gen133 <- ( to_pay_min ( positive-support $?gen138 ) )"))

([pen12-defeasibly-dot] of derived-attribute-rule
   (pos-name pen12-defeasibly-dot-gen265)
   (depends-on declare to_pay_max is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen12] ) ) ) ?gen124 <- ( to_pay_max ( value 500 ) ( positive 1 ) ( positive-derivator pen12 $? ) ) ( test ( eq ( class ?gen124 ) to_pay_max ) ) ( not ( and ?gen131 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( to_pay_max ( negative ~ 2 ) ( positive-overruled $?gen126 & : ( not ( member$ pen12 $?gen126 ) ) ) ) ) ) => ?gen124 <- ( to_pay_max ( positive 0 ) )"))

([pen12-defeasibly] of derived-attribute-rule
   (pos-name pen12-defeasibly-gen267)
   (depends-on declare is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen12] ) ) ) ?gen131 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( to_pay_max ( value 500 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen126 & : ( not ( member$ pen12 $?gen126 ) ) ) ) ( test ( eq ( class ?gen124 ) to_pay_max ) ) => ?gen124 <- ( to_pay_max ( positive 1 ) ( positive-derivator pen12 ?gen131 ) )"))

([pen12-overruled-dot] of derived-attribute-rule
   (pos-name pen12-overruled-dot-gen269)
   (depends-on declare to_pay_max is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen12] ) ) ) ?gen124 <- ( to_pay_max ( value 500 ) ( negative-support $?gen127 ) ( negative-overruled $?gen128 & : ( subseq-pos ( create$ pen12-overruled $?gen127 $$$ $?gen128 ) ) ) ) ( test ( eq ( class ?gen124 ) to_pay_max ) ) ( not ( and ?gen131 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( to_pay_max ( positive-defeated $?gen126 & : ( not ( member$ pen12 $?gen126 ) ) ) ) ) ) => ( calc ( bind $?gen129 ( delete-member$ $?gen128 ( create$ pen12-overruled $?gen127 ) ) ) ) ?gen124 <- ( to_pay_max ( negative-overruled $?gen129 ) )"))

([pen12-overruled] of derived-attribute-rule
   (pos-name pen12-overruled-gen271)
   (depends-on declare is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen12] ) ) ) ?gen131 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( to_pay_max ( value 500 ) ( negative-support $?gen127 ) ( negative-overruled $?gen128 & : ( not ( subseq-pos ( create$ pen12-overruled $?gen127 $$$ $?gen128 ) ) ) ) ( positive-defeated $?gen126 & : ( not ( member$ pen12 $?gen126 ) ) ) ) ( test ( eq ( class ?gen124 ) to_pay_max ) ) => ( calc ( bind $?gen129 ( create$ pen12-overruled $?gen127 $?gen128 ) ) ) ?gen124 <- ( to_pay_max ( negative-overruled $?gen129 ) )"))

([pen12-support] of derived-attribute-rule
   (pos-name pen12-support-gen273)
   (depends-on declare is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen12] ) ) ) ?gen123 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ) ?gen124 <- ( to_pay_max ( value 500 ) ( positive-support $?gen126 & : ( not ( subseq-pos ( create$ pen12 ?gen123 $$$ $?gen126 ) ) ) ) ) ( test ( eq ( class ?gen124 ) to_pay_max ) ) => ( calc ( bind $?gen129 ( create$ pen12 ?gen123 $?gen126 ) ) ) ?gen124 <- ( to_pay_max ( positive-support $?gen129 ) )"))

([pen11-defeasibly-dot] of derived-attribute-rule
   (pos-name pen11-defeasibly-dot-gen275)
   (depends-on declare to_increase_penalty recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen11] ) ) ) ?gen115 <- ( to_increase_penalty ( value true ) ( positive 1 ) ( positive-derivator pen11 $? ) ) ( test ( eq ( class ?gen115 ) to_increase_penalty ) ) ( not ( and ?gen122 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen115 <- ( to_increase_penalty ( negative ~ 2 ) ( positive-overruled $?gen117 & : ( not ( member$ pen11 $?gen117 ) ) ) ) ) ) => ?gen115 <- ( to_increase_penalty ( positive 0 ) )"))

([pen11-defeasibly] of derived-attribute-rule
   (pos-name pen11-defeasibly-gen277)
   (depends-on declare recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen11] ) ) ) ?gen122 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen115 <- ( to_increase_penalty ( value true ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen117 & : ( not ( member$ pen11 $?gen117 ) ) ) ) ( test ( eq ( class ?gen115 ) to_increase_penalty ) ) => ?gen115 <- ( to_increase_penalty ( positive 1 ) ( positive-derivator pen11 ?gen122 ) )"))

([pen11-overruled-dot] of derived-attribute-rule
   (pos-name pen11-overruled-dot-gen279)
   (depends-on declare to_increase_penalty recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen11] ) ) ) ?gen115 <- ( to_increase_penalty ( value true ) ( negative-support $?gen118 ) ( negative-overruled $?gen119 & : ( subseq-pos ( create$ pen11-overruled $?gen118 $$$ $?gen119 ) ) ) ) ( test ( eq ( class ?gen115 ) to_increase_penalty ) ) ( not ( and ?gen122 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen115 <- ( to_increase_penalty ( positive-defeated $?gen117 & : ( not ( member$ pen11 $?gen117 ) ) ) ) ) ) => ( calc ( bind $?gen120 ( delete-member$ $?gen119 ( create$ pen11-overruled $?gen118 ) ) ) ) ?gen115 <- ( to_increase_penalty ( negative-overruled $?gen120 ) )"))

([pen11-overruled] of derived-attribute-rule
   (pos-name pen11-overruled-gen281)
   (depends-on declare recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen11] ) ) ) ?gen122 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen115 <- ( to_increase_penalty ( value true ) ( negative-support $?gen118 ) ( negative-overruled $?gen119 & : ( not ( subseq-pos ( create$ pen11-overruled $?gen118 $$$ $?gen119 ) ) ) ) ( positive-defeated $?gen117 & : ( not ( member$ pen11 $?gen117 ) ) ) ) ( test ( eq ( class ?gen115 ) to_increase_penalty ) ) => ( calc ( bind $?gen120 ( create$ pen11-overruled $?gen118 $?gen119 ) ) ) ?gen115 <- ( to_increase_penalty ( negative-overruled $?gen120 ) )"))

([pen11-support] of derived-attribute-rule
   (pos-name pen11-support-gen283)
   (depends-on declare recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen11] ) ) ) ?gen114 <- ( recommend_increased_penalty ( defendant ?Defendant ) ) ?gen115 <- ( to_increase_penalty ( value true ) ( positive-support $?gen117 & : ( not ( subseq-pos ( create$ pen11 ?gen114 $$$ $?gen117 ) ) ) ) ) ( test ( eq ( class ?gen115 ) to_increase_penalty ) ) => ( calc ( bind $?gen120 ( create$ pen11 ?gen114 $?gen117 ) ) ) ?gen115 <- ( to_increase_penalty ( positive-support $?gen120 ) )"))

([pen10-defeasibly-dot] of derived-attribute-rule
   (pos-name pen10-defeasibly-dot-gen285)
   (depends-on declare to_pay_less recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen10] ) ) ) ?gen106 <- ( to_pay_less ( value true ) ( positive 1 ) ( positive-derivator pen10 $? ) ) ( test ( eq ( class ?gen106 ) to_pay_less ) ) ( not ( and ?gen113 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen106 <- ( to_pay_less ( negative ~ 2 ) ( positive-overruled $?gen108 & : ( not ( member$ pen10 $?gen108 ) ) ) ) ) ) => ?gen106 <- ( to_pay_less ( positive 0 ) )"))

([pen10-defeasibly] of derived-attribute-rule
   (pos-name pen10-defeasibly-gen287)
   (depends-on declare recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen10] ) ) ) ?gen113 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen106 <- ( to_pay_less ( value true ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen108 & : ( not ( member$ pen10 $?gen108 ) ) ) ) ( test ( eq ( class ?gen106 ) to_pay_less ) ) => ?gen106 <- ( to_pay_less ( positive 1 ) ( positive-derivator pen10 ?gen113 ) )"))

([pen10-overruled-dot] of derived-attribute-rule
   (pos-name pen10-overruled-dot-gen289)
   (depends-on declare to_pay_less recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen10] ) ) ) ?gen106 <- ( to_pay_less ( value true ) ( negative-support $?gen109 ) ( negative-overruled $?gen110 & : ( subseq-pos ( create$ pen10-overruled $?gen109 $$$ $?gen110 ) ) ) ) ( test ( eq ( class ?gen106 ) to_pay_less ) ) ( not ( and ?gen113 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen106 <- ( to_pay_less ( positive-defeated $?gen108 & : ( not ( member$ pen10 $?gen108 ) ) ) ) ) ) => ( calc ( bind $?gen111 ( delete-member$ $?gen110 ( create$ pen10-overruled $?gen109 ) ) ) ) ?gen106 <- ( to_pay_less ( negative-overruled $?gen111 ) )"))

([pen10-overruled] of derived-attribute-rule
   (pos-name pen10-overruled-gen291)
   (depends-on declare recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen10] ) ) ) ?gen113 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen106 <- ( to_pay_less ( value true ) ( negative-support $?gen109 ) ( negative-overruled $?gen110 & : ( not ( subseq-pos ( create$ pen10-overruled $?gen109 $$$ $?gen110 ) ) ) ) ( positive-defeated $?gen108 & : ( not ( member$ pen10 $?gen108 ) ) ) ) ( test ( eq ( class ?gen106 ) to_pay_less ) ) => ( calc ( bind $?gen111 ( create$ pen10-overruled $?gen109 $?gen110 ) ) ) ?gen106 <- ( to_pay_less ( negative-overruled $?gen111 ) )"))

([pen10-support] of derived-attribute-rule
   (pos-name pen10-support-gen293)
   (depends-on declare recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen10] ) ) ) ?gen105 <- ( recommend_fine_reduction ( defendant ?Defendant ) ) ?gen106 <- ( to_pay_less ( value true ) ( positive-support $?gen108 & : ( not ( subseq-pos ( create$ pen10 ?gen105 $$$ $?gen108 ) ) ) ) ) ( test ( eq ( class ?gen106 ) to_pay_less ) ) => ( calc ( bind $?gen111 ( create$ pen10 ?gen105 $?gen108 ) ) ) ?gen106 <- ( to_pay_less ( positive-support $?gen111 ) )"))

([pen7-defeasibly-dot] of derived-attribute-rule
   (pos-name pen7-defeasibly-dot-gen295)
   (depends-on declare confiscate_weapon confiscation confiscate_weapon)
   (implies confiscate_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen7] ) ) ) ?gen97 <- ( confiscate_weapon ( value true ) ( positive 1 ) ( positive-derivator pen7 $? ) ) ( test ( eq ( class ?gen97 ) confiscate_weapon ) ) ( not ( and ?gen104 <- ( confiscation ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( confiscate_weapon ( negative ~ 2 ) ( positive-overruled $?gen99 & : ( not ( member$ pen7 $?gen99 ) ) ) ) ) ) => ?gen97 <- ( confiscate_weapon ( positive 0 ) )"))

([pen7-defeasibly] of derived-attribute-rule
   (pos-name pen7-defeasibly-gen297)
   (depends-on declare confiscation confiscate_weapon)
   (implies confiscate_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen7] ) ) ) ?gen104 <- ( confiscation ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( confiscate_weapon ( value true ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen99 & : ( not ( member$ pen7 $?gen99 ) ) ) ) ( test ( eq ( class ?gen97 ) confiscate_weapon ) ) => ?gen97 <- ( confiscate_weapon ( positive 1 ) ( positive-derivator pen7 ?gen104 ) )"))

([pen7-overruled-dot] of derived-attribute-rule
   (pos-name pen7-overruled-dot-gen299)
   (depends-on declare confiscate_weapon confiscation confiscate_weapon)
   (implies confiscate_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen7] ) ) ) ?gen97 <- ( confiscate_weapon ( value true ) ( negative-support $?gen100 ) ( negative-overruled $?gen101 & : ( subseq-pos ( create$ pen7-overruled $?gen100 $$$ $?gen101 ) ) ) ) ( test ( eq ( class ?gen97 ) confiscate_weapon ) ) ( not ( and ?gen104 <- ( confiscation ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( confiscate_weapon ( positive-defeated $?gen99 & : ( not ( member$ pen7 $?gen99 ) ) ) ) ) ) => ( calc ( bind $?gen102 ( delete-member$ $?gen101 ( create$ pen7-overruled $?gen100 ) ) ) ) ?gen97 <- ( confiscate_weapon ( negative-overruled $?gen102 ) )"))

([pen7-overruled] of derived-attribute-rule
   (pos-name pen7-overruled-gen301)
   (depends-on declare confiscation confiscate_weapon)
   (implies confiscate_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen7] ) ) ) ?gen104 <- ( confiscation ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( confiscate_weapon ( value true ) ( negative-support $?gen100 ) ( negative-overruled $?gen101 & : ( not ( subseq-pos ( create$ pen7-overruled $?gen100 $$$ $?gen101 ) ) ) ) ( positive-defeated $?gen99 & : ( not ( member$ pen7 $?gen99 ) ) ) ) ( test ( eq ( class ?gen97 ) confiscate_weapon ) ) => ( calc ( bind $?gen102 ( create$ pen7-overruled $?gen100 $?gen101 ) ) ) ?gen97 <- ( confiscate_weapon ( negative-overruled $?gen102 ) )"))

([pen7-support] of derived-attribute-rule
   (pos-name pen7-support-gen303)
   (depends-on declare confiscation confiscate_weapon)
   (implies confiscate_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen7] ) ) ) ?gen96 <- ( confiscation ( defendant ?Defendant ) ) ?gen97 <- ( confiscate_weapon ( value true ) ( positive-support $?gen99 & : ( not ( subseq-pos ( create$ pen7 ?gen96 $$$ $?gen99 ) ) ) ) ) ( test ( eq ( class ?gen97 ) confiscate_weapon ) ) => ( calc ( bind $?gen102 ( create$ pen7 ?gen96 $?gen99 ) ) ) ?gen97 <- ( confiscate_weapon ( positive-support $?gen102 ) )"))

([pen1-defeasibly-dot] of derived-attribute-rule
   (pos-name pen1-defeasibly-dot-gen305)
   (depends-on declare 30_imprisonment jail_3_months 30_imprisonment)
   (implies 30_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen1] ) ) ) ?gen88 <- ( 30_imprisonment ( value 30 ) ( positive 1 ) ( positive-derivator pen1 $? ) ) ( test ( eq ( class ?gen88 ) 30_imprisonment ) ) ( not ( and ?gen95 <- ( jail_3_months ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( 30_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen90 & : ( not ( member$ pen1 $?gen90 ) ) ) ) ) ) => ?gen88 <- ( 30_imprisonment ( positive 0 ) )"))

([pen1-defeasibly] of derived-attribute-rule
   (pos-name pen1-defeasibly-gen307)
   (depends-on declare jail_3_months 30_imprisonment)
   (implies 30_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen1] ) ) ) ?gen95 <- ( jail_3_months ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( 30_imprisonment ( value 30 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen90 & : ( not ( member$ pen1 $?gen90 ) ) ) ) ( test ( eq ( class ?gen88 ) 30_imprisonment ) ) => ?gen88 <- ( 30_imprisonment ( positive 1 ) ( positive-derivator pen1 ?gen95 ) )"))

([pen1-overruled-dot] of derived-attribute-rule
   (pos-name pen1-overruled-dot-gen309)
   (depends-on declare 30_imprisonment jail_3_months 30_imprisonment)
   (implies 30_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen1] ) ) ) ?gen88 <- ( 30_imprisonment ( value 30 ) ( negative-support $?gen91 ) ( negative-overruled $?gen92 & : ( subseq-pos ( create$ pen1-overruled $?gen91 $$$ $?gen92 ) ) ) ) ( test ( eq ( class ?gen88 ) 30_imprisonment ) ) ( not ( and ?gen95 <- ( jail_3_months ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( 30_imprisonment ( positive-defeated $?gen90 & : ( not ( member$ pen1 $?gen90 ) ) ) ) ) ) => ( calc ( bind $?gen93 ( delete-member$ $?gen92 ( create$ pen1-overruled $?gen91 ) ) ) ) ?gen88 <- ( 30_imprisonment ( negative-overruled $?gen93 ) )"))

([pen1-overruled] of derived-attribute-rule
   (pos-name pen1-overruled-gen311)
   (depends-on declare jail_3_months 30_imprisonment)
   (implies 30_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen1] ) ) ) ?gen95 <- ( jail_3_months ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( 30_imprisonment ( value 30 ) ( negative-support $?gen91 ) ( negative-overruled $?gen92 & : ( not ( subseq-pos ( create$ pen1-overruled $?gen91 $$$ $?gen92 ) ) ) ) ( positive-defeated $?gen90 & : ( not ( member$ pen1 $?gen90 ) ) ) ) ( test ( eq ( class ?gen88 ) 30_imprisonment ) ) => ( calc ( bind $?gen93 ( create$ pen1-overruled $?gen91 $?gen92 ) ) ) ?gen88 <- ( 30_imprisonment ( negative-overruled $?gen93 ) )"))

([pen1-support] of derived-attribute-rule
   (pos-name pen1-support-gen313)
   (depends-on declare jail_3_months 30_imprisonment)
   (implies 30_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen1] ) ) ) ?gen87 <- ( jail_3_months ( defendant ?Defendant ) ) ?gen88 <- ( 30_imprisonment ( value 30 ) ( positive-support $?gen90 & : ( not ( subseq-pos ( create$ pen1 ?gen87 $$$ $?gen90 ) ) ) ) ) ( test ( eq ( class ?gen88 ) 30_imprisonment ) ) => ( calc ( bind $?gen93 ( create$ pen1 ?gen87 $?gen90 ) ) ) ?gen88 <- ( 30_imprisonment ( positive-support $?gen93 ) )"))

([rule11-defeasibly-dot] of derived-attribute-rule
   (pos-name rule11-defeasibly-dot-gen315)
   (depends-on declare is_high_category_weapon_in_public lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule11] ) ) ) ?gen79 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule11 $? ) ) ( test ( eq ( class ?gen79 ) is_high_category_weapon_in_public ) ) ( not ( and ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen79 <- ( is_high_category_weapon_in_public ( negative ~ 2 ) ( positive-overruled $?gen81 & : ( not ( member$ rule11 $?gen81 ) ) ) ) ) ) => ?gen79 <- ( is_high_category_weapon_in_public ( positive 0 ) )"))

([rule11-defeasibly] of derived-attribute-rule
   (pos-name rule11-defeasibly-gen317)
   (depends-on declare lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule11] ) ) ) ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen79 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen81 & : ( not ( member$ rule11 $?gen81 ) ) ) ) ( test ( eq ( class ?gen79 ) is_high_category_weapon_in_public ) ) => ?gen79 <- ( is_high_category_weapon_in_public ( positive 1 ) ( positive-derivator rule11 ?gen86 ) )"))

([rule11-overruled-dot] of derived-attribute-rule
   (pos-name rule11-overruled-dot-gen319)
   (depends-on declare is_high_category_weapon_in_public lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule11] ) ) ) ?gen79 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( negative-support $?gen82 ) ( negative-overruled $?gen83 & : ( subseq-pos ( create$ rule11-overruled $?gen82 $$$ $?gen83 ) ) ) ) ( test ( eq ( class ?gen79 ) is_high_category_weapon_in_public ) ) ( not ( and ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen79 <- ( is_high_category_weapon_in_public ( positive-defeated $?gen81 & : ( not ( member$ rule11 $?gen81 ) ) ) ) ) ) => ( calc ( bind $?gen84 ( delete-member$ $?gen83 ( create$ rule11-overruled $?gen82 ) ) ) ) ?gen79 <- ( is_high_category_weapon_in_public ( negative-overruled $?gen84 ) )"))

([rule11-overruled] of derived-attribute-rule
   (pos-name rule11-overruled-gen321)
   (depends-on declare lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule11] ) ) ) ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen79 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( negative-support $?gen82 ) ( negative-overruled $?gen83 & : ( not ( subseq-pos ( create$ rule11-overruled $?gen82 $$$ $?gen83 ) ) ) ) ( positive-defeated $?gen81 & : ( not ( member$ rule11 $?gen81 ) ) ) ) ( test ( eq ( class ?gen79 ) is_high_category_weapon_in_public ) ) => ( calc ( bind $?gen84 ( create$ rule11-overruled $?gen82 $?gen83 ) ) ) ?gen79 <- ( is_high_category_weapon_in_public ( negative-overruled $?gen84 ) )"))

([rule11-support] of derived-attribute-rule
   (pos-name rule11-support-gen323)
   (depends-on declare lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule11] ) ) ) ?gen78 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ) ?gen79 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive-support $?gen81 & : ( not ( subseq-pos ( create$ rule11 ?gen78 $$$ $?gen81 ) ) ) ) ) ( test ( eq ( class ?gen79 ) is_high_category_weapon_in_public ) ) => ( calc ( bind $?gen84 ( create$ rule11 ?gen78 $?gen81 ) ) ) ?gen79 <- ( is_high_category_weapon_in_public ( positive-support $?gen84 ) )"))

([rule10-defeasibly-dot] of derived-attribute-rule
   (pos-name rule10-defeasibly-dot-gen325)
   (depends-on declare recommend_increased_penalty lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule10] ) ) ) ?gen70 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule10 $? ) ) ( test ( eq ( class ?gen70 ) recommend_increased_penalty ) ) ( not ( and ?gen77 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( recommend_increased_penalty ( negative ~ 2 ) ( positive-overruled $?gen72 & : ( not ( member$ rule10 $?gen72 ) ) ) ) ) ) => ?gen70 <- ( recommend_increased_penalty ( positive 0 ) )"))

([rule10-defeasibly] of derived-attribute-rule
   (pos-name rule10-defeasibly-gen327)
   (depends-on declare lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule10] ) ) ) ?gen77 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen72 & : ( not ( member$ rule10 $?gen72 ) ) ) ) ( test ( eq ( class ?gen70 ) recommend_increased_penalty ) ) => ?gen70 <- ( recommend_increased_penalty ( positive 1 ) ( positive-derivator rule10 ?gen77 ) )"))

([rule10-overruled-dot] of derived-attribute-rule
   (pos-name rule10-overruled-dot-gen329)
   (depends-on declare recommend_increased_penalty lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule10] ) ) ) ?gen70 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( negative-support $?gen73 ) ( negative-overruled $?gen74 & : ( subseq-pos ( create$ rule10-overruled $?gen73 $$$ $?gen74 ) ) ) ) ( test ( eq ( class ?gen70 ) recommend_increased_penalty ) ) ( not ( and ?gen77 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( recommend_increased_penalty ( positive-defeated $?gen72 & : ( not ( member$ rule10 $?gen72 ) ) ) ) ) ) => ( calc ( bind $?gen75 ( delete-member$ $?gen74 ( create$ rule10-overruled $?gen73 ) ) ) ) ?gen70 <- ( recommend_increased_penalty ( negative-overruled $?gen75 ) )"))

([rule10-overruled] of derived-attribute-rule
   (pos-name rule10-overruled-gen331)
   (depends-on declare lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule10] ) ) ) ?gen77 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( negative-support $?gen73 ) ( negative-overruled $?gen74 & : ( not ( subseq-pos ( create$ rule10-overruled $?gen73 $$$ $?gen74 ) ) ) ) ( positive-defeated $?gen72 & : ( not ( member$ rule10 $?gen72 ) ) ) ) ( test ( eq ( class ?gen70 ) recommend_increased_penalty ) ) => ( calc ( bind $?gen75 ( create$ rule10-overruled $?gen73 $?gen74 ) ) ) ?gen70 <- ( recommend_increased_penalty ( negative-overruled $?gen75 ) )"))

([rule10-support] of derived-attribute-rule
   (pos-name rule10-support-gen333)
   (depends-on declare lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule10] ) ) ) ?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ) ?gen70 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive-support $?gen72 & : ( not ( subseq-pos ( create$ rule10 ?gen69 $$$ $?gen72 ) ) ) ) ) ( test ( eq ( class ?gen70 ) recommend_increased_penalty ) ) => ( calc ( bind $?gen75 ( create$ rule10 ?gen69 $?gen72 ) ) ) ?gen70 <- ( recommend_increased_penalty ( positive-support $?gen75 ) )"))

([rule9-defeasibly-dot] of derived-attribute-rule
   (pos-name rule9-defeasibly-dot-gen335)
   (depends-on declare recommend_fine_reduction lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule9] ) ) ) ?gen61 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule9 $? ) ) ( test ( eq ( class ?gen61 ) recommend_fine_reduction ) ) ( not ( and ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( recommend_fine_reduction ( negative ~ 2 ) ( positive-overruled $?gen63 & : ( not ( member$ rule9 $?gen63 ) ) ) ) ) ) => ?gen61 <- ( recommend_fine_reduction ( positive 0 ) )"))

([rule9-defeasibly] of derived-attribute-rule
   (pos-name rule9-defeasibly-gen337)
   (depends-on declare lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule9] ) ) ) ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen63 & : ( not ( member$ rule9 $?gen63 ) ) ) ) ( test ( eq ( class ?gen61 ) recommend_fine_reduction ) ) => ?gen61 <- ( recommend_fine_reduction ( positive 1 ) ( positive-derivator rule9 ?gen68 ) )"))

([rule9-overruled-dot] of derived-attribute-rule
   (pos-name rule9-overruled-dot-gen339)
   (depends-on declare recommend_fine_reduction lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule9] ) ) ) ?gen61 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( negative-support $?gen64 ) ( negative-overruled $?gen65 & : ( subseq-pos ( create$ rule9-overruled $?gen64 $$$ $?gen65 ) ) ) ) ( test ( eq ( class ?gen61 ) recommend_fine_reduction ) ) ( not ( and ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( recommend_fine_reduction ( positive-defeated $?gen63 & : ( not ( member$ rule9 $?gen63 ) ) ) ) ) ) => ( calc ( bind $?gen66 ( delete-member$ $?gen65 ( create$ rule9-overruled $?gen64 ) ) ) ) ?gen61 <- ( recommend_fine_reduction ( negative-overruled $?gen66 ) )"))

([rule9-overruled] of derived-attribute-rule
   (pos-name rule9-overruled-gen341)
   (depends-on declare lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule9] ) ) ) ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( negative-support $?gen64 ) ( negative-overruled $?gen65 & : ( not ( subseq-pos ( create$ rule9-overruled $?gen64 $$$ $?gen65 ) ) ) ) ( positive-defeated $?gen63 & : ( not ( member$ rule9 $?gen63 ) ) ) ) ( test ( eq ( class ?gen61 ) recommend_fine_reduction ) ) => ( calc ( bind $?gen66 ( create$ rule9-overruled $?gen64 $?gen65 ) ) ) ?gen61 <- ( recommend_fine_reduction ( negative-overruled $?gen66 ) )"))

([rule9-support] of derived-attribute-rule
   (pos-name rule9-support-gen343)
   (depends-on declare lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule9] ) ) ) ?gen60 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ) ?gen61 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive-support $?gen63 & : ( not ( subseq-pos ( create$ rule9 ?gen60 $$$ $?gen63 ) ) ) ) ) ( test ( eq ( class ?gen61 ) recommend_fine_reduction ) ) => ( calc ( bind $?gen66 ( create$ rule9 ?gen60 $?gen63 ) ) ) ?gen61 <- ( recommend_fine_reduction ( positive-support $?gen66 ) )"))

([rule8-defeasibly-dot] of derived-attribute-rule
   (pos-name rule8-defeasibly-dot-gen345)
   (depends-on declare money lc:case lc:case money)
   (implies money)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule8] ) ) ) ?gen50 <- ( money ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule8 $? ) ) ( test ( eq ( class ?gen50 ) money ) ) ( not ( and ?gen57 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen56 & : ( >= ?gen56 1 ) ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen50 <- ( money ( negative ~ 2 ) ( positive-overruled $?gen52 & : ( not ( member$ rule8 $?gen52 ) ) ) ) ) ) => ?gen50 <- ( money ( positive 0 ) )"))

([rule8-defeasibly] of derived-attribute-rule
   (pos-name rule8-defeasibly-gen347)
   (depends-on declare lc:case lc:case money)
   (implies money)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule8] ) ) ) ?gen57 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen56 & : ( >= ?gen56 1 ) ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen50 <- ( money ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen52 & : ( not ( member$ rule8 $?gen52 ) ) ) ) ( test ( eq ( class ?gen50 ) money ) ) => ?gen50 <- ( money ( positive 1 ) ( positive-derivator rule8 ?gen57 ?gen59 ) )"))

([rule8-overruled-dot] of derived-attribute-rule
   (pos-name rule8-overruled-dot-gen349)
   (depends-on declare money lc:case lc:case money)
   (implies money)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule8] ) ) ) ?gen50 <- ( money ( defendant ?Defendant ) ( negative-support $?gen53 ) ( negative-overruled $?gen54 & : ( subseq-pos ( create$ rule8-overruled $?gen53 $$$ $?gen54 ) ) ) ) ( test ( eq ( class ?gen50 ) money ) ) ( not ( and ?gen57 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen56 & : ( >= ?gen56 1 ) ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen50 <- ( money ( positive-defeated $?gen52 & : ( not ( member$ rule8 $?gen52 ) ) ) ) ) ) => ( calc ( bind $?gen55 ( delete-member$ $?gen54 ( create$ rule8-overruled $?gen53 ) ) ) ) ?gen50 <- ( money ( negative-overruled $?gen55 ) )"))

([rule8-overruled] of derived-attribute-rule
   (pos-name rule8-overruled-gen351)
   (depends-on declare lc:case lc:case money)
   (implies money)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule8] ) ) ) ?gen57 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen56 & : ( >= ?gen56 1 ) ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen50 <- ( money ( defendant ?Defendant ) ( negative-support $?gen53 ) ( negative-overruled $?gen54 & : ( not ( subseq-pos ( create$ rule8-overruled $?gen53 $$$ $?gen54 ) ) ) ) ( positive-defeated $?gen52 & : ( not ( member$ rule8 $?gen52 ) ) ) ) ( test ( eq ( class ?gen50 ) money ) ) => ( calc ( bind $?gen55 ( create$ rule8-overruled $?gen53 $?gen54 ) ) ) ?gen50 <- ( money ( negative-overruled $?gen55 ) )"))

([rule8-support] of derived-attribute-rule
   (pos-name rule8-support-gen353)
   (depends-on declare lc:case lc:case money)
   (implies money)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule8] ) ) ) ?gen48 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ) ?gen49 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ) ?gen50 <- ( money ( defendant ?Defendant ) ( positive-support $?gen52 & : ( not ( subseq-pos ( create$ rule8 ?gen48 ?gen49 $$$ $?gen52 ) ) ) ) ) ( test ( eq ( class ?gen50 ) money ) ) => ( calc ( bind $?gen55 ( create$ rule8 ?gen48 ?gen49 $?gen52 ) ) ) ?gen50 <- ( money ( positive-support $?gen55 ) )"))

([rule7-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7-defeasibly-dot-gen355)
   (depends-on declare confiscation lc:case confiscation)
   (implies confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7] ) ) ) ?gen40 <- ( confiscation ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule7 $? ) ) ( test ( eq ( class ?gen40 ) confiscation ) ) ( not ( and ?gen47 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen46 & : ( >= ?gen46 1 ) ) ) ?gen40 <- ( confiscation ( negative ~ 2 ) ( positive-overruled $?gen42 & : ( not ( member$ rule7 $?gen42 ) ) ) ) ) ) => ?gen40 <- ( confiscation ( positive 0 ) )"))

([rule7-defeasibly] of derived-attribute-rule
   (pos-name rule7-defeasibly-gen357)
   (depends-on declare lc:case confiscation)
   (implies confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7] ) ) ) ?gen47 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen46 & : ( >= ?gen46 1 ) ) ) ?gen40 <- ( confiscation ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen42 & : ( not ( member$ rule7 $?gen42 ) ) ) ) ( test ( eq ( class ?gen40 ) confiscation ) ) => ?gen40 <- ( confiscation ( positive 1 ) ( positive-derivator rule7 ?gen47 ) )"))

([rule7-overruled-dot] of derived-attribute-rule
   (pos-name rule7-overruled-dot-gen359)
   (depends-on declare confiscation lc:case confiscation)
   (implies confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7] ) ) ) ?gen40 <- ( confiscation ( defendant ?Defendant ) ( negative-support $?gen43 ) ( negative-overruled $?gen44 & : ( subseq-pos ( create$ rule7-overruled $?gen43 $$$ $?gen44 ) ) ) ) ( test ( eq ( class ?gen40 ) confiscation ) ) ( not ( and ?gen47 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen46 & : ( >= ?gen46 1 ) ) ) ?gen40 <- ( confiscation ( positive-defeated $?gen42 & : ( not ( member$ rule7 $?gen42 ) ) ) ) ) ) => ( calc ( bind $?gen45 ( delete-member$ $?gen44 ( create$ rule7-overruled $?gen43 ) ) ) ) ?gen40 <- ( confiscation ( negative-overruled $?gen45 ) )"))

([rule7-overruled] of derived-attribute-rule
   (pos-name rule7-overruled-gen361)
   (depends-on declare lc:case confiscation)
   (implies confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7] ) ) ) ?gen47 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen46 & : ( >= ?gen46 1 ) ) ) ?gen40 <- ( confiscation ( defendant ?Defendant ) ( negative-support $?gen43 ) ( negative-overruled $?gen44 & : ( not ( subseq-pos ( create$ rule7-overruled $?gen43 $$$ $?gen44 ) ) ) ) ( positive-defeated $?gen42 & : ( not ( member$ rule7 $?gen42 ) ) ) ) ( test ( eq ( class ?gen40 ) confiscation ) ) => ( calc ( bind $?gen45 ( create$ rule7-overruled $?gen43 $?gen44 ) ) ) ?gen40 <- ( confiscation ( negative-overruled $?gen45 ) )"))

([rule7-support] of derived-attribute-rule
   (pos-name rule7-support-gen363)
   (depends-on declare lc:case confiscation)
   (implies confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7] ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ) ?gen40 <- ( confiscation ( defendant ?Defendant ) ( positive-support $?gen42 & : ( not ( subseq-pos ( create$ rule7 ?gen39 $$$ $?gen42 ) ) ) ) ) ( test ( eq ( class ?gen40 ) confiscation ) ) => ( calc ( bind $?gen45 ( create$ rule7 ?gen39 $?gen42 ) ) ) ?gen40 <- ( confiscation ( positive-support $?gen45 ) )"))

([rule2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule2-defeasibly-dot-gen365)
   (depends-on declare harm_done_with_weapon lc:case harm_done_with_weapon)
   (implies harm_done_with_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule2] ) ) ) ?gen31 <- ( harm_done_with_weapon ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule2 $? ) ) ( test ( eq ( class ?gen31 ) harm_done_with_weapon ) ) ( not ( and ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:harm_done \"yes\" ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen31 <- ( harm_done_with_weapon ( negative ~ 2 ) ( positive-overruled $?gen33 & : ( not ( member$ rule2 $?gen33 ) ) ) ) ) ) => ?gen31 <- ( harm_done_with_weapon ( positive 0 ) )"))

([rule2-defeasibly] of derived-attribute-rule
   (pos-name rule2-defeasibly-gen367)
   (depends-on declare lc:case harm_done_with_weapon)
   (implies harm_done_with_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule2] ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:harm_done \"yes\" ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen31 <- ( harm_done_with_weapon ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen33 & : ( not ( member$ rule2 $?gen33 ) ) ) ) ( test ( eq ( class ?gen31 ) harm_done_with_weapon ) ) => ?gen31 <- ( harm_done_with_weapon ( positive 1 ) ( positive-derivator rule2 ?gen38 ) )"))

([rule2-overruled-dot] of derived-attribute-rule
   (pos-name rule2-overruled-dot-gen369)
   (depends-on declare harm_done_with_weapon lc:case harm_done_with_weapon)
   (implies harm_done_with_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule2] ) ) ) ?gen31 <- ( harm_done_with_weapon ( defendant ?Defendant ) ( negative-support $?gen34 ) ( negative-overruled $?gen35 & : ( subseq-pos ( create$ rule2-overruled $?gen34 $$$ $?gen35 ) ) ) ) ( test ( eq ( class ?gen31 ) harm_done_with_weapon ) ) ( not ( and ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:harm_done \"yes\" ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen31 <- ( harm_done_with_weapon ( positive-defeated $?gen33 & : ( not ( member$ rule2 $?gen33 ) ) ) ) ) ) => ( calc ( bind $?gen36 ( delete-member$ $?gen35 ( create$ rule2-overruled $?gen34 ) ) ) ) ?gen31 <- ( harm_done_with_weapon ( negative-overruled $?gen36 ) )"))

([rule2-overruled] of derived-attribute-rule
   (pos-name rule2-overruled-gen371)
   (depends-on declare lc:case harm_done_with_weapon)
   (implies harm_done_with_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule2] ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:harm_done \"yes\" ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen31 <- ( harm_done_with_weapon ( defendant ?Defendant ) ( negative-support $?gen34 ) ( negative-overruled $?gen35 & : ( not ( subseq-pos ( create$ rule2-overruled $?gen34 $$$ $?gen35 ) ) ) ) ( positive-defeated $?gen33 & : ( not ( member$ rule2 $?gen33 ) ) ) ) ( test ( eq ( class ?gen31 ) harm_done_with_weapon ) ) => ( calc ( bind $?gen36 ( create$ rule2-overruled $?gen34 $?gen35 ) ) ) ?gen31 <- ( harm_done_with_weapon ( negative-overruled $?gen36 ) )"))

([rule2-support] of derived-attribute-rule
   (pos-name rule2-support-gen373)
   (depends-on declare lc:case harm_done_with_weapon)
   (implies harm_done_with_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule2] ) ) ) ?gen30 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:harm_done \"yes\" ) ) ?gen31 <- ( harm_done_with_weapon ( defendant ?Defendant ) ( positive-support $?gen33 & : ( not ( subseq-pos ( create$ rule2 ?gen30 $$$ $?gen33 ) ) ) ) ) ( test ( eq ( class ?gen31 ) harm_done_with_weapon ) ) => ( calc ( bind $?gen36 ( create$ rule2 ?gen30 $?gen33 ) ) ) ?gen31 <- ( harm_done_with_weapon ( positive-support $?gen36 ) )"))

([rule111-defeasibly-dot] of derived-attribute-rule
   (pos-name rule111-defeasibly-dot-gen375)
   (depends-on declare fine fine)
   (implies fine)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule111] ) ) ) ?gen24 <- ( fine ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule111 $? ) ) ( test ( eq ( class ?gen24 ) fine ) ) ( not ?gen24 <- ( fine ( negative ~ 2 ) ( positive-overruled $?gen26 & : ( not ( member$ rule111 $?gen26 ) ) ) ) ) => ?gen24 <- ( fine ( positive 0 ) )"))

([rule111-defeasibly] of derived-attribute-rule
   (pos-name rule111-defeasibly-gen377)
   (depends-on declare fine)
   (implies fine)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule111] ) ) ) ?gen24 <- ( fine ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen26 & : ( not ( member$ rule111 $?gen26 ) ) ) ) ( test ( eq ( class ?gen24 ) fine ) ) => ?gen24 <- ( fine ( positive 1 ) ( positive-derivator rule111 ) )"))

([rule111-overruled-dot] of derived-attribute-rule
   (pos-name rule111-overruled-dot-gen379)
   (depends-on declare fine fine)
   (implies fine)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule111] ) ) ) ?gen24 <- ( fine ( defendant ?Defendant ) ( negative-support $?gen27 ) ( negative-overruled $?gen28 & : ( subseq-pos ( create$ rule111-overruled $?gen27 $$$ $?gen28 ) ) ) ) ( test ( eq ( class ?gen24 ) fine ) ) ( not ?gen24 <- ( fine ( positive-defeated $?gen26 & : ( not ( member$ rule111 $?gen26 ) ) ) ) ) => ( calc ( bind $?gen29 ( delete-member$ $?gen28 ( create$ rule111-overruled $?gen27 ) ) ) ) ?gen24 <- ( fine ( negative-overruled $?gen29 ) )"))

([rule111-overruled] of derived-attribute-rule
   (pos-name rule111-overruled-gen381)
   (depends-on declare fine)
   (implies fine)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule111] ) ) ) ?gen24 <- ( fine ( defendant ?Defendant ) ( negative-support $?gen27 ) ( negative-overruled $?gen28 & : ( not ( subseq-pos ( create$ rule111-overruled $?gen27 $$$ $?gen28 ) ) ) ) ( positive-defeated $?gen26 & : ( not ( member$ rule111 $?gen26 ) ) ) ) ( test ( eq ( class ?gen24 ) fine ) ) => ( calc ( bind $?gen29 ( create$ rule111-overruled $?gen27 $?gen28 ) ) ) ?gen24 <- ( fine ( negative-overruled $?gen29 ) )"))

([rule111-support] of derived-attribute-rule
   (pos-name rule111-support-gen383)
   (depends-on declare fine)
   (implies fine)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule111] ) ) ) ?gen24 <- ( fine ( defendant ?Defendant ) ( positive-support $?gen26 & : ( not ( subseq-pos ( create$ rule111 $$$ $?gen26 ) ) ) ) ) ( test ( eq ( class ?gen24 ) fine ) ) => ( calc ( bind $?gen29 ( create$ rule111 $?gen26 ) ) ) ?gen24 <- ( fine ( positive-support $?gen29 ) )"))

([rule1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule1-defeasibly-dot-gen385)
   (depends-on declare jail_3_months lc:case jail_3_months)
   (implies jail_3_months)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule1] ) ) ) ?gen16 <- ( jail_3_months ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule1 $? ) ) ( test ( eq ( class ?gen16 ) jail_3_months ) ) ( not ( and ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( jail_3_months ( negative ~ 2 ) ( positive-overruled $?gen18 & : ( not ( member$ rule1 $?gen18 ) ) ) ) ) ) => ?gen16 <- ( jail_3_months ( positive 0 ) )"))

([rule1-defeasibly] of derived-attribute-rule
   (pos-name rule1-defeasibly-gen387)
   (depends-on declare lc:case jail_3_months)
   (implies jail_3_months)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule1] ) ) ) ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( jail_3_months ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen18 & : ( not ( member$ rule1 $?gen18 ) ) ) ) ( test ( eq ( class ?gen16 ) jail_3_months ) ) => ?gen16 <- ( jail_3_months ( positive 1 ) ( positive-derivator rule1 ?gen23 ) )"))

([rule1-overruled-dot] of derived-attribute-rule
   (pos-name rule1-overruled-dot-gen389)
   (depends-on declare jail_3_months lc:case jail_3_months)
   (implies jail_3_months)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule1] ) ) ) ?gen16 <- ( jail_3_months ( defendant ?Defendant ) ( negative-support $?gen19 ) ( negative-overruled $?gen20 & : ( subseq-pos ( create$ rule1-overruled $?gen19 $$$ $?gen20 ) ) ) ) ( test ( eq ( class ?gen16 ) jail_3_months ) ) ( not ( and ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( jail_3_months ( positive-defeated $?gen18 & : ( not ( member$ rule1 $?gen18 ) ) ) ) ) ) => ( calc ( bind $?gen21 ( delete-member$ $?gen20 ( create$ rule1-overruled $?gen19 ) ) ) ) ?gen16 <- ( jail_3_months ( negative-overruled $?gen21 ) )"))

([rule1-overruled] of derived-attribute-rule
   (pos-name rule1-overruled-gen391)
   (depends-on declare lc:case jail_3_months)
   (implies jail_3_months)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule1] ) ) ) ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( jail_3_months ( defendant ?Defendant ) ( negative-support $?gen19 ) ( negative-overruled $?gen20 & : ( not ( subseq-pos ( create$ rule1-overruled $?gen19 $$$ $?gen20 ) ) ) ) ( positive-defeated $?gen18 & : ( not ( member$ rule1 $?gen18 ) ) ) ) ( test ( eq ( class ?gen16 ) jail_3_months ) ) => ( calc ( bind $?gen21 ( create$ rule1-overruled $?gen19 $?gen20 ) ) ) ?gen16 <- ( jail_3_months ( negative-overruled $?gen21 ) )"))

([rule1-support] of derived-attribute-rule
   (pos-name rule1-support-gen393)
   (depends-on declare lc:case jail_3_months)
   (implies jail_3_months)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule1] ) ) ) ?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ) ?gen16 <- ( jail_3_months ( defendant ?Defendant ) ( positive-support $?gen18 & : ( not ( subseq-pos ( create$ rule1 ?gen15 $$$ $?gen18 ) ) ) ) ) ( test ( eq ( class ?gen16 ) jail_3_months ) ) => ( calc ( bind $?gen21 ( create$ rule1 ?gen15 $?gen18 ) ) ) ?gen16 <- ( jail_3_months ( positive-support $?gen21 ) )"))

([pen18-deductive] of ntm-deductive-rule
   (pos-name pen18-deductive-gen204)
   (depends-on fine to_pay_min3)
   (implies to_pay_min3)
   (deductive-rule "?gen177 <- ( fine ( defendant ?Defendant ) ) ( not ( to_pay_min3 ( value 30 ) ) ) => ( to_pay_min3 ( value 30 ) )")
   (production-rule "( defrule pen18-deductive-gen204 ( declare ( salience ( calc-salience to_pay_min3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen177 ) ( is-a fine ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min3 ) ( value 30 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min3 30 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min3 30 ) ) ) ( make-instance ?oid of to_pay_min3 ( value 30 ) ) )")
   (derived-class to_pay_min3))

([pen17-deductive] of ntm-deductive-rule
   (pos-name pen17-deductive-gen203)
   (depends-on fine to_pay_max3)
   (implies to_pay_max3)
   (deductive-rule "?gen168 <- ( fine ( defendant ?Defendant ) ) ( not ( to_pay_max3 ( value 500 ) ) ) => ( to_pay_max3 ( value 500 ) )")
   (production-rule "( defrule pen17-deductive-gen203 ( declare ( salience ( calc-salience to_pay_max3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen168 ) ( is-a fine ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max3 ) ( value 500 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max3 500 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max3 500 ) ) ) ( make-instance ?oid of to_pay_max3 ( value 500 ) ) )")
   (derived-class to_pay_max3))

([pen16-deductive] of ntm-deductive-rule
   (pos-name pen16-deductive-gen202)
   (depends-on harm_done_with_weapon jail_3_year)
   (implies jail_3_year)
   (deductive-rule "?gen159 <- ( harm_done_with_weapon ( defendant ?Defendant ) ) ( not ( jail_3_year ( value 3 ) ) ) => ( jail_3_year ( value 3 ) )")
   (production-rule "( defrule pen16-deductive-gen202 ( declare ( salience ( calc-salience jail_3_year ) ) ) ( run-deductive-rules ) ( object ( name ?gen159 ) ( is-a harm_done_with_weapon ) ( defendant ?Defendant ) ) ( not ( object ( is-a jail_3_year ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat jail_3_year 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat jail_3_year 3 ) ) ) ( make-instance ?oid of jail_3_year ( value 3 ) ) )")
   (derived-class jail_3_year))

([pen15-deductive] of ntm-deductive-rule
   (pos-name pen15-deductive-gen201)
   (depends-on money to_pay_min2)
   (implies to_pay_min2)
   (deductive-rule "?gen150 <- ( money ( defendant ?Defendant ) ) ( not ( to_pay_min2 ( value 30 ) ) ) => ( to_pay_min2 ( value 30 ) )")
   (production-rule "( defrule pen15-deductive-gen201 ( declare ( salience ( calc-salience to_pay_min2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen150 ) ( is-a money ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min2 ) ( value 30 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min2 30 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min2 30 ) ) ) ( make-instance ?oid of to_pay_min2 ( value 30 ) ) )")
   (derived-class to_pay_min2))

([pen14-deductive] of ntm-deductive-rule
   (pos-name pen14-deductive-gen200)
   (depends-on money to_pay_max2)
   (implies to_pay_max2)
   (deductive-rule "?gen141 <- ( money ( defendant ?Defendant ) ) ( not ( to_pay_max2 ( value 500 ) ) ) => ( to_pay_max2 ( value 500 ) )")
   (production-rule "( defrule pen14-deductive-gen200 ( declare ( salience ( calc-salience to_pay_max2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen141 ) ( is-a money ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max2 ) ( value 500 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max2 500 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max2 500 ) ) ) ( make-instance ?oid of to_pay_max2 ( value 500 ) ) )")
   (derived-class to_pay_max2))

([pen13-deductive] of ntm-deductive-rule
   (pos-name pen13-deductive-gen199)
   (depends-on is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (deductive-rule "?gen132 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ) ( not ( to_pay_min ( value 30 ) ) ) => ( to_pay_min ( value 30 ) )")
   (production-rule "( defrule pen13-deductive-gen199 ( declare ( salience ( calc-salience to_pay_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen132 ) ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min ) ( value 30 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min 30 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min 30 ) ) ) ( make-instance ?oid of to_pay_min ( value 30 ) ) )")
   (derived-class to_pay_min))

([pen12-deductive] of ntm-deductive-rule
   (pos-name pen12-deductive-gen198)
   (depends-on is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (deductive-rule "?gen123 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ) ( not ( to_pay_max ( value 500 ) ) ) => ( to_pay_max ( value 500 ) )")
   (production-rule "( defrule pen12-deductive-gen198 ( declare ( salience ( calc-salience to_pay_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen123 ) ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max ) ( value 500 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max 500 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max 500 ) ) ) ( make-instance ?oid of to_pay_max ( value 500 ) ) )")
   (derived-class to_pay_max))

([pen11-deductive] of ntm-deductive-rule
   (pos-name pen11-deductive-gen197)
   (depends-on recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (deductive-rule "?gen114 <- ( recommend_increased_penalty ( defendant ?Defendant ) ) ( not ( to_increase_penalty ( value true ) ) ) => ( to_increase_penalty ( value true ) )")
   (production-rule "( defrule pen11-deductive-gen197 ( declare ( salience ( calc-salience to_increase_penalty ) ) ) ( run-deductive-rules ) ( object ( name ?gen114 ) ( is-a recommend_increased_penalty ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_increase_penalty ) ( value true ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_increase_penalty true ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_increase_penalty true ) ) ) ( make-instance ?oid of to_increase_penalty ( value true ) ) )")
   (derived-class to_increase_penalty))

([pen10-deductive] of ntm-deductive-rule
   (pos-name pen10-deductive-gen196)
   (depends-on recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (deductive-rule "?gen105 <- ( recommend_fine_reduction ( defendant ?Defendant ) ) ( not ( to_pay_less ( value true ) ) ) => ( to_pay_less ( value true ) )")
   (production-rule "( defrule pen10-deductive-gen196 ( declare ( salience ( calc-salience to_pay_less ) ) ) ( run-deductive-rules ) ( object ( name ?gen105 ) ( is-a recommend_fine_reduction ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_less ) ( value true ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_less true ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_less true ) ) ) ( make-instance ?oid of to_pay_less ( value true ) ) )")
   (derived-class to_pay_less))

([pen7-deductive] of ntm-deductive-rule
   (pos-name pen7-deductive-gen195)
   (depends-on confiscation confiscate_weapon)
   (implies confiscate_weapon)
   (deductive-rule "?gen96 <- ( confiscation ( defendant ?Defendant ) ) ( not ( confiscate_weapon ( value true ) ) ) => ( confiscate_weapon ( value true ) )")
   (production-rule "( defrule pen7-deductive-gen195 ( declare ( salience ( calc-salience confiscate_weapon ) ) ) ( run-deductive-rules ) ( object ( name ?gen96 ) ( is-a confiscation ) ( defendant ?Defendant ) ) ( not ( object ( is-a confiscate_weapon ) ( value true ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat confiscate_weapon true ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat confiscate_weapon true ) ) ) ( make-instance ?oid of confiscate_weapon ( value true ) ) )")
   (derived-class confiscate_weapon))

([pen1-deductive] of ntm-deductive-rule
   (pos-name pen1-deductive-gen194)
   (depends-on jail_3_months 30_imprisonment)
   (implies 30_imprisonment)
   (deductive-rule "?gen87 <- ( jail_3_months ( defendant ?Defendant ) ) ( not ( 30_imprisonment ( value 30 ) ) ) => ( 30_imprisonment ( value 30 ) )")
   (production-rule "( defrule pen1-deductive-gen194 ( declare ( salience ( calc-salience 30_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen87 ) ( is-a jail_3_months ) ( defendant ?Defendant ) ) ( not ( object ( is-a 30_imprisonment ) ( value 30 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat 30_imprisonment 30 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat 30_imprisonment 30 ) ) ) ( make-instance ?oid of 30_imprisonment ( value 30 ) ) )")
   (derived-class 30_imprisonment))

([rule11-deductive] of ntm-deductive-rule
   (pos-name rule11-deductive-gen193)
   (depends-on lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (deductive-rule "?gen78 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ) ( not ( is_high_category_weapon_in_public ( defendant ?Defendant ) ) ) => ( is_high_category_weapon_in_public ( defendant ?Defendant ) )")
   (production-rule "( defrule rule11-deductive-gen193 ( declare ( salience ( calc-salience is_high_category_weapon_in_public ) ) ) ( run-deductive-rules ) ( object ( name ?gen78 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"public\" ) ) ( not ( object ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_high_category_weapon_in_public ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_high_category_weapon_in_public ?Defendant ) ) ) ( make-instance ?oid of is_high_category_weapon_in_public ( defendant ?Defendant ) ) )")
   (derived-class is_high_category_weapon_in_public))

([rule10-deductive] of ntm-deductive-rule
   (pos-name rule10-deductive-gen192)
   (depends-on lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (deductive-rule "?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ) ( not ( recommend_increased_penalty ( defendant ?Defendant ) ) ) => ( recommend_increased_penalty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule10-deductive-gen192 ( declare ( salience ( calc-salience recommend_increased_penalty ) ) ) ( run-deductive-rules ) ( object ( name ?gen69 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:previously_convicted \"yes\" ) ) ( not ( object ( is-a recommend_increased_penalty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat recommend_increased_penalty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat recommend_increased_penalty ?Defendant ) ) ) ( make-instance ?oid of recommend_increased_penalty ( defendant ?Defendant ) ) )")
   (derived-class recommend_increased_penalty))

([rule9-deductive] of ntm-deductive-rule
   (pos-name rule9-deductive-gen191)
   (depends-on lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (deductive-rule "?gen60 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ) ( not ( recommend_fine_reduction ( defendant ?Defendant ) ) ) => ( recommend_fine_reduction ( defendant ?Defendant ) )")
   (production-rule "( defrule rule9-deductive-gen191 ( declare ( salience ( calc-salience recommend_fine_reduction ) ) ) ( run-deductive-rules ) ( object ( name ?gen60 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ) ( not ( object ( is-a recommend_fine_reduction ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat recommend_fine_reduction ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat recommend_fine_reduction ?Defendant ) ) ) ( make-instance ?oid of recommend_fine_reduction ( defendant ?Defendant ) ) )")
   (derived-class recommend_fine_reduction))

([rule8-deductive] of ntm-deductive-rule
   (pos-name rule8-deductive-gen190)
   (depends-on lc:case lc:case money)
   (implies money)
   (deductive-rule "?gen48 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ) ?gen49 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ) ( not ( money ( defendant ?Defendant ) ) ) => ( money ( defendant ?Defendant ) )")
   (production-rule "( defrule rule8-deductive-gen190 ( declare ( salience ( calc-salience money ) ) ) ( run-deductive-rules ) ( object ( name ?gen48 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ) ( object ( name ?gen49 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:weapon_type \"B\" ) ) ( not ( object ( is-a money ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat money ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat money ?Defendant ) ) ) ( make-instance ?oid of money ( defendant ?Defendant ) ) )")
   (derived-class money))

([rule7-deductive] of ntm-deductive-rule
   (pos-name rule7-deductive-gen189)
   (depends-on lc:case confiscation)
   (implies confiscation)
   (deductive-rule "?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ) ( not ( confiscation ( defendant ?Defendant ) ) ) => ( confiscation ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7-deductive-gen189 ( declare ( salience ( calc-salience confiscation ) ) ) ( run-deductive-rules ) ( object ( name ?gen39 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ) ( not ( object ( is-a confiscation ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat confiscation ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat confiscation ?Defendant ) ) ) ( make-instance ?oid of confiscation ( defendant ?Defendant ) ) )")
   (derived-class confiscation))

([rule2-deductive] of ntm-deductive-rule
   (pos-name rule2-deductive-gen188)
   (depends-on lc:case harm_done_with_weapon)
   (implies harm_done_with_weapon)
   (deductive-rule "?gen30 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:harm_done \"yes\" ) ) ( not ( harm_done_with_weapon ( defendant ?Defendant ) ) ) => ( harm_done_with_weapon ( defendant ?Defendant ) )")
   (production-rule "( defrule rule2-deductive-gen188 ( declare ( salience ( calc-salience harm_done_with_weapon ) ) ) ( run-deductive-rules ) ( object ( name ?gen30 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:harm_done \"yes\" ) ) ( not ( object ( is-a harm_done_with_weapon ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat harm_done_with_weapon ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat harm_done_with_weapon ?Defendant ) ) ) ( make-instance ?oid of harm_done_with_weapon ( defendant ?Defendant ) ) )")
   (derived-class harm_done_with_weapon))

([rule111-deductive] of ntm-deductive-rule
   (pos-name rule111-deductive-gen187)
   (depends-on fine)
   (implies fine)
   (deductive-rule "( not ( fine ( defendant ?Defendant ) ) ) => ( fine ( defendant ?Defendant ) )")
   (production-rule "( defrule rule111-deductive-gen187 ( declare ( salience ( calc-salience fine ) ) ) ( run-deductive-rules ) ( not ( object ( is-a fine ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat fine ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat fine ?Defendant ) ) ) ( make-instance ?oid of fine ( defendant ?Defendant ) ) )")
   (derived-class fine))

([rule1-deductive] of ntm-deductive-rule
   (pos-name rule1-deductive-gen186)
   (depends-on lc:case jail_3_months)
   (implies jail_3_months)
   (deductive-rule "?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ) ( not ( jail_3_months ( defendant ?Defendant ) ) ) => ( jail_3_months ( defendant ?Defendant ) )")
   (production-rule "( defrule rule1-deductive-gen186 ( declare ( salience ( calc-salience jail_3_months ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"yes\" ) ) ( not ( object ( is-a jail_3_months ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat jail_3_months ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat jail_3_months ?Defendant ) ) ) ( make-instance ?oid of jail_3_months ( defendant ?Defendant ) ) )")
   (derived-class jail_3_months))

