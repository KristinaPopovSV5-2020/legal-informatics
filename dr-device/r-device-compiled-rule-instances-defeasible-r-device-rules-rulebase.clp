([pen22-defeasibly-dot] of derived-attribute-rule
   (pos-name pen22-defeasibly-dot-gen365)
   (depends-on declare to_pay_more recommend_fine_increase to_pay_more)
   (implies to_pay_more)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen22] ) ) ) ?gen328 <- ( to_pay_more ( value true ) ( positive 1 ) ( positive-derivator pen22 $? ) ) ( test ( eq ( class ?gen328 ) to_pay_more ) ) ( not ( and ?gen335 <- ( recommend_fine_increase ( defendant ?Defendant ) ( positive ?gen334 & : ( >= ?gen334 1 ) ) ) ?gen328 <- ( to_pay_more ( negative ~ 2 ) ( positive-overruled $?gen330 & : ( not ( member$ pen22 $?gen330 ) ) ) ) ) ) => ?gen328 <- ( to_pay_more ( positive 0 ) )"))

([pen22-defeasibly] of derived-attribute-rule
   (pos-name pen22-defeasibly-gen367)
   (depends-on declare recommend_fine_increase to_pay_more)
   (implies to_pay_more)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen22] ) ) ) ?gen335 <- ( recommend_fine_increase ( defendant ?Defendant ) ( positive ?gen334 & : ( >= ?gen334 1 ) ) ) ?gen328 <- ( to_pay_more ( value true ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen330 & : ( not ( member$ pen22 $?gen330 ) ) ) ) ( test ( eq ( class ?gen328 ) to_pay_more ) ) => ?gen328 <- ( to_pay_more ( positive 1 ) ( positive-derivator pen22 ?gen335 ) )"))

([pen22-overruled-dot] of derived-attribute-rule
   (pos-name pen22-overruled-dot-gen369)
   (depends-on declare to_pay_more recommend_fine_increase to_pay_more)
   (implies to_pay_more)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen22] ) ) ) ?gen328 <- ( to_pay_more ( value true ) ( negative-support $?gen331 ) ( negative-overruled $?gen332 & : ( subseq-pos ( create$ pen22-overruled $?gen331 $$$ $?gen332 ) ) ) ) ( test ( eq ( class ?gen328 ) to_pay_more ) ) ( not ( and ?gen335 <- ( recommend_fine_increase ( defendant ?Defendant ) ( positive ?gen334 & : ( >= ?gen334 1 ) ) ) ?gen328 <- ( to_pay_more ( positive-defeated $?gen330 & : ( not ( member$ pen22 $?gen330 ) ) ) ) ) ) => ( calc ( bind $?gen333 ( delete-member$ $?gen332 ( create$ pen22-overruled $?gen331 ) ) ) ) ?gen328 <- ( to_pay_more ( negative-overruled $?gen333 ) )"))

([pen22-overruled] of derived-attribute-rule
   (pos-name pen22-overruled-gen371)
   (depends-on declare recommend_fine_increase to_pay_more)
   (implies to_pay_more)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen22] ) ) ) ?gen335 <- ( recommend_fine_increase ( defendant ?Defendant ) ( positive ?gen334 & : ( >= ?gen334 1 ) ) ) ?gen328 <- ( to_pay_more ( value true ) ( negative-support $?gen331 ) ( negative-overruled $?gen332 & : ( not ( subseq-pos ( create$ pen22-overruled $?gen331 $$$ $?gen332 ) ) ) ) ( positive-defeated $?gen330 & : ( not ( member$ pen22 $?gen330 ) ) ) ) ( test ( eq ( class ?gen328 ) to_pay_more ) ) => ( calc ( bind $?gen333 ( create$ pen22-overruled $?gen331 $?gen332 ) ) ) ?gen328 <- ( to_pay_more ( negative-overruled $?gen333 ) )"))

([pen22-support] of derived-attribute-rule
   (pos-name pen22-support-gen373)
   (depends-on declare recommend_fine_increase to_pay_more)
   (implies to_pay_more)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen22] ) ) ) ?gen327 <- ( recommend_fine_increase ( defendant ?Defendant ) ) ?gen328 <- ( to_pay_more ( value true ) ( positive-support $?gen330 & : ( not ( subseq-pos ( create$ pen22 ?gen327 $$$ $?gen330 ) ) ) ) ) ( test ( eq ( class ?gen328 ) to_pay_more ) ) => ( calc ( bind $?gen333 ( create$ pen22 ?gen327 $?gen330 ) ) ) ?gen328 <- ( to_pay_more ( positive-support $?gen333 ) )"))

([pen21-defeasibly-dot] of derived-attribute-rule
   (pos-name pen21-defeasibly-dot-gen375)
   (depends-on declare jail_max_year destructive_weapon jail_max_year)
   (implies jail_max_year)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen21] ) ) ) ?gen319 <- ( jail_max_year ( value 8 ) ( positive 1 ) ( positive-derivator pen21 $? ) ) ( test ( eq ( class ?gen319 ) jail_max_year ) ) ( not ( and ?gen326 <- ( destructive_weapon ( defendant ?Defendant ) ( positive ?gen325 & : ( >= ?gen325 1 ) ) ) ?gen319 <- ( jail_max_year ( negative ~ 2 ) ( positive-overruled $?gen321 & : ( not ( member$ pen21 $?gen321 ) ) ) ) ) ) => ?gen319 <- ( jail_max_year ( positive 0 ) )"))

([pen21-defeasibly] of derived-attribute-rule
   (pos-name pen21-defeasibly-gen377)
   (depends-on declare destructive_weapon jail_max_year)
   (implies jail_max_year)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen21] ) ) ) ?gen326 <- ( destructive_weapon ( defendant ?Defendant ) ( positive ?gen325 & : ( >= ?gen325 1 ) ) ) ?gen319 <- ( jail_max_year ( value 8 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen321 & : ( not ( member$ pen21 $?gen321 ) ) ) ) ( test ( eq ( class ?gen319 ) jail_max_year ) ) => ?gen319 <- ( jail_max_year ( positive 1 ) ( positive-derivator pen21 ?gen326 ) )"))

([pen21-overruled-dot] of derived-attribute-rule
   (pos-name pen21-overruled-dot-gen379)
   (depends-on declare jail_max_year destructive_weapon jail_max_year)
   (implies jail_max_year)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen21] ) ) ) ?gen319 <- ( jail_max_year ( value 8 ) ( negative-support $?gen322 ) ( negative-overruled $?gen323 & : ( subseq-pos ( create$ pen21-overruled $?gen322 $$$ $?gen323 ) ) ) ) ( test ( eq ( class ?gen319 ) jail_max_year ) ) ( not ( and ?gen326 <- ( destructive_weapon ( defendant ?Defendant ) ( positive ?gen325 & : ( >= ?gen325 1 ) ) ) ?gen319 <- ( jail_max_year ( positive-defeated $?gen321 & : ( not ( member$ pen21 $?gen321 ) ) ) ) ) ) => ( calc ( bind $?gen324 ( delete-member$ $?gen323 ( create$ pen21-overruled $?gen322 ) ) ) ) ?gen319 <- ( jail_max_year ( negative-overruled $?gen324 ) )"))

([pen21-overruled] of derived-attribute-rule
   (pos-name pen21-overruled-gen381)
   (depends-on declare destructive_weapon jail_max_year)
   (implies jail_max_year)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen21] ) ) ) ?gen326 <- ( destructive_weapon ( defendant ?Defendant ) ( positive ?gen325 & : ( >= ?gen325 1 ) ) ) ?gen319 <- ( jail_max_year ( value 8 ) ( negative-support $?gen322 ) ( negative-overruled $?gen323 & : ( not ( subseq-pos ( create$ pen21-overruled $?gen322 $$$ $?gen323 ) ) ) ) ( positive-defeated $?gen321 & : ( not ( member$ pen21 $?gen321 ) ) ) ) ( test ( eq ( class ?gen319 ) jail_max_year ) ) => ( calc ( bind $?gen324 ( create$ pen21-overruled $?gen322 $?gen323 ) ) ) ?gen319 <- ( jail_max_year ( negative-overruled $?gen324 ) )"))

([pen21-support] of derived-attribute-rule
   (pos-name pen21-support-gen383)
   (depends-on declare destructive_weapon jail_max_year)
   (implies jail_max_year)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen21] ) ) ) ?gen318 <- ( destructive_weapon ( defendant ?Defendant ) ) ?gen319 <- ( jail_max_year ( value 8 ) ( positive-support $?gen321 & : ( not ( subseq-pos ( create$ pen21 ?gen318 $$$ $?gen321 ) ) ) ) ) ( test ( eq ( class ?gen319 ) jail_max_year ) ) => ( calc ( bind $?gen324 ( create$ pen21 ?gen318 $?gen321 ) ) ) ?gen319 <- ( jail_max_year ( positive-support $?gen324 ) )"))

([pen20-defeasibly-dot] of derived-attribute-rule
   (pos-name pen20-defeasibly-dot-gen385)
   (depends-on declare jail_min_year destructive_weapon jail_min_year)
   (implies jail_min_year)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen20] ) ) ) ?gen310 <- ( jail_min_year ( value 1 ) ( positive 1 ) ( positive-derivator pen20 $? ) ) ( test ( eq ( class ?gen310 ) jail_min_year ) ) ( not ( and ?gen317 <- ( destructive_weapon ( defendant ?Defendant ) ( positive ?gen316 & : ( >= ?gen316 1 ) ) ) ?gen310 <- ( jail_min_year ( negative ~ 2 ) ( positive-overruled $?gen312 & : ( not ( member$ pen20 $?gen312 ) ) ) ) ) ) => ?gen310 <- ( jail_min_year ( positive 0 ) )"))

([pen20-defeasibly] of derived-attribute-rule
   (pos-name pen20-defeasibly-gen387)
   (depends-on declare destructive_weapon jail_min_year)
   (implies jail_min_year)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen20] ) ) ) ?gen317 <- ( destructive_weapon ( defendant ?Defendant ) ( positive ?gen316 & : ( >= ?gen316 1 ) ) ) ?gen310 <- ( jail_min_year ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen312 & : ( not ( member$ pen20 $?gen312 ) ) ) ) ( test ( eq ( class ?gen310 ) jail_min_year ) ) => ?gen310 <- ( jail_min_year ( positive 1 ) ( positive-derivator pen20 ?gen317 ) )"))

([pen20-overruled-dot] of derived-attribute-rule
   (pos-name pen20-overruled-dot-gen389)
   (depends-on declare jail_min_year destructive_weapon jail_min_year)
   (implies jail_min_year)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen20] ) ) ) ?gen310 <- ( jail_min_year ( value 1 ) ( negative-support $?gen313 ) ( negative-overruled $?gen314 & : ( subseq-pos ( create$ pen20-overruled $?gen313 $$$ $?gen314 ) ) ) ) ( test ( eq ( class ?gen310 ) jail_min_year ) ) ( not ( and ?gen317 <- ( destructive_weapon ( defendant ?Defendant ) ( positive ?gen316 & : ( >= ?gen316 1 ) ) ) ?gen310 <- ( jail_min_year ( positive-defeated $?gen312 & : ( not ( member$ pen20 $?gen312 ) ) ) ) ) ) => ( calc ( bind $?gen315 ( delete-member$ $?gen314 ( create$ pen20-overruled $?gen313 ) ) ) ) ?gen310 <- ( jail_min_year ( negative-overruled $?gen315 ) )"))

([pen20-overruled] of derived-attribute-rule
   (pos-name pen20-overruled-gen391)
   (depends-on declare destructive_weapon jail_min_year)
   (implies jail_min_year)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen20] ) ) ) ?gen317 <- ( destructive_weapon ( defendant ?Defendant ) ( positive ?gen316 & : ( >= ?gen316 1 ) ) ) ?gen310 <- ( jail_min_year ( value 1 ) ( negative-support $?gen313 ) ( negative-overruled $?gen314 & : ( not ( subseq-pos ( create$ pen20-overruled $?gen313 $$$ $?gen314 ) ) ) ) ( positive-defeated $?gen312 & : ( not ( member$ pen20 $?gen312 ) ) ) ) ( test ( eq ( class ?gen310 ) jail_min_year ) ) => ( calc ( bind $?gen315 ( create$ pen20-overruled $?gen313 $?gen314 ) ) ) ?gen310 <- ( jail_min_year ( negative-overruled $?gen315 ) )"))

([pen20-support] of derived-attribute-rule
   (pos-name pen20-support-gen393)
   (depends-on declare destructive_weapon jail_min_year)
   (implies jail_min_year)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen20] ) ) ) ?gen309 <- ( destructive_weapon ( defendant ?Defendant ) ) ?gen310 <- ( jail_min_year ( value 1 ) ( positive-support $?gen312 & : ( not ( subseq-pos ( create$ pen20 ?gen309 $$$ $?gen312 ) ) ) ) ) ( test ( eq ( class ?gen310 ) jail_min_year ) ) => ( calc ( bind $?gen315 ( create$ pen20 ?gen309 $?gen312 ) ) ) ?gen310 <- ( jail_min_year ( positive-support $?gen315 ) )"))

([pen19-defeasibly-dot] of derived-attribute-rule
   (pos-name pen19-defeasibly-dot-gen455)
   (depends-on declare to_pay_min_3 found_outside_safe to_pay_min_3)
   (implies to_pay_min_3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen19] ) ) ) ?gen247 <- ( to_pay_min_3 ( value 30 ) ( positive 1 ) ( positive-derivator pen19 $? ) ) ( test ( eq ( class ?gen247 ) to_pay_min_3 ) ) ( not ( and ?gen254 <- ( found_outside_safe ( defendant ?Defendant ) ( positive ?gen253 & : ( >= ?gen253 1 ) ) ) ?gen247 <- ( to_pay_min_3 ( negative ~ 2 ) ( positive-overruled $?gen249 & : ( not ( member$ pen19 $?gen249 ) ) ) ) ) ) => ?gen247 <- ( to_pay_min_3 ( positive 0 ) )"))

([pen19-defeasibly] of derived-attribute-rule
   (pos-name pen19-defeasibly-gen457)
   (depends-on declare found_outside_safe to_pay_min_3)
   (implies to_pay_min_3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen19] ) ) ) ?gen254 <- ( found_outside_safe ( defendant ?Defendant ) ( positive ?gen253 & : ( >= ?gen253 1 ) ) ) ?gen247 <- ( to_pay_min_3 ( value 30 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen249 & : ( not ( member$ pen19 $?gen249 ) ) ) ) ( test ( eq ( class ?gen247 ) to_pay_min_3 ) ) => ?gen247 <- ( to_pay_min_3 ( positive 1 ) ( positive-derivator pen19 ?gen254 ) )"))

([pen19-overruled-dot] of derived-attribute-rule
   (pos-name pen19-overruled-dot-gen459)
   (depends-on declare to_pay_min_3 found_outside_safe to_pay_min_3)
   (implies to_pay_min_3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen19] ) ) ) ?gen247 <- ( to_pay_min_3 ( value 30 ) ( negative-support $?gen250 ) ( negative-overruled $?gen251 & : ( subseq-pos ( create$ pen19-overruled $?gen250 $$$ $?gen251 ) ) ) ) ( test ( eq ( class ?gen247 ) to_pay_min_3 ) ) ( not ( and ?gen254 <- ( found_outside_safe ( defendant ?Defendant ) ( positive ?gen253 & : ( >= ?gen253 1 ) ) ) ?gen247 <- ( to_pay_min_3 ( positive-defeated $?gen249 & : ( not ( member$ pen19 $?gen249 ) ) ) ) ) ) => ( calc ( bind $?gen252 ( delete-member$ $?gen251 ( create$ pen19-overruled $?gen250 ) ) ) ) ?gen247 <- ( to_pay_min_3 ( negative-overruled $?gen252 ) )"))

([pen19-overruled] of derived-attribute-rule
   (pos-name pen19-overruled-gen461)
   (depends-on declare found_outside_safe to_pay_min_3)
   (implies to_pay_min_3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen19] ) ) ) ?gen254 <- ( found_outside_safe ( defendant ?Defendant ) ( positive ?gen253 & : ( >= ?gen253 1 ) ) ) ?gen247 <- ( to_pay_min_3 ( value 30 ) ( negative-support $?gen250 ) ( negative-overruled $?gen251 & : ( not ( subseq-pos ( create$ pen19-overruled $?gen250 $$$ $?gen251 ) ) ) ) ( positive-defeated $?gen249 & : ( not ( member$ pen19 $?gen249 ) ) ) ) ( test ( eq ( class ?gen247 ) to_pay_min_3 ) ) => ( calc ( bind $?gen252 ( create$ pen19-overruled $?gen250 $?gen251 ) ) ) ?gen247 <- ( to_pay_min_3 ( negative-overruled $?gen252 ) )"))

([pen19-support] of derived-attribute-rule
   (pos-name pen19-support-gen463)
   (depends-on declare found_outside_safe to_pay_min_3)
   (implies to_pay_min_3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen19] ) ) ) ?gen246 <- ( found_outside_safe ( defendant ?Defendant ) ) ?gen247 <- ( to_pay_min_3 ( value 30 ) ( positive-support $?gen249 & : ( not ( subseq-pos ( create$ pen19 ?gen246 $$$ $?gen249 ) ) ) ) ) ( test ( eq ( class ?gen247 ) to_pay_min_3 ) ) => ( calc ( bind $?gen252 ( create$ pen19 ?gen246 $?gen249 ) ) ) ?gen247 <- ( to_pay_min_3 ( positive-support $?gen252 ) )"))

([pen18-defeasibly-dot] of derived-attribute-rule
   (pos-name pen18-defeasibly-dot-gen465)
   (depends-on declare to_pay_max_3 found_outside_safe to_pay_max_3)
   (implies to_pay_max_3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen18] ) ) ) ?gen238 <- ( to_pay_max_3 ( value 500 ) ( positive 1 ) ( positive-derivator pen18 $? ) ) ( test ( eq ( class ?gen238 ) to_pay_max_3 ) ) ( not ( and ?gen245 <- ( found_outside_safe ( defendant ?Defendant ) ( positive ?gen244 & : ( >= ?gen244 1 ) ) ) ?gen238 <- ( to_pay_max_3 ( negative ~ 2 ) ( positive-overruled $?gen240 & : ( not ( member$ pen18 $?gen240 ) ) ) ) ) ) => ?gen238 <- ( to_pay_max_3 ( positive 0 ) )"))

([pen18-defeasibly] of derived-attribute-rule
   (pos-name pen18-defeasibly-gen467)
   (depends-on declare found_outside_safe to_pay_max_3)
   (implies to_pay_max_3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen18] ) ) ) ?gen245 <- ( found_outside_safe ( defendant ?Defendant ) ( positive ?gen244 & : ( >= ?gen244 1 ) ) ) ?gen238 <- ( to_pay_max_3 ( value 500 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen240 & : ( not ( member$ pen18 $?gen240 ) ) ) ) ( test ( eq ( class ?gen238 ) to_pay_max_3 ) ) => ?gen238 <- ( to_pay_max_3 ( positive 1 ) ( positive-derivator pen18 ?gen245 ) )"))

([pen18-overruled-dot] of derived-attribute-rule
   (pos-name pen18-overruled-dot-gen469)
   (depends-on declare to_pay_max_3 found_outside_safe to_pay_max_3)
   (implies to_pay_max_3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen18] ) ) ) ?gen238 <- ( to_pay_max_3 ( value 500 ) ( negative-support $?gen241 ) ( negative-overruled $?gen242 & : ( subseq-pos ( create$ pen18-overruled $?gen241 $$$ $?gen242 ) ) ) ) ( test ( eq ( class ?gen238 ) to_pay_max_3 ) ) ( not ( and ?gen245 <- ( found_outside_safe ( defendant ?Defendant ) ( positive ?gen244 & : ( >= ?gen244 1 ) ) ) ?gen238 <- ( to_pay_max_3 ( positive-defeated $?gen240 & : ( not ( member$ pen18 $?gen240 ) ) ) ) ) ) => ( calc ( bind $?gen243 ( delete-member$ $?gen242 ( create$ pen18-overruled $?gen241 ) ) ) ) ?gen238 <- ( to_pay_max_3 ( negative-overruled $?gen243 ) )"))

([pen18-overruled] of derived-attribute-rule
   (pos-name pen18-overruled-gen471)
   (depends-on declare found_outside_safe to_pay_max_3)
   (implies to_pay_max_3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen18] ) ) ) ?gen245 <- ( found_outside_safe ( defendant ?Defendant ) ( positive ?gen244 & : ( >= ?gen244 1 ) ) ) ?gen238 <- ( to_pay_max_3 ( value 500 ) ( negative-support $?gen241 ) ( negative-overruled $?gen242 & : ( not ( subseq-pos ( create$ pen18-overruled $?gen241 $$$ $?gen242 ) ) ) ) ( positive-defeated $?gen240 & : ( not ( member$ pen18 $?gen240 ) ) ) ) ( test ( eq ( class ?gen238 ) to_pay_max_3 ) ) => ( calc ( bind $?gen243 ( create$ pen18-overruled $?gen241 $?gen242 ) ) ) ?gen238 <- ( to_pay_max_3 ( negative-overruled $?gen243 ) )"))

([pen18-support] of derived-attribute-rule
   (pos-name pen18-support-gen473)
   (depends-on declare found_outside_safe to_pay_max_3)
   (implies to_pay_max_3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen18] ) ) ) ?gen237 <- ( found_outside_safe ( defendant ?Defendant ) ) ?gen238 <- ( to_pay_max_3 ( value 500 ) ( positive-support $?gen240 & : ( not ( subseq-pos ( create$ pen18 ?gen237 $$$ $?gen240 ) ) ) ) ) ( test ( eq ( class ?gen238 ) to_pay_max_3 ) ) => ( calc ( bind $?gen243 ( create$ pen18 ?gen237 $?gen240 ) ) ) ?gen238 <- ( to_pay_max_3 ( positive-support $?gen243 ) )"))

([pen17-defeasibly-dot] of derived-attribute-rule
   (pos-name pen17-defeasibly-dot-gen475)
   (depends-on declare reduce_penalty reduce_penalty1 reduce_penalty)
   (implies reduce_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen17] ) ) ) ?gen229 <- ( reduce_penalty ( value true ) ( positive 1 ) ( positive-derivator pen17 $? ) ) ( test ( eq ( class ?gen229 ) reduce_penalty ) ) ( not ( and ?gen236 <- ( reduce_penalty1 ( defendant ?Defendant ) ( positive ?gen235 & : ( >= ?gen235 1 ) ) ) ?gen229 <- ( reduce_penalty ( negative ~ 2 ) ( positive-overruled $?gen231 & : ( not ( member$ pen17 $?gen231 ) ) ) ) ) ) => ?gen229 <- ( reduce_penalty ( positive 0 ) )"))

([pen17-defeasibly] of derived-attribute-rule
   (pos-name pen17-defeasibly-gen477)
   (depends-on declare reduce_penalty1 reduce_penalty)
   (implies reduce_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen17] ) ) ) ?gen236 <- ( reduce_penalty1 ( defendant ?Defendant ) ( positive ?gen235 & : ( >= ?gen235 1 ) ) ) ?gen229 <- ( reduce_penalty ( value true ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen231 & : ( not ( member$ pen17 $?gen231 ) ) ) ) ( test ( eq ( class ?gen229 ) reduce_penalty ) ) => ?gen229 <- ( reduce_penalty ( positive 1 ) ( positive-derivator pen17 ?gen236 ) )"))

([pen17-overruled-dot] of derived-attribute-rule
   (pos-name pen17-overruled-dot-gen479)
   (depends-on declare reduce_penalty reduce_penalty1 reduce_penalty)
   (implies reduce_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen17] ) ) ) ?gen229 <- ( reduce_penalty ( value true ) ( negative-support $?gen232 ) ( negative-overruled $?gen233 & : ( subseq-pos ( create$ pen17-overruled $?gen232 $$$ $?gen233 ) ) ) ) ( test ( eq ( class ?gen229 ) reduce_penalty ) ) ( not ( and ?gen236 <- ( reduce_penalty1 ( defendant ?Defendant ) ( positive ?gen235 & : ( >= ?gen235 1 ) ) ) ?gen229 <- ( reduce_penalty ( positive-defeated $?gen231 & : ( not ( member$ pen17 $?gen231 ) ) ) ) ) ) => ( calc ( bind $?gen234 ( delete-member$ $?gen233 ( create$ pen17-overruled $?gen232 ) ) ) ) ?gen229 <- ( reduce_penalty ( negative-overruled $?gen234 ) )"))

([pen17-overruled] of derived-attribute-rule
   (pos-name pen17-overruled-gen481)
   (depends-on declare reduce_penalty1 reduce_penalty)
   (implies reduce_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen17] ) ) ) ?gen236 <- ( reduce_penalty1 ( defendant ?Defendant ) ( positive ?gen235 & : ( >= ?gen235 1 ) ) ) ?gen229 <- ( reduce_penalty ( value true ) ( negative-support $?gen232 ) ( negative-overruled $?gen233 & : ( not ( subseq-pos ( create$ pen17-overruled $?gen232 $$$ $?gen233 ) ) ) ) ( positive-defeated $?gen231 & : ( not ( member$ pen17 $?gen231 ) ) ) ) ( test ( eq ( class ?gen229 ) reduce_penalty ) ) => ( calc ( bind $?gen234 ( create$ pen17-overruled $?gen232 $?gen233 ) ) ) ?gen229 <- ( reduce_penalty ( negative-overruled $?gen234 ) )"))

([pen17-support] of derived-attribute-rule
   (pos-name pen17-support-gen483)
   (depends-on declare reduce_penalty1 reduce_penalty)
   (implies reduce_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen17] ) ) ) ?gen228 <- ( reduce_penalty1 ( defendant ?Defendant ) ) ?gen229 <- ( reduce_penalty ( value true ) ( positive-support $?gen231 & : ( not ( subseq-pos ( create$ pen17 ?gen228 $$$ $?gen231 ) ) ) ) ) ( test ( eq ( class ?gen229 ) reduce_penalty ) ) => ( calc ( bind $?gen234 ( create$ pen17 ?gen228 $?gen231 ) ) ) ?gen229 <- ( reduce_penalty ( positive-support $?gen234 ) )"))

([pen16-defeasibly-dot] of derived-attribute-rule
   (pos-name pen16-defeasibly-dot-gen485)
   (depends-on declare jail_3_year harm_done_with_weapon jail_3_year)
   (implies jail_3_year)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen16] ) ) ) ?gen220 <- ( jail_3_year ( value 3 ) ( positive 1 ) ( positive-derivator pen16 $? ) ) ( test ( eq ( class ?gen220 ) jail_3_year ) ) ( not ( and ?gen227 <- ( harm_done_with_weapon ( defendant ?Defendant ) ( positive ?gen226 & : ( >= ?gen226 1 ) ) ) ?gen220 <- ( jail_3_year ( negative ~ 2 ) ( positive-overruled $?gen222 & : ( not ( member$ pen16 $?gen222 ) ) ) ) ) ) => ?gen220 <- ( jail_3_year ( positive 0 ) )"))

([pen16-defeasibly] of derived-attribute-rule
   (pos-name pen16-defeasibly-gen487)
   (depends-on declare harm_done_with_weapon jail_3_year)
   (implies jail_3_year)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen16] ) ) ) ?gen227 <- ( harm_done_with_weapon ( defendant ?Defendant ) ( positive ?gen226 & : ( >= ?gen226 1 ) ) ) ?gen220 <- ( jail_3_year ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen222 & : ( not ( member$ pen16 $?gen222 ) ) ) ) ( test ( eq ( class ?gen220 ) jail_3_year ) ) => ?gen220 <- ( jail_3_year ( positive 1 ) ( positive-derivator pen16 ?gen227 ) )"))

([pen16-overruled-dot] of derived-attribute-rule
   (pos-name pen16-overruled-dot-gen489)
   (depends-on declare jail_3_year harm_done_with_weapon jail_3_year)
   (implies jail_3_year)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen16] ) ) ) ?gen220 <- ( jail_3_year ( value 3 ) ( negative-support $?gen223 ) ( negative-overruled $?gen224 & : ( subseq-pos ( create$ pen16-overruled $?gen223 $$$ $?gen224 ) ) ) ) ( test ( eq ( class ?gen220 ) jail_3_year ) ) ( not ( and ?gen227 <- ( harm_done_with_weapon ( defendant ?Defendant ) ( positive ?gen226 & : ( >= ?gen226 1 ) ) ) ?gen220 <- ( jail_3_year ( positive-defeated $?gen222 & : ( not ( member$ pen16 $?gen222 ) ) ) ) ) ) => ( calc ( bind $?gen225 ( delete-member$ $?gen224 ( create$ pen16-overruled $?gen223 ) ) ) ) ?gen220 <- ( jail_3_year ( negative-overruled $?gen225 ) )"))

([pen16-overruled] of derived-attribute-rule
   (pos-name pen16-overruled-gen491)
   (depends-on declare harm_done_with_weapon jail_3_year)
   (implies jail_3_year)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen16] ) ) ) ?gen227 <- ( harm_done_with_weapon ( defendant ?Defendant ) ( positive ?gen226 & : ( >= ?gen226 1 ) ) ) ?gen220 <- ( jail_3_year ( value 3 ) ( negative-support $?gen223 ) ( negative-overruled $?gen224 & : ( not ( subseq-pos ( create$ pen16-overruled $?gen223 $$$ $?gen224 ) ) ) ) ( positive-defeated $?gen222 & : ( not ( member$ pen16 $?gen222 ) ) ) ) ( test ( eq ( class ?gen220 ) jail_3_year ) ) => ( calc ( bind $?gen225 ( create$ pen16-overruled $?gen223 $?gen224 ) ) ) ?gen220 <- ( jail_3_year ( negative-overruled $?gen225 ) )"))

([pen16-support] of derived-attribute-rule
   (pos-name pen16-support-gen493)
   (depends-on declare harm_done_with_weapon jail_3_year)
   (implies jail_3_year)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen16] ) ) ) ?gen219 <- ( harm_done_with_weapon ( defendant ?Defendant ) ) ?gen220 <- ( jail_3_year ( value 3 ) ( positive-support $?gen222 & : ( not ( subseq-pos ( create$ pen16 ?gen219 $$$ $?gen222 ) ) ) ) ) ( test ( eq ( class ?gen220 ) jail_3_year ) ) => ( calc ( bind $?gen225 ( create$ pen16 ?gen219 $?gen222 ) ) ) ?gen220 <- ( jail_3_year ( positive-support $?gen225 ) )"))

([pen15-defeasibly-dot] of derived-attribute-rule
   (pos-name pen15-defeasibly-dot-gen495)
   (depends-on declare to_pay_min2 money to_pay_min2)
   (implies to_pay_min2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen15] ) ) ) ?gen211 <- ( to_pay_min2 ( value 30 ) ( positive 1 ) ( positive-derivator pen15 $? ) ) ( test ( eq ( class ?gen211 ) to_pay_min2 ) ) ( not ( and ?gen218 <- ( money ( defendant ?Defendant ) ( positive ?gen217 & : ( >= ?gen217 1 ) ) ) ?gen211 <- ( to_pay_min2 ( negative ~ 2 ) ( positive-overruled $?gen213 & : ( not ( member$ pen15 $?gen213 ) ) ) ) ) ) => ?gen211 <- ( to_pay_min2 ( positive 0 ) )"))

([pen15-defeasibly] of derived-attribute-rule
   (pos-name pen15-defeasibly-gen497)
   (depends-on declare money to_pay_min2)
   (implies to_pay_min2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen15] ) ) ) ?gen218 <- ( money ( defendant ?Defendant ) ( positive ?gen217 & : ( >= ?gen217 1 ) ) ) ?gen211 <- ( to_pay_min2 ( value 30 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen213 & : ( not ( member$ pen15 $?gen213 ) ) ) ) ( test ( eq ( class ?gen211 ) to_pay_min2 ) ) => ?gen211 <- ( to_pay_min2 ( positive 1 ) ( positive-derivator pen15 ?gen218 ) )"))

([pen15-overruled-dot] of derived-attribute-rule
   (pos-name pen15-overruled-dot-gen499)
   (depends-on declare to_pay_min2 money to_pay_min2)
   (implies to_pay_min2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen15] ) ) ) ?gen211 <- ( to_pay_min2 ( value 30 ) ( negative-support $?gen214 ) ( negative-overruled $?gen215 & : ( subseq-pos ( create$ pen15-overruled $?gen214 $$$ $?gen215 ) ) ) ) ( test ( eq ( class ?gen211 ) to_pay_min2 ) ) ( not ( and ?gen218 <- ( money ( defendant ?Defendant ) ( positive ?gen217 & : ( >= ?gen217 1 ) ) ) ?gen211 <- ( to_pay_min2 ( positive-defeated $?gen213 & : ( not ( member$ pen15 $?gen213 ) ) ) ) ) ) => ( calc ( bind $?gen216 ( delete-member$ $?gen215 ( create$ pen15-overruled $?gen214 ) ) ) ) ?gen211 <- ( to_pay_min2 ( negative-overruled $?gen216 ) )"))

([pen15-overruled] of derived-attribute-rule
   (pos-name pen15-overruled-gen501)
   (depends-on declare money to_pay_min2)
   (implies to_pay_min2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen15] ) ) ) ?gen218 <- ( money ( defendant ?Defendant ) ( positive ?gen217 & : ( >= ?gen217 1 ) ) ) ?gen211 <- ( to_pay_min2 ( value 30 ) ( negative-support $?gen214 ) ( negative-overruled $?gen215 & : ( not ( subseq-pos ( create$ pen15-overruled $?gen214 $$$ $?gen215 ) ) ) ) ( positive-defeated $?gen213 & : ( not ( member$ pen15 $?gen213 ) ) ) ) ( test ( eq ( class ?gen211 ) to_pay_min2 ) ) => ( calc ( bind $?gen216 ( create$ pen15-overruled $?gen214 $?gen215 ) ) ) ?gen211 <- ( to_pay_min2 ( negative-overruled $?gen216 ) )"))

([pen15-support] of derived-attribute-rule
   (pos-name pen15-support-gen503)
   (depends-on declare money to_pay_min2)
   (implies to_pay_min2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen15] ) ) ) ?gen210 <- ( money ( defendant ?Defendant ) ) ?gen211 <- ( to_pay_min2 ( value 30 ) ( positive-support $?gen213 & : ( not ( subseq-pos ( create$ pen15 ?gen210 $$$ $?gen213 ) ) ) ) ) ( test ( eq ( class ?gen211 ) to_pay_min2 ) ) => ( calc ( bind $?gen216 ( create$ pen15 ?gen210 $?gen213 ) ) ) ?gen211 <- ( to_pay_min2 ( positive-support $?gen216 ) )"))

([pen14-defeasibly-dot] of derived-attribute-rule
   (pos-name pen14-defeasibly-dot-gen505)
   (depends-on declare to_pay_max2 money to_pay_max2)
   (implies to_pay_max2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen14] ) ) ) ?gen202 <- ( to_pay_max2 ( value 500 ) ( positive 1 ) ( positive-derivator pen14 $? ) ) ( test ( eq ( class ?gen202 ) to_pay_max2 ) ) ( not ( and ?gen209 <- ( money ( defendant ?Defendant ) ( positive ?gen208 & : ( >= ?gen208 1 ) ) ) ?gen202 <- ( to_pay_max2 ( negative ~ 2 ) ( positive-overruled $?gen204 & : ( not ( member$ pen14 $?gen204 ) ) ) ) ) ) => ?gen202 <- ( to_pay_max2 ( positive 0 ) )"))

([pen14-defeasibly] of derived-attribute-rule
   (pos-name pen14-defeasibly-gen507)
   (depends-on declare money to_pay_max2)
   (implies to_pay_max2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen14] ) ) ) ?gen209 <- ( money ( defendant ?Defendant ) ( positive ?gen208 & : ( >= ?gen208 1 ) ) ) ?gen202 <- ( to_pay_max2 ( value 500 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen204 & : ( not ( member$ pen14 $?gen204 ) ) ) ) ( test ( eq ( class ?gen202 ) to_pay_max2 ) ) => ?gen202 <- ( to_pay_max2 ( positive 1 ) ( positive-derivator pen14 ?gen209 ) )"))

([pen14-overruled-dot] of derived-attribute-rule
   (pos-name pen14-overruled-dot-gen509)
   (depends-on declare to_pay_max2 money to_pay_max2)
   (implies to_pay_max2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen14] ) ) ) ?gen202 <- ( to_pay_max2 ( value 500 ) ( negative-support $?gen205 ) ( negative-overruled $?gen206 & : ( subseq-pos ( create$ pen14-overruled $?gen205 $$$ $?gen206 ) ) ) ) ( test ( eq ( class ?gen202 ) to_pay_max2 ) ) ( not ( and ?gen209 <- ( money ( defendant ?Defendant ) ( positive ?gen208 & : ( >= ?gen208 1 ) ) ) ?gen202 <- ( to_pay_max2 ( positive-defeated $?gen204 & : ( not ( member$ pen14 $?gen204 ) ) ) ) ) ) => ( calc ( bind $?gen207 ( delete-member$ $?gen206 ( create$ pen14-overruled $?gen205 ) ) ) ) ?gen202 <- ( to_pay_max2 ( negative-overruled $?gen207 ) )"))

([pen14-overruled] of derived-attribute-rule
   (pos-name pen14-overruled-gen511)
   (depends-on declare money to_pay_max2)
   (implies to_pay_max2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen14] ) ) ) ?gen209 <- ( money ( defendant ?Defendant ) ( positive ?gen208 & : ( >= ?gen208 1 ) ) ) ?gen202 <- ( to_pay_max2 ( value 500 ) ( negative-support $?gen205 ) ( negative-overruled $?gen206 & : ( not ( subseq-pos ( create$ pen14-overruled $?gen205 $$$ $?gen206 ) ) ) ) ( positive-defeated $?gen204 & : ( not ( member$ pen14 $?gen204 ) ) ) ) ( test ( eq ( class ?gen202 ) to_pay_max2 ) ) => ( calc ( bind $?gen207 ( create$ pen14-overruled $?gen205 $?gen206 ) ) ) ?gen202 <- ( to_pay_max2 ( negative-overruled $?gen207 ) )"))

([pen14-support] of derived-attribute-rule
   (pos-name pen14-support-gen513)
   (depends-on declare money to_pay_max2)
   (implies to_pay_max2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen14] ) ) ) ?gen201 <- ( money ( defendant ?Defendant ) ) ?gen202 <- ( to_pay_max2 ( value 500 ) ( positive-support $?gen204 & : ( not ( subseq-pos ( create$ pen14 ?gen201 $$$ $?gen204 ) ) ) ) ) ( test ( eq ( class ?gen202 ) to_pay_max2 ) ) => ( calc ( bind $?gen207 ( create$ pen14 ?gen201 $?gen204 ) ) ) ?gen202 <- ( to_pay_max2 ( positive-support $?gen207 ) )"))

([pen13-defeasibly-dot] of derived-attribute-rule
   (pos-name pen13-defeasibly-dot-gen515)
   (depends-on declare to_pay_min is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen13] ) ) ) ?gen193 <- ( to_pay_min ( value 30 ) ( positive 1 ) ( positive-derivator pen13 $? ) ) ( test ( eq ( class ?gen193 ) to_pay_min ) ) ( not ( and ?gen200 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen199 & : ( >= ?gen199 1 ) ) ) ?gen193 <- ( to_pay_min ( negative ~ 2 ) ( positive-overruled $?gen195 & : ( not ( member$ pen13 $?gen195 ) ) ) ) ) ) => ?gen193 <- ( to_pay_min ( positive 0 ) )"))

([pen13-defeasibly] of derived-attribute-rule
   (pos-name pen13-defeasibly-gen517)
   (depends-on declare is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen13] ) ) ) ?gen200 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen199 & : ( >= ?gen199 1 ) ) ) ?gen193 <- ( to_pay_min ( value 30 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen195 & : ( not ( member$ pen13 $?gen195 ) ) ) ) ( test ( eq ( class ?gen193 ) to_pay_min ) ) => ?gen193 <- ( to_pay_min ( positive 1 ) ( positive-derivator pen13 ?gen200 ) )"))

([pen13-overruled-dot] of derived-attribute-rule
   (pos-name pen13-overruled-dot-gen519)
   (depends-on declare to_pay_min is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen13] ) ) ) ?gen193 <- ( to_pay_min ( value 30 ) ( negative-support $?gen196 ) ( negative-overruled $?gen197 & : ( subseq-pos ( create$ pen13-overruled $?gen196 $$$ $?gen197 ) ) ) ) ( test ( eq ( class ?gen193 ) to_pay_min ) ) ( not ( and ?gen200 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen199 & : ( >= ?gen199 1 ) ) ) ?gen193 <- ( to_pay_min ( positive-defeated $?gen195 & : ( not ( member$ pen13 $?gen195 ) ) ) ) ) ) => ( calc ( bind $?gen198 ( delete-member$ $?gen197 ( create$ pen13-overruled $?gen196 ) ) ) ) ?gen193 <- ( to_pay_min ( negative-overruled $?gen198 ) )"))

([pen13-overruled] of derived-attribute-rule
   (pos-name pen13-overruled-gen521)
   (depends-on declare is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen13] ) ) ) ?gen200 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen199 & : ( >= ?gen199 1 ) ) ) ?gen193 <- ( to_pay_min ( value 30 ) ( negative-support $?gen196 ) ( negative-overruled $?gen197 & : ( not ( subseq-pos ( create$ pen13-overruled $?gen196 $$$ $?gen197 ) ) ) ) ( positive-defeated $?gen195 & : ( not ( member$ pen13 $?gen195 ) ) ) ) ( test ( eq ( class ?gen193 ) to_pay_min ) ) => ( calc ( bind $?gen198 ( create$ pen13-overruled $?gen196 $?gen197 ) ) ) ?gen193 <- ( to_pay_min ( negative-overruled $?gen198 ) )"))

([pen13-support] of derived-attribute-rule
   (pos-name pen13-support-gen523)
   (depends-on declare is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen13] ) ) ) ?gen192 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ) ?gen193 <- ( to_pay_min ( value 30 ) ( positive-support $?gen195 & : ( not ( subseq-pos ( create$ pen13 ?gen192 $$$ $?gen195 ) ) ) ) ) ( test ( eq ( class ?gen193 ) to_pay_min ) ) => ( calc ( bind $?gen198 ( create$ pen13 ?gen192 $?gen195 ) ) ) ?gen193 <- ( to_pay_min ( positive-support $?gen198 ) )"))

([pen12-defeasibly-dot] of derived-attribute-rule
   (pos-name pen12-defeasibly-dot-gen525)
   (depends-on declare to_pay_max is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen12] ) ) ) ?gen184 <- ( to_pay_max ( value 500 ) ( positive 1 ) ( positive-derivator pen12 $? ) ) ( test ( eq ( class ?gen184 ) to_pay_max ) ) ( not ( and ?gen191 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen190 & : ( >= ?gen190 1 ) ) ) ?gen184 <- ( to_pay_max ( negative ~ 2 ) ( positive-overruled $?gen186 & : ( not ( member$ pen12 $?gen186 ) ) ) ) ) ) => ?gen184 <- ( to_pay_max ( positive 0 ) )"))

([pen12-defeasibly] of derived-attribute-rule
   (pos-name pen12-defeasibly-gen527)
   (depends-on declare is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen12] ) ) ) ?gen191 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen190 & : ( >= ?gen190 1 ) ) ) ?gen184 <- ( to_pay_max ( value 500 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen186 & : ( not ( member$ pen12 $?gen186 ) ) ) ) ( test ( eq ( class ?gen184 ) to_pay_max ) ) => ?gen184 <- ( to_pay_max ( positive 1 ) ( positive-derivator pen12 ?gen191 ) )"))

([pen12-overruled-dot] of derived-attribute-rule
   (pos-name pen12-overruled-dot-gen529)
   (depends-on declare to_pay_max is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen12] ) ) ) ?gen184 <- ( to_pay_max ( value 500 ) ( negative-support $?gen187 ) ( negative-overruled $?gen188 & : ( subseq-pos ( create$ pen12-overruled $?gen187 $$$ $?gen188 ) ) ) ) ( test ( eq ( class ?gen184 ) to_pay_max ) ) ( not ( and ?gen191 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen190 & : ( >= ?gen190 1 ) ) ) ?gen184 <- ( to_pay_max ( positive-defeated $?gen186 & : ( not ( member$ pen12 $?gen186 ) ) ) ) ) ) => ( calc ( bind $?gen189 ( delete-member$ $?gen188 ( create$ pen12-overruled $?gen187 ) ) ) ) ?gen184 <- ( to_pay_max ( negative-overruled $?gen189 ) )"))

([pen12-overruled] of derived-attribute-rule
   (pos-name pen12-overruled-gen531)
   (depends-on declare is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen12] ) ) ) ?gen191 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive ?gen190 & : ( >= ?gen190 1 ) ) ) ?gen184 <- ( to_pay_max ( value 500 ) ( negative-support $?gen187 ) ( negative-overruled $?gen188 & : ( not ( subseq-pos ( create$ pen12-overruled $?gen187 $$$ $?gen188 ) ) ) ) ( positive-defeated $?gen186 & : ( not ( member$ pen12 $?gen186 ) ) ) ) ( test ( eq ( class ?gen184 ) to_pay_max ) ) => ( calc ( bind $?gen189 ( create$ pen12-overruled $?gen187 $?gen188 ) ) ) ?gen184 <- ( to_pay_max ( negative-overruled $?gen189 ) )"))

([pen12-support] of derived-attribute-rule
   (pos-name pen12-support-gen533)
   (depends-on declare is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen12] ) ) ) ?gen183 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ) ?gen184 <- ( to_pay_max ( value 500 ) ( positive-support $?gen186 & : ( not ( subseq-pos ( create$ pen12 ?gen183 $$$ $?gen186 ) ) ) ) ) ( test ( eq ( class ?gen184 ) to_pay_max ) ) => ( calc ( bind $?gen189 ( create$ pen12 ?gen183 $?gen186 ) ) ) ?gen184 <- ( to_pay_max ( positive-support $?gen189 ) )"))

([pen11-defeasibly-dot] of derived-attribute-rule
   (pos-name pen11-defeasibly-dot-gen535)
   (depends-on declare to_increase_penalty recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen11] ) ) ) ?gen175 <- ( to_increase_penalty ( value true ) ( positive 1 ) ( positive-derivator pen11 $? ) ) ( test ( eq ( class ?gen175 ) to_increase_penalty ) ) ( not ( and ?gen182 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive ?gen181 & : ( >= ?gen181 1 ) ) ) ?gen175 <- ( to_increase_penalty ( negative ~ 2 ) ( positive-overruled $?gen177 & : ( not ( member$ pen11 $?gen177 ) ) ) ) ) ) => ?gen175 <- ( to_increase_penalty ( positive 0 ) )"))

([pen11-defeasibly] of derived-attribute-rule
   (pos-name pen11-defeasibly-gen537)
   (depends-on declare recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen11] ) ) ) ?gen182 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive ?gen181 & : ( >= ?gen181 1 ) ) ) ?gen175 <- ( to_increase_penalty ( value true ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen177 & : ( not ( member$ pen11 $?gen177 ) ) ) ) ( test ( eq ( class ?gen175 ) to_increase_penalty ) ) => ?gen175 <- ( to_increase_penalty ( positive 1 ) ( positive-derivator pen11 ?gen182 ) )"))

([pen11-overruled-dot] of derived-attribute-rule
   (pos-name pen11-overruled-dot-gen539)
   (depends-on declare to_increase_penalty recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen11] ) ) ) ?gen175 <- ( to_increase_penalty ( value true ) ( negative-support $?gen178 ) ( negative-overruled $?gen179 & : ( subseq-pos ( create$ pen11-overruled $?gen178 $$$ $?gen179 ) ) ) ) ( test ( eq ( class ?gen175 ) to_increase_penalty ) ) ( not ( and ?gen182 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive ?gen181 & : ( >= ?gen181 1 ) ) ) ?gen175 <- ( to_increase_penalty ( positive-defeated $?gen177 & : ( not ( member$ pen11 $?gen177 ) ) ) ) ) ) => ( calc ( bind $?gen180 ( delete-member$ $?gen179 ( create$ pen11-overruled $?gen178 ) ) ) ) ?gen175 <- ( to_increase_penalty ( negative-overruled $?gen180 ) )"))

([pen11-overruled] of derived-attribute-rule
   (pos-name pen11-overruled-gen541)
   (depends-on declare recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen11] ) ) ) ?gen182 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive ?gen181 & : ( >= ?gen181 1 ) ) ) ?gen175 <- ( to_increase_penalty ( value true ) ( negative-support $?gen178 ) ( negative-overruled $?gen179 & : ( not ( subseq-pos ( create$ pen11-overruled $?gen178 $$$ $?gen179 ) ) ) ) ( positive-defeated $?gen177 & : ( not ( member$ pen11 $?gen177 ) ) ) ) ( test ( eq ( class ?gen175 ) to_increase_penalty ) ) => ( calc ( bind $?gen180 ( create$ pen11-overruled $?gen178 $?gen179 ) ) ) ?gen175 <- ( to_increase_penalty ( negative-overruled $?gen180 ) )"))

([pen11-support] of derived-attribute-rule
   (pos-name pen11-support-gen543)
   (depends-on declare recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen11] ) ) ) ?gen174 <- ( recommend_increased_penalty ( defendant ?Defendant ) ) ?gen175 <- ( to_increase_penalty ( value true ) ( positive-support $?gen177 & : ( not ( subseq-pos ( create$ pen11 ?gen174 $$$ $?gen177 ) ) ) ) ) ( test ( eq ( class ?gen175 ) to_increase_penalty ) ) => ( calc ( bind $?gen180 ( create$ pen11 ?gen174 $?gen177 ) ) ) ?gen175 <- ( to_increase_penalty ( positive-support $?gen180 ) )"))

([pen10-defeasibly-dot] of derived-attribute-rule
   (pos-name pen10-defeasibly-dot-gen545)
   (depends-on declare to_pay_less recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen10] ) ) ) ?gen166 <- ( to_pay_less ( value true ) ( positive 1 ) ( positive-derivator pen10 $? ) ) ( test ( eq ( class ?gen166 ) to_pay_less ) ) ( not ( and ?gen173 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive ?gen172 & : ( >= ?gen172 1 ) ) ) ?gen166 <- ( to_pay_less ( negative ~ 2 ) ( positive-overruled $?gen168 & : ( not ( member$ pen10 $?gen168 ) ) ) ) ) ) => ?gen166 <- ( to_pay_less ( positive 0 ) )"))

([pen10-defeasibly] of derived-attribute-rule
   (pos-name pen10-defeasibly-gen547)
   (depends-on declare recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen10] ) ) ) ?gen173 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive ?gen172 & : ( >= ?gen172 1 ) ) ) ?gen166 <- ( to_pay_less ( value true ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen168 & : ( not ( member$ pen10 $?gen168 ) ) ) ) ( test ( eq ( class ?gen166 ) to_pay_less ) ) => ?gen166 <- ( to_pay_less ( positive 1 ) ( positive-derivator pen10 ?gen173 ) )"))

([pen10-overruled-dot] of derived-attribute-rule
   (pos-name pen10-overruled-dot-gen549)
   (depends-on declare to_pay_less recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen10] ) ) ) ?gen166 <- ( to_pay_less ( value true ) ( negative-support $?gen169 ) ( negative-overruled $?gen170 & : ( subseq-pos ( create$ pen10-overruled $?gen169 $$$ $?gen170 ) ) ) ) ( test ( eq ( class ?gen166 ) to_pay_less ) ) ( not ( and ?gen173 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive ?gen172 & : ( >= ?gen172 1 ) ) ) ?gen166 <- ( to_pay_less ( positive-defeated $?gen168 & : ( not ( member$ pen10 $?gen168 ) ) ) ) ) ) => ( calc ( bind $?gen171 ( delete-member$ $?gen170 ( create$ pen10-overruled $?gen169 ) ) ) ) ?gen166 <- ( to_pay_less ( negative-overruled $?gen171 ) )"))

([pen10-overruled] of derived-attribute-rule
   (pos-name pen10-overruled-gen551)
   (depends-on declare recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen10] ) ) ) ?gen173 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive ?gen172 & : ( >= ?gen172 1 ) ) ) ?gen166 <- ( to_pay_less ( value true ) ( negative-support $?gen169 ) ( negative-overruled $?gen170 & : ( not ( subseq-pos ( create$ pen10-overruled $?gen169 $$$ $?gen170 ) ) ) ) ( positive-defeated $?gen168 & : ( not ( member$ pen10 $?gen168 ) ) ) ) ( test ( eq ( class ?gen166 ) to_pay_less ) ) => ( calc ( bind $?gen171 ( create$ pen10-overruled $?gen169 $?gen170 ) ) ) ?gen166 <- ( to_pay_less ( negative-overruled $?gen171 ) )"))

([pen10-support] of derived-attribute-rule
   (pos-name pen10-support-gen553)
   (depends-on declare recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen10] ) ) ) ?gen165 <- ( recommend_fine_reduction ( defendant ?Defendant ) ) ?gen166 <- ( to_pay_less ( value true ) ( positive-support $?gen168 & : ( not ( subseq-pos ( create$ pen10 ?gen165 $$$ $?gen168 ) ) ) ) ) ( test ( eq ( class ?gen166 ) to_pay_less ) ) => ( calc ( bind $?gen171 ( create$ pen10 ?gen165 $?gen168 ) ) ) ?gen166 <- ( to_pay_less ( positive-support $?gen171 ) )"))

([pen7-defeasibly-dot] of derived-attribute-rule
   (pos-name pen7-defeasibly-dot-gen555)
   (depends-on declare confiscate_weapon confiscation confiscate_weapon)
   (implies confiscate_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen7] ) ) ) ?gen157 <- ( confiscate_weapon ( value true ) ( positive 1 ) ( positive-derivator pen7 $? ) ) ( test ( eq ( class ?gen157 ) confiscate_weapon ) ) ( not ( and ?gen164 <- ( confiscation ( defendant ?Defendant ) ( positive ?gen163 & : ( >= ?gen163 1 ) ) ) ?gen157 <- ( confiscate_weapon ( negative ~ 2 ) ( positive-overruled $?gen159 & : ( not ( member$ pen7 $?gen159 ) ) ) ) ) ) => ?gen157 <- ( confiscate_weapon ( positive 0 ) )"))

([pen7-defeasibly] of derived-attribute-rule
   (pos-name pen7-defeasibly-gen557)
   (depends-on declare confiscation confiscate_weapon)
   (implies confiscate_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen7] ) ) ) ?gen164 <- ( confiscation ( defendant ?Defendant ) ( positive ?gen163 & : ( >= ?gen163 1 ) ) ) ?gen157 <- ( confiscate_weapon ( value true ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen159 & : ( not ( member$ pen7 $?gen159 ) ) ) ) ( test ( eq ( class ?gen157 ) confiscate_weapon ) ) => ?gen157 <- ( confiscate_weapon ( positive 1 ) ( positive-derivator pen7 ?gen164 ) )"))

([pen7-overruled-dot] of derived-attribute-rule
   (pos-name pen7-overruled-dot-gen559)
   (depends-on declare confiscate_weapon confiscation confiscate_weapon)
   (implies confiscate_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen7] ) ) ) ?gen157 <- ( confiscate_weapon ( value true ) ( negative-support $?gen160 ) ( negative-overruled $?gen161 & : ( subseq-pos ( create$ pen7-overruled $?gen160 $$$ $?gen161 ) ) ) ) ( test ( eq ( class ?gen157 ) confiscate_weapon ) ) ( not ( and ?gen164 <- ( confiscation ( defendant ?Defendant ) ( positive ?gen163 & : ( >= ?gen163 1 ) ) ) ?gen157 <- ( confiscate_weapon ( positive-defeated $?gen159 & : ( not ( member$ pen7 $?gen159 ) ) ) ) ) ) => ( calc ( bind $?gen162 ( delete-member$ $?gen161 ( create$ pen7-overruled $?gen160 ) ) ) ) ?gen157 <- ( confiscate_weapon ( negative-overruled $?gen162 ) )"))

([pen7-overruled] of derived-attribute-rule
   (pos-name pen7-overruled-gen561)
   (depends-on declare confiscation confiscate_weapon)
   (implies confiscate_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen7] ) ) ) ?gen164 <- ( confiscation ( defendant ?Defendant ) ( positive ?gen163 & : ( >= ?gen163 1 ) ) ) ?gen157 <- ( confiscate_weapon ( value true ) ( negative-support $?gen160 ) ( negative-overruled $?gen161 & : ( not ( subseq-pos ( create$ pen7-overruled $?gen160 $$$ $?gen161 ) ) ) ) ( positive-defeated $?gen159 & : ( not ( member$ pen7 $?gen159 ) ) ) ) ( test ( eq ( class ?gen157 ) confiscate_weapon ) ) => ( calc ( bind $?gen162 ( create$ pen7-overruled $?gen160 $?gen161 ) ) ) ?gen157 <- ( confiscate_weapon ( negative-overruled $?gen162 ) )"))

([pen7-support] of derived-attribute-rule
   (pos-name pen7-support-gen563)
   (depends-on declare confiscation confiscate_weapon)
   (implies confiscate_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen7] ) ) ) ?gen156 <- ( confiscation ( defendant ?Defendant ) ) ?gen157 <- ( confiscate_weapon ( value true ) ( positive-support $?gen159 & : ( not ( subseq-pos ( create$ pen7 ?gen156 $$$ $?gen159 ) ) ) ) ) ( test ( eq ( class ?gen157 ) confiscate_weapon ) ) => ( calc ( bind $?gen162 ( create$ pen7 ?gen156 $?gen159 ) ) ) ?gen157 <- ( confiscate_weapon ( positive-support $?gen162 ) )"))

([pen1-defeasibly-dot] of derived-attribute-rule
   (pos-name pen1-defeasibly-dot-gen565)
   (depends-on declare imprisonment_3 jail_3_months imprisonment_3)
   (implies imprisonment_3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen1] ) ) ) ?gen148 <- ( imprisonment_3 ( value 3 ) ( positive 1 ) ( positive-derivator pen1 $? ) ) ( test ( eq ( class ?gen148 ) imprisonment_3 ) ) ( not ( and ?gen155 <- ( jail_3_months ( defendant ?Defendant ) ( positive ?gen154 & : ( >= ?gen154 1 ) ) ) ?gen148 <- ( imprisonment_3 ( negative ~ 2 ) ( positive-overruled $?gen150 & : ( not ( member$ pen1 $?gen150 ) ) ) ) ) ) => ?gen148 <- ( imprisonment_3 ( positive 0 ) )"))

([pen1-defeasibly] of derived-attribute-rule
   (pos-name pen1-defeasibly-gen567)
   (depends-on declare jail_3_months imprisonment_3)
   (implies imprisonment_3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen1] ) ) ) ?gen155 <- ( jail_3_months ( defendant ?Defendant ) ( positive ?gen154 & : ( >= ?gen154 1 ) ) ) ?gen148 <- ( imprisonment_3 ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen150 & : ( not ( member$ pen1 $?gen150 ) ) ) ) ( test ( eq ( class ?gen148 ) imprisonment_3 ) ) => ?gen148 <- ( imprisonment_3 ( positive 1 ) ( positive-derivator pen1 ?gen155 ) )"))

([pen1-overruled-dot] of derived-attribute-rule
   (pos-name pen1-overruled-dot-gen569)
   (depends-on declare imprisonment_3 jail_3_months imprisonment_3)
   (implies imprisonment_3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen1] ) ) ) ?gen148 <- ( imprisonment_3 ( value 3 ) ( negative-support $?gen151 ) ( negative-overruled $?gen152 & : ( subseq-pos ( create$ pen1-overruled $?gen151 $$$ $?gen152 ) ) ) ) ( test ( eq ( class ?gen148 ) imprisonment_3 ) ) ( not ( and ?gen155 <- ( jail_3_months ( defendant ?Defendant ) ( positive ?gen154 & : ( >= ?gen154 1 ) ) ) ?gen148 <- ( imprisonment_3 ( positive-defeated $?gen150 & : ( not ( member$ pen1 $?gen150 ) ) ) ) ) ) => ( calc ( bind $?gen153 ( delete-member$ $?gen152 ( create$ pen1-overruled $?gen151 ) ) ) ) ?gen148 <- ( imprisonment_3 ( negative-overruled $?gen153 ) )"))

([pen1-overruled] of derived-attribute-rule
   (pos-name pen1-overruled-gen571)
   (depends-on declare jail_3_months imprisonment_3)
   (implies imprisonment_3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen1] ) ) ) ?gen155 <- ( jail_3_months ( defendant ?Defendant ) ( positive ?gen154 & : ( >= ?gen154 1 ) ) ) ?gen148 <- ( imprisonment_3 ( value 3 ) ( negative-support $?gen151 ) ( negative-overruled $?gen152 & : ( not ( subseq-pos ( create$ pen1-overruled $?gen151 $$$ $?gen152 ) ) ) ) ( positive-defeated $?gen150 & : ( not ( member$ pen1 $?gen150 ) ) ) ) ( test ( eq ( class ?gen148 ) imprisonment_3 ) ) => ( calc ( bind $?gen153 ( create$ pen1-overruled $?gen151 $?gen152 ) ) ) ?gen148 <- ( imprisonment_3 ( negative-overruled $?gen153 ) )"))

([pen1-support] of derived-attribute-rule
   (pos-name pen1-support-gen573)
   (depends-on declare jail_3_months imprisonment_3)
   (implies imprisonment_3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen1] ) ) ) ?gen147 <- ( jail_3_months ( defendant ?Defendant ) ) ?gen148 <- ( imprisonment_3 ( value 3 ) ( positive-support $?gen150 & : ( not ( subseq-pos ( create$ pen1 ?gen147 $$$ $?gen150 ) ) ) ) ) ( test ( eq ( class ?gen148 ) imprisonment_3 ) ) => ( calc ( bind $?gen153 ( create$ pen1 ?gen147 $?gen150 ) ) ) ?gen148 <- ( imprisonment_3 ( positive-support $?gen153 ) )"))

([rule11-defeasibly-dot] of derived-attribute-rule
   (pos-name rule11-defeasibly-dot-gen575)
   (depends-on declare is_high_category_weapon_in_public lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule11] ) ) ) ?gen139 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule11 $? ) ) ( test ( eq ( class ?gen139 ) is_high_category_weapon_in_public ) ) ( not ( and ?gen146 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"javno\" ) ( positive ?gen145 & : ( >= ?gen145 1 ) ) ) ?gen139 <- ( is_high_category_weapon_in_public ( negative ~ 2 ) ( positive-overruled $?gen141 & : ( not ( member$ rule11 $?gen141 ) ) ) ) ) ) => ?gen139 <- ( is_high_category_weapon_in_public ( positive 0 ) )"))

([rule11-defeasibly] of derived-attribute-rule
   (pos-name rule11-defeasibly-gen577)
   (depends-on declare lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule11] ) ) ) ?gen146 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"javno\" ) ( positive ?gen145 & : ( >= ?gen145 1 ) ) ) ?gen139 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen141 & : ( not ( member$ rule11 $?gen141 ) ) ) ) ( test ( eq ( class ?gen139 ) is_high_category_weapon_in_public ) ) => ?gen139 <- ( is_high_category_weapon_in_public ( positive 1 ) ( positive-derivator rule11 ?gen146 ) )"))

([rule11-overruled-dot] of derived-attribute-rule
   (pos-name rule11-overruled-dot-gen579)
   (depends-on declare is_high_category_weapon_in_public lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule11] ) ) ) ?gen139 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( negative-support $?gen142 ) ( negative-overruled $?gen143 & : ( subseq-pos ( create$ rule11-overruled $?gen142 $$$ $?gen143 ) ) ) ) ( test ( eq ( class ?gen139 ) is_high_category_weapon_in_public ) ) ( not ( and ?gen146 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"javno\" ) ( positive ?gen145 & : ( >= ?gen145 1 ) ) ) ?gen139 <- ( is_high_category_weapon_in_public ( positive-defeated $?gen141 & : ( not ( member$ rule11 $?gen141 ) ) ) ) ) ) => ( calc ( bind $?gen144 ( delete-member$ $?gen143 ( create$ rule11-overruled $?gen142 ) ) ) ) ?gen139 <- ( is_high_category_weapon_in_public ( negative-overruled $?gen144 ) )"))

([rule11-overruled] of derived-attribute-rule
   (pos-name rule11-overruled-gen581)
   (depends-on declare lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule11] ) ) ) ?gen146 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"javno\" ) ( positive ?gen145 & : ( >= ?gen145 1 ) ) ) ?gen139 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( negative-support $?gen142 ) ( negative-overruled $?gen143 & : ( not ( subseq-pos ( create$ rule11-overruled $?gen142 $$$ $?gen143 ) ) ) ) ( positive-defeated $?gen141 & : ( not ( member$ rule11 $?gen141 ) ) ) ) ( test ( eq ( class ?gen139 ) is_high_category_weapon_in_public ) ) => ( calc ( bind $?gen144 ( create$ rule11-overruled $?gen142 $?gen143 ) ) ) ?gen139 <- ( is_high_category_weapon_in_public ( negative-overruled $?gen144 ) )"))

([rule11-support] of derived-attribute-rule
   (pos-name rule11-support-gen583)
   (depends-on declare lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule11] ) ) ) ?gen138 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"javno\" ) ) ?gen139 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ( positive-support $?gen141 & : ( not ( subseq-pos ( create$ rule11 ?gen138 $$$ $?gen141 ) ) ) ) ) ( test ( eq ( class ?gen139 ) is_high_category_weapon_in_public ) ) => ( calc ( bind $?gen144 ( create$ rule11 ?gen138 $?gen141 ) ) ) ?gen139 <- ( is_high_category_weapon_in_public ( positive-support $?gen144 ) )"))

([rule403-defeasibly-dot] of derived-attribute-rule
   (pos-name rule403-defeasibly-dot-gen585)
   (depends-on declare destructive_weapon lc:case destructive_weapon)
   (implies destructive_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule403] ) ) ) ?gen130 <- ( destructive_weapon ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule403 $? ) ) ( test ( eq ( class ?gen130 ) destructive_weapon ) ) ( not ( and ?gen137 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_weapon_type_A \"da\" ) ( positive ?gen136 & : ( >= ?gen136 1 ) ) ) ?gen130 <- ( destructive_weapon ( negative ~ 2 ) ( positive-overruled $?gen132 & : ( not ( member$ rule403 $?gen132 ) ) ) ) ) ) => ?gen130 <- ( destructive_weapon ( positive 0 ) )"))

([rule403-defeasibly] of derived-attribute-rule
   (pos-name rule403-defeasibly-gen587)
   (depends-on declare lc:case destructive_weapon)
   (implies destructive_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule403] ) ) ) ?gen137 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_weapon_type_A \"da\" ) ( positive ?gen136 & : ( >= ?gen136 1 ) ) ) ?gen130 <- ( destructive_weapon ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen132 & : ( not ( member$ rule403 $?gen132 ) ) ) ) ( test ( eq ( class ?gen130 ) destructive_weapon ) ) => ?gen130 <- ( destructive_weapon ( positive 1 ) ( positive-derivator rule403 ?gen137 ) )"))

([rule403-overruled-dot] of derived-attribute-rule
   (pos-name rule403-overruled-dot-gen589)
   (depends-on declare destructive_weapon lc:case destructive_weapon)
   (implies destructive_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule403] ) ) ) ?gen130 <- ( destructive_weapon ( defendant ?Defendant ) ( negative-support $?gen133 ) ( negative-overruled $?gen134 & : ( subseq-pos ( create$ rule403-overruled $?gen133 $$$ $?gen134 ) ) ) ) ( test ( eq ( class ?gen130 ) destructive_weapon ) ) ( not ( and ?gen137 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_weapon_type_A \"da\" ) ( positive ?gen136 & : ( >= ?gen136 1 ) ) ) ?gen130 <- ( destructive_weapon ( positive-defeated $?gen132 & : ( not ( member$ rule403 $?gen132 ) ) ) ) ) ) => ( calc ( bind $?gen135 ( delete-member$ $?gen134 ( create$ rule403-overruled $?gen133 ) ) ) ) ?gen130 <- ( destructive_weapon ( negative-overruled $?gen135 ) )"))

([rule403-overruled] of derived-attribute-rule
   (pos-name rule403-overruled-gen591)
   (depends-on declare lc:case destructive_weapon)
   (implies destructive_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule403] ) ) ) ?gen137 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_weapon_type_A \"da\" ) ( positive ?gen136 & : ( >= ?gen136 1 ) ) ) ?gen130 <- ( destructive_weapon ( defendant ?Defendant ) ( negative-support $?gen133 ) ( negative-overruled $?gen134 & : ( not ( subseq-pos ( create$ rule403-overruled $?gen133 $$$ $?gen134 ) ) ) ) ( positive-defeated $?gen132 & : ( not ( member$ rule403 $?gen132 ) ) ) ) ( test ( eq ( class ?gen130 ) destructive_weapon ) ) => ( calc ( bind $?gen135 ( create$ rule403-overruled $?gen133 $?gen134 ) ) ) ?gen130 <- ( destructive_weapon ( negative-overruled $?gen135 ) )"))

([rule403-support] of derived-attribute-rule
   (pos-name rule403-support-gen593)
   (depends-on declare lc:case destructive_weapon)
   (implies destructive_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule403] ) ) ) ?gen129 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_weapon_type_A \"da\" ) ) ?gen130 <- ( destructive_weapon ( defendant ?Defendant ) ( positive-support $?gen132 & : ( not ( subseq-pos ( create$ rule403 ?gen129 $$$ $?gen132 ) ) ) ) ) ( test ( eq ( class ?gen130 ) destructive_weapon ) ) => ( calc ( bind $?gen135 ( create$ rule403 ?gen129 $?gen132 ) ) ) ?gen130 <- ( destructive_weapon ( positive-support $?gen135 ) )"))

([rule58-defeasibly-dot] of derived-attribute-rule
   (pos-name rule58-defeasibly-dot-gen595)
   (depends-on declare found_outside_safe lc:case found_outside_safe)
   (implies found_outside_safe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule58] ) ) ) ?gen121 <- ( found_outside_safe ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule58 $? ) ) ( test ( eq ( class ?gen121 ) found_outside_safe ) ) ( not ( and ?gen128 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"drugo\" ) ( positive ?gen127 & : ( >= ?gen127 1 ) ) ) ?gen121 <- ( found_outside_safe ( negative ~ 2 ) ( positive-overruled $?gen123 & : ( not ( member$ rule58 $?gen123 ) ) ) ) ) ) => ?gen121 <- ( found_outside_safe ( positive 0 ) )"))

([rule58-defeasibly] of derived-attribute-rule
   (pos-name rule58-defeasibly-gen597)
   (depends-on declare lc:case found_outside_safe)
   (implies found_outside_safe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule58] ) ) ) ?gen128 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"drugo\" ) ( positive ?gen127 & : ( >= ?gen127 1 ) ) ) ?gen121 <- ( found_outside_safe ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen123 & : ( not ( member$ rule58 $?gen123 ) ) ) ) ( test ( eq ( class ?gen121 ) found_outside_safe ) ) => ?gen121 <- ( found_outside_safe ( positive 1 ) ( positive-derivator rule58 ?gen128 ) )"))

([rule58-overruled-dot] of derived-attribute-rule
   (pos-name rule58-overruled-dot-gen599)
   (depends-on declare found_outside_safe lc:case found_outside_safe)
   (implies found_outside_safe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule58] ) ) ) ?gen121 <- ( found_outside_safe ( defendant ?Defendant ) ( negative-support $?gen124 ) ( negative-overruled $?gen125 & : ( subseq-pos ( create$ rule58-overruled $?gen124 $$$ $?gen125 ) ) ) ) ( test ( eq ( class ?gen121 ) found_outside_safe ) ) ( not ( and ?gen128 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"drugo\" ) ( positive ?gen127 & : ( >= ?gen127 1 ) ) ) ?gen121 <- ( found_outside_safe ( positive-defeated $?gen123 & : ( not ( member$ rule58 $?gen123 ) ) ) ) ) ) => ( calc ( bind $?gen126 ( delete-member$ $?gen125 ( create$ rule58-overruled $?gen124 ) ) ) ) ?gen121 <- ( found_outside_safe ( negative-overruled $?gen126 ) )"))

([rule58-overruled] of derived-attribute-rule
   (pos-name rule58-overruled-gen601)
   (depends-on declare lc:case found_outside_safe)
   (implies found_outside_safe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule58] ) ) ) ?gen128 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"drugo\" ) ( positive ?gen127 & : ( >= ?gen127 1 ) ) ) ?gen121 <- ( found_outside_safe ( defendant ?Defendant ) ( negative-support $?gen124 ) ( negative-overruled $?gen125 & : ( not ( subseq-pos ( create$ rule58-overruled $?gen124 $$$ $?gen125 ) ) ) ) ( positive-defeated $?gen123 & : ( not ( member$ rule58 $?gen123 ) ) ) ) ( test ( eq ( class ?gen121 ) found_outside_safe ) ) => ( calc ( bind $?gen126 ( create$ rule58-overruled $?gen124 $?gen125 ) ) ) ?gen121 <- ( found_outside_safe ( negative-overruled $?gen126 ) )"))

([rule58-support] of derived-attribute-rule
   (pos-name rule58-support-gen603)
   (depends-on declare lc:case found_outside_safe)
   (implies found_outside_safe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule58] ) ) ) ?gen120 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"drugo\" ) ) ?gen121 <- ( found_outside_safe ( defendant ?Defendant ) ( positive-support $?gen123 & : ( not ( subseq-pos ( create$ rule58 ?gen120 $$$ $?gen123 ) ) ) ) ) ( test ( eq ( class ?gen121 ) found_outside_safe ) ) => ( calc ( bind $?gen126 ( create$ rule58 ?gen120 $?gen123 ) ) ) ?gen121 <- ( found_outside_safe ( positive-support $?gen126 ) )"))

([rule57-defeasibly-dot] of derived-attribute-rule
   (pos-name rule57-defeasibly-dot-gen605)
   (depends-on declare found_outside_safe lc:case found_outside_safe)
   (implies found_outside_safe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule57] ) ) ) ?gen112 <- ( found_outside_safe ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule57 $? ) ) ( test ( eq ( class ?gen112 ) found_outside_safe ) ) ( not ( and ?gen119 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"javno\" ) ( positive ?gen118 & : ( >= ?gen118 1 ) ) ) ?gen112 <- ( found_outside_safe ( negative ~ 2 ) ( positive-overruled $?gen114 & : ( not ( member$ rule57 $?gen114 ) ) ) ) ) ) => ?gen112 <- ( found_outside_safe ( positive 0 ) )"))

([rule57-defeasibly] of derived-attribute-rule
   (pos-name rule57-defeasibly-gen607)
   (depends-on declare lc:case found_outside_safe)
   (implies found_outside_safe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule57] ) ) ) ?gen119 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"javno\" ) ( positive ?gen118 & : ( >= ?gen118 1 ) ) ) ?gen112 <- ( found_outside_safe ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen114 & : ( not ( member$ rule57 $?gen114 ) ) ) ) ( test ( eq ( class ?gen112 ) found_outside_safe ) ) => ?gen112 <- ( found_outside_safe ( positive 1 ) ( positive-derivator rule57 ?gen119 ) )"))

([rule57-overruled-dot] of derived-attribute-rule
   (pos-name rule57-overruled-dot-gen609)
   (depends-on declare found_outside_safe lc:case found_outside_safe)
   (implies found_outside_safe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule57] ) ) ) ?gen112 <- ( found_outside_safe ( defendant ?Defendant ) ( negative-support $?gen115 ) ( negative-overruled $?gen116 & : ( subseq-pos ( create$ rule57-overruled $?gen115 $$$ $?gen116 ) ) ) ) ( test ( eq ( class ?gen112 ) found_outside_safe ) ) ( not ( and ?gen119 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"javno\" ) ( positive ?gen118 & : ( >= ?gen118 1 ) ) ) ?gen112 <- ( found_outside_safe ( positive-defeated $?gen114 & : ( not ( member$ rule57 $?gen114 ) ) ) ) ) ) => ( calc ( bind $?gen117 ( delete-member$ $?gen116 ( create$ rule57-overruled $?gen115 ) ) ) ) ?gen112 <- ( found_outside_safe ( negative-overruled $?gen117 ) )"))

([rule57-overruled] of derived-attribute-rule
   (pos-name rule57-overruled-gen611)
   (depends-on declare lc:case found_outside_safe)
   (implies found_outside_safe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule57] ) ) ) ?gen119 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"javno\" ) ( positive ?gen118 & : ( >= ?gen118 1 ) ) ) ?gen112 <- ( found_outside_safe ( defendant ?Defendant ) ( negative-support $?gen115 ) ( negative-overruled $?gen116 & : ( not ( subseq-pos ( create$ rule57-overruled $?gen115 $$$ $?gen116 ) ) ) ) ( positive-defeated $?gen114 & : ( not ( member$ rule57 $?gen114 ) ) ) ) ( test ( eq ( class ?gen112 ) found_outside_safe ) ) => ( calc ( bind $?gen117 ( create$ rule57-overruled $?gen115 $?gen116 ) ) ) ?gen112 <- ( found_outside_safe ( negative-overruled $?gen117 ) )"))

([rule57-support] of derived-attribute-rule
   (pos-name rule57-support-gen613)
   (depends-on declare lc:case found_outside_safe)
   (implies found_outside_safe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule57] ) ) ) ?gen111 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"javno\" ) ) ?gen112 <- ( found_outside_safe ( defendant ?Defendant ) ( positive-support $?gen114 & : ( not ( subseq-pos ( create$ rule57 ?gen111 $$$ $?gen114 ) ) ) ) ) ( test ( eq ( class ?gen112 ) found_outside_safe ) ) => ( calc ( bind $?gen117 ( create$ rule57 ?gen111 $?gen114 ) ) ) ?gen112 <- ( found_outside_safe ( positive-support $?gen117 ) )"))

([rule56-defeasibly-dot] of derived-attribute-rule
   (pos-name rule56-defeasibly-dot-gen615)
   (depends-on declare found_outside_safe lc:case found_outside_safe)
   (implies found_outside_safe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule56] ) ) ) ?gen103 <- ( found_outside_safe ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule56 $? ) ) ( test ( eq ( class ?gen103 ) found_outside_safe ) ) ( not ( and ?gen110 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"auto\" ) ( positive ?gen109 & : ( >= ?gen109 1 ) ) ) ?gen103 <- ( found_outside_safe ( negative ~ 2 ) ( positive-overruled $?gen105 & : ( not ( member$ rule56 $?gen105 ) ) ) ) ) ) => ?gen103 <- ( found_outside_safe ( positive 0 ) )"))

([rule56-defeasibly] of derived-attribute-rule
   (pos-name rule56-defeasibly-gen617)
   (depends-on declare lc:case found_outside_safe)
   (implies found_outside_safe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule56] ) ) ) ?gen110 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"auto\" ) ( positive ?gen109 & : ( >= ?gen109 1 ) ) ) ?gen103 <- ( found_outside_safe ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen105 & : ( not ( member$ rule56 $?gen105 ) ) ) ) ( test ( eq ( class ?gen103 ) found_outside_safe ) ) => ?gen103 <- ( found_outside_safe ( positive 1 ) ( positive-derivator rule56 ?gen110 ) )"))

([rule56-overruled-dot] of derived-attribute-rule
   (pos-name rule56-overruled-dot-gen619)
   (depends-on declare found_outside_safe lc:case found_outside_safe)
   (implies found_outside_safe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule56] ) ) ) ?gen103 <- ( found_outside_safe ( defendant ?Defendant ) ( negative-support $?gen106 ) ( negative-overruled $?gen107 & : ( subseq-pos ( create$ rule56-overruled $?gen106 $$$ $?gen107 ) ) ) ) ( test ( eq ( class ?gen103 ) found_outside_safe ) ) ( not ( and ?gen110 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"auto\" ) ( positive ?gen109 & : ( >= ?gen109 1 ) ) ) ?gen103 <- ( found_outside_safe ( positive-defeated $?gen105 & : ( not ( member$ rule56 $?gen105 ) ) ) ) ) ) => ( calc ( bind $?gen108 ( delete-member$ $?gen107 ( create$ rule56-overruled $?gen106 ) ) ) ) ?gen103 <- ( found_outside_safe ( negative-overruled $?gen108 ) )"))

([rule56-overruled] of derived-attribute-rule
   (pos-name rule56-overruled-gen621)
   (depends-on declare lc:case found_outside_safe)
   (implies found_outside_safe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule56] ) ) ) ?gen110 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"auto\" ) ( positive ?gen109 & : ( >= ?gen109 1 ) ) ) ?gen103 <- ( found_outside_safe ( defendant ?Defendant ) ( negative-support $?gen106 ) ( negative-overruled $?gen107 & : ( not ( subseq-pos ( create$ rule56-overruled $?gen106 $$$ $?gen107 ) ) ) ) ( positive-defeated $?gen105 & : ( not ( member$ rule56 $?gen105 ) ) ) ) ( test ( eq ( class ?gen103 ) found_outside_safe ) ) => ( calc ( bind $?gen108 ( create$ rule56-overruled $?gen106 $?gen107 ) ) ) ?gen103 <- ( found_outside_safe ( negative-overruled $?gen108 ) )"))

([rule56-support] of derived-attribute-rule
   (pos-name rule56-support-gen623)
   (depends-on declare lc:case found_outside_safe)
   (implies found_outside_safe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule56] ) ) ) ?gen102 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"auto\" ) ) ?gen103 <- ( found_outside_safe ( defendant ?Defendant ) ( positive-support $?gen105 & : ( not ( subseq-pos ( create$ rule56 ?gen102 $$$ $?gen105 ) ) ) ) ) ( test ( eq ( class ?gen103 ) found_outside_safe ) ) => ( calc ( bind $?gen108 ( create$ rule56 ?gen102 $?gen105 ) ) ) ?gen103 <- ( found_outside_safe ( positive-support $?gen108 ) )"))

([rule55-defeasibly-dot] of derived-attribute-rule
   (pos-name rule55-defeasibly-dot-gen625)
   (depends-on declare found_outside_safe lc:case found_outside_safe)
   (implies found_outside_safe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule55] ) ) ) ?gen94 <- ( found_outside_safe ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule55 $? ) ) ( test ( eq ( class ?gen94 ) found_outside_safe ) ) ( not ( and ?gen101 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"house\" ) ( positive ?gen100 & : ( >= ?gen100 1 ) ) ) ?gen94 <- ( found_outside_safe ( negative ~ 2 ) ( positive-overruled $?gen96 & : ( not ( member$ rule55 $?gen96 ) ) ) ) ) ) => ?gen94 <- ( found_outside_safe ( positive 0 ) )"))

([rule55-defeasibly] of derived-attribute-rule
   (pos-name rule55-defeasibly-gen627)
   (depends-on declare lc:case found_outside_safe)
   (implies found_outside_safe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule55] ) ) ) ?gen101 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"house\" ) ( positive ?gen100 & : ( >= ?gen100 1 ) ) ) ?gen94 <- ( found_outside_safe ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen96 & : ( not ( member$ rule55 $?gen96 ) ) ) ) ( test ( eq ( class ?gen94 ) found_outside_safe ) ) => ?gen94 <- ( found_outside_safe ( positive 1 ) ( positive-derivator rule55 ?gen101 ) )"))

([rule55-overruled-dot] of derived-attribute-rule
   (pos-name rule55-overruled-dot-gen629)
   (depends-on declare found_outside_safe lc:case found_outside_safe)
   (implies found_outside_safe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule55] ) ) ) ?gen94 <- ( found_outside_safe ( defendant ?Defendant ) ( negative-support $?gen97 ) ( negative-overruled $?gen98 & : ( subseq-pos ( create$ rule55-overruled $?gen97 $$$ $?gen98 ) ) ) ) ( test ( eq ( class ?gen94 ) found_outside_safe ) ) ( not ( and ?gen101 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"house\" ) ( positive ?gen100 & : ( >= ?gen100 1 ) ) ) ?gen94 <- ( found_outside_safe ( positive-defeated $?gen96 & : ( not ( member$ rule55 $?gen96 ) ) ) ) ) ) => ( calc ( bind $?gen99 ( delete-member$ $?gen98 ( create$ rule55-overruled $?gen97 ) ) ) ) ?gen94 <- ( found_outside_safe ( negative-overruled $?gen99 ) )"))

([rule55-overruled] of derived-attribute-rule
   (pos-name rule55-overruled-gen631)
   (depends-on declare lc:case found_outside_safe)
   (implies found_outside_safe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule55] ) ) ) ?gen101 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"house\" ) ( positive ?gen100 & : ( >= ?gen100 1 ) ) ) ?gen94 <- ( found_outside_safe ( defendant ?Defendant ) ( negative-support $?gen97 ) ( negative-overruled $?gen98 & : ( not ( subseq-pos ( create$ rule55-overruled $?gen97 $$$ $?gen98 ) ) ) ) ( positive-defeated $?gen96 & : ( not ( member$ rule55 $?gen96 ) ) ) ) ( test ( eq ( class ?gen94 ) found_outside_safe ) ) => ( calc ( bind $?gen99 ( create$ rule55-overruled $?gen97 $?gen98 ) ) ) ?gen94 <- ( found_outside_safe ( negative-overruled $?gen99 ) )"))

([rule55-support] of derived-attribute-rule
   (pos-name rule55-support-gen633)
   (depends-on declare lc:case found_outside_safe)
   (implies found_outside_safe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule55] ) ) ) ?gen93 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"house\" ) ) ?gen94 <- ( found_outside_safe ( defendant ?Defendant ) ( positive-support $?gen96 & : ( not ( subseq-pos ( create$ rule55 ?gen93 $$$ $?gen96 ) ) ) ) ) ( test ( eq ( class ?gen94 ) found_outside_safe ) ) => ( calc ( bind $?gen99 ( create$ rule55 ?gen93 $?gen96 ) ) ) ?gen94 <- ( found_outside_safe ( positive-support $?gen99 ) )"))

([rule10-defeasibly-dot] of derived-attribute-rule
   (pos-name rule10-defeasibly-dot-gen635)
   (depends-on declare recommend_increased_penalty lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule10] ) ) ) ?gen85 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule10 $? ) ) ( test ( eq ( class ?gen85 ) recommend_increased_penalty ) ) ( not ( and ?gen92 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"da\" ) ( positive ?gen91 & : ( >= ?gen91 1 ) ) ) ?gen85 <- ( recommend_increased_penalty ( negative ~ 2 ) ( positive-overruled $?gen87 & : ( not ( member$ rule10 $?gen87 ) ) ) ) ) ) => ?gen85 <- ( recommend_increased_penalty ( positive 0 ) )"))

([rule10-defeasibly] of derived-attribute-rule
   (pos-name rule10-defeasibly-gen637)
   (depends-on declare lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule10] ) ) ) ?gen92 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"da\" ) ( positive ?gen91 & : ( >= ?gen91 1 ) ) ) ?gen85 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen87 & : ( not ( member$ rule10 $?gen87 ) ) ) ) ( test ( eq ( class ?gen85 ) recommend_increased_penalty ) ) => ?gen85 <- ( recommend_increased_penalty ( positive 1 ) ( positive-derivator rule10 ?gen92 ) )"))

([rule10-overruled-dot] of derived-attribute-rule
   (pos-name rule10-overruled-dot-gen639)
   (depends-on declare recommend_increased_penalty lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule10] ) ) ) ?gen85 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( negative-support $?gen88 ) ( negative-overruled $?gen89 & : ( subseq-pos ( create$ rule10-overruled $?gen88 $$$ $?gen89 ) ) ) ) ( test ( eq ( class ?gen85 ) recommend_increased_penalty ) ) ( not ( and ?gen92 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"da\" ) ( positive ?gen91 & : ( >= ?gen91 1 ) ) ) ?gen85 <- ( recommend_increased_penalty ( positive-defeated $?gen87 & : ( not ( member$ rule10 $?gen87 ) ) ) ) ) ) => ( calc ( bind $?gen90 ( delete-member$ $?gen89 ( create$ rule10-overruled $?gen88 ) ) ) ) ?gen85 <- ( recommend_increased_penalty ( negative-overruled $?gen90 ) )"))

([rule10-overruled] of derived-attribute-rule
   (pos-name rule10-overruled-gen641)
   (depends-on declare lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule10] ) ) ) ?gen92 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"da\" ) ( positive ?gen91 & : ( >= ?gen91 1 ) ) ) ?gen85 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( negative-support $?gen88 ) ( negative-overruled $?gen89 & : ( not ( subseq-pos ( create$ rule10-overruled $?gen88 $$$ $?gen89 ) ) ) ) ( positive-defeated $?gen87 & : ( not ( member$ rule10 $?gen87 ) ) ) ) ( test ( eq ( class ?gen85 ) recommend_increased_penalty ) ) => ( calc ( bind $?gen90 ( create$ rule10-overruled $?gen88 $?gen89 ) ) ) ?gen85 <- ( recommend_increased_penalty ( negative-overruled $?gen90 ) )"))

([rule10-support] of derived-attribute-rule
   (pos-name rule10-support-gen643)
   (depends-on declare lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule10] ) ) ) ?gen84 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"da\" ) ) ?gen85 <- ( recommend_increased_penalty ( defendant ?Defendant ) ( positive-support $?gen87 & : ( not ( subseq-pos ( create$ rule10 ?gen84 $$$ $?gen87 ) ) ) ) ) ( test ( eq ( class ?gen85 ) recommend_increased_penalty ) ) => ( calc ( bind $?gen90 ( create$ rule10 ?gen84 $?gen87 ) ) ) ?gen85 <- ( recommend_increased_penalty ( positive-support $?gen90 ) )"))

([rule771-defeasibly-dot] of derived-attribute-rule
   (pos-name rule771-defeasibly-dot-gen645)
   (depends-on declare recommend_fine_increase lc:case recommend_fine_increase)
   (implies recommend_fine_increase)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule771] ) ) ) ?gen76 <- ( recommend_fine_increase ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule771 $? ) ) ( test ( eq ( class ?gen76 ) recommend_fine_increase ) ) ( not ( and ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:high_income \"da\" ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen76 <- ( recommend_fine_increase ( negative ~ 2 ) ( positive-overruled $?gen78 & : ( not ( member$ rule771 $?gen78 ) ) ) ) ) ) => ?gen76 <- ( recommend_fine_increase ( positive 0 ) )"))

([rule771-defeasibly] of derived-attribute-rule
   (pos-name rule771-defeasibly-gen647)
   (depends-on declare lc:case recommend_fine_increase)
   (implies recommend_fine_increase)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule771] ) ) ) ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:high_income \"da\" ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen76 <- ( recommend_fine_increase ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen78 & : ( not ( member$ rule771 $?gen78 ) ) ) ) ( test ( eq ( class ?gen76 ) recommend_fine_increase ) ) => ?gen76 <- ( recommend_fine_increase ( positive 1 ) ( positive-derivator rule771 ?gen83 ) )"))

([rule771-overruled-dot] of derived-attribute-rule
   (pos-name rule771-overruled-dot-gen649)
   (depends-on declare recommend_fine_increase lc:case recommend_fine_increase)
   (implies recommend_fine_increase)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule771] ) ) ) ?gen76 <- ( recommend_fine_increase ( defendant ?Defendant ) ( negative-support $?gen79 ) ( negative-overruled $?gen80 & : ( subseq-pos ( create$ rule771-overruled $?gen79 $$$ $?gen80 ) ) ) ) ( test ( eq ( class ?gen76 ) recommend_fine_increase ) ) ( not ( and ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:high_income \"da\" ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen76 <- ( recommend_fine_increase ( positive-defeated $?gen78 & : ( not ( member$ rule771 $?gen78 ) ) ) ) ) ) => ( calc ( bind $?gen81 ( delete-member$ $?gen80 ( create$ rule771-overruled $?gen79 ) ) ) ) ?gen76 <- ( recommend_fine_increase ( negative-overruled $?gen81 ) )"))

([rule771-overruled] of derived-attribute-rule
   (pos-name rule771-overruled-gen651)
   (depends-on declare lc:case recommend_fine_increase)
   (implies recommend_fine_increase)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule771] ) ) ) ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:high_income \"da\" ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen76 <- ( recommend_fine_increase ( defendant ?Defendant ) ( negative-support $?gen79 ) ( negative-overruled $?gen80 & : ( not ( subseq-pos ( create$ rule771-overruled $?gen79 $$$ $?gen80 ) ) ) ) ( positive-defeated $?gen78 & : ( not ( member$ rule771 $?gen78 ) ) ) ) ( test ( eq ( class ?gen76 ) recommend_fine_increase ) ) => ( calc ( bind $?gen81 ( create$ rule771-overruled $?gen79 $?gen80 ) ) ) ?gen76 <- ( recommend_fine_increase ( negative-overruled $?gen81 ) )"))

([rule771-support] of derived-attribute-rule
   (pos-name rule771-support-gen653)
   (depends-on declare lc:case recommend_fine_increase)
   (implies recommend_fine_increase)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule771] ) ) ) ?gen75 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:high_income \"da\" ) ) ?gen76 <- ( recommend_fine_increase ( defendant ?Defendant ) ( positive-support $?gen78 & : ( not ( subseq-pos ( create$ rule771 ?gen75 $$$ $?gen78 ) ) ) ) ) ( test ( eq ( class ?gen76 ) recommend_fine_increase ) ) => ( calc ( bind $?gen81 ( create$ rule771 ?gen75 $?gen78 ) ) ) ?gen76 <- ( recommend_fine_increase ( positive-support $?gen81 ) )"))

([rule9-defeasibly-dot] of derived-attribute-rule
   (pos-name rule9-defeasibly-dot-gen655)
   (depends-on declare recommend_fine_reduction lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule9] ) ) ) ?gen67 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule9 $? ) ) ( test ( eq ( class ?gen67 ) recommend_fine_reduction ) ) ( not ( and ?gen74 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"da\" ) ( positive ?gen73 & : ( >= ?gen73 1 ) ) ) ?gen67 <- ( recommend_fine_reduction ( negative ~ 2 ) ( positive-overruled $?gen69 & : ( not ( member$ rule9 $?gen69 ) ) ) ) ) ) => ?gen67 <- ( recommend_fine_reduction ( positive 0 ) )"))

([rule9-defeasibly] of derived-attribute-rule
   (pos-name rule9-defeasibly-gen657)
   (depends-on declare lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule9] ) ) ) ?gen74 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"da\" ) ( positive ?gen73 & : ( >= ?gen73 1 ) ) ) ?gen67 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen69 & : ( not ( member$ rule9 $?gen69 ) ) ) ) ( test ( eq ( class ?gen67 ) recommend_fine_reduction ) ) => ?gen67 <- ( recommend_fine_reduction ( positive 1 ) ( positive-derivator rule9 ?gen74 ) )"))

([rule9-overruled-dot] of derived-attribute-rule
   (pos-name rule9-overruled-dot-gen659)
   (depends-on declare recommend_fine_reduction lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule9] ) ) ) ?gen67 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( negative-support $?gen70 ) ( negative-overruled $?gen71 & : ( subseq-pos ( create$ rule9-overruled $?gen70 $$$ $?gen71 ) ) ) ) ( test ( eq ( class ?gen67 ) recommend_fine_reduction ) ) ( not ( and ?gen74 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"da\" ) ( positive ?gen73 & : ( >= ?gen73 1 ) ) ) ?gen67 <- ( recommend_fine_reduction ( positive-defeated $?gen69 & : ( not ( member$ rule9 $?gen69 ) ) ) ) ) ) => ( calc ( bind $?gen72 ( delete-member$ $?gen71 ( create$ rule9-overruled $?gen70 ) ) ) ) ?gen67 <- ( recommend_fine_reduction ( negative-overruled $?gen72 ) )"))

([rule9-overruled] of derived-attribute-rule
   (pos-name rule9-overruled-gen661)
   (depends-on declare lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule9] ) ) ) ?gen74 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"da\" ) ( positive ?gen73 & : ( >= ?gen73 1 ) ) ) ?gen67 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( negative-support $?gen70 ) ( negative-overruled $?gen71 & : ( not ( subseq-pos ( create$ rule9-overruled $?gen70 $$$ $?gen71 ) ) ) ) ( positive-defeated $?gen69 & : ( not ( member$ rule9 $?gen69 ) ) ) ) ( test ( eq ( class ?gen67 ) recommend_fine_reduction ) ) => ( calc ( bind $?gen72 ( create$ rule9-overruled $?gen70 $?gen71 ) ) ) ?gen67 <- ( recommend_fine_reduction ( negative-overruled $?gen72 ) )"))

([rule9-support] of derived-attribute-rule
   (pos-name rule9-support-gen663)
   (depends-on declare lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule9] ) ) ) ?gen66 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"da\" ) ) ?gen67 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive-support $?gen69 & : ( not ( subseq-pos ( create$ rule9 ?gen66 $$$ $?gen69 ) ) ) ) ) ( test ( eq ( class ?gen67 ) recommend_fine_reduction ) ) => ( calc ( bind $?gen72 ( create$ rule9 ?gen66 $?gen69 ) ) ) ?gen67 <- ( recommend_fine_reduction ( positive-support $?gen72 ) )"))

([rule8-defeasibly-dot] of derived-attribute-rule
   (pos-name rule8-defeasibly-dot-gen665)
   (depends-on declare money lc:case lc:case money)
   (implies money)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule8] ) ) ) ?gen56 <- ( money ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule8 $? ) ) ( test ( eq ( class ?gen56 ) money ) ) ( not ( and ?gen63 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"da\" ) ( positive ?gen62 & : ( >= ?gen62 1 ) ) ) ?gen65 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_weapon_type_B \"da\" ) ( positive ?gen64 & : ( >= ?gen64 1 ) ) ) ?gen56 <- ( money ( negative ~ 2 ) ( positive-overruled $?gen58 & : ( not ( member$ rule8 $?gen58 ) ) ) ) ) ) => ?gen56 <- ( money ( positive 0 ) )"))

([rule8-defeasibly] of derived-attribute-rule
   (pos-name rule8-defeasibly-gen667)
   (depends-on declare lc:case lc:case money)
   (implies money)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule8] ) ) ) ?gen63 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"da\" ) ( positive ?gen62 & : ( >= ?gen62 1 ) ) ) ?gen65 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_weapon_type_B \"da\" ) ( positive ?gen64 & : ( >= ?gen64 1 ) ) ) ?gen56 <- ( money ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen58 & : ( not ( member$ rule8 $?gen58 ) ) ) ) ( test ( eq ( class ?gen56 ) money ) ) => ?gen56 <- ( money ( positive 1 ) ( positive-derivator rule8 ?gen63 ?gen65 ) )"))

([rule8-overruled-dot] of derived-attribute-rule
   (pos-name rule8-overruled-dot-gen669)
   (depends-on declare money lc:case lc:case money)
   (implies money)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule8] ) ) ) ?gen56 <- ( money ( defendant ?Defendant ) ( negative-support $?gen59 ) ( negative-overruled $?gen60 & : ( subseq-pos ( create$ rule8-overruled $?gen59 $$$ $?gen60 ) ) ) ) ( test ( eq ( class ?gen56 ) money ) ) ( not ( and ?gen63 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"da\" ) ( positive ?gen62 & : ( >= ?gen62 1 ) ) ) ?gen65 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_weapon_type_B \"da\" ) ( positive ?gen64 & : ( >= ?gen64 1 ) ) ) ?gen56 <- ( money ( positive-defeated $?gen58 & : ( not ( member$ rule8 $?gen58 ) ) ) ) ) ) => ( calc ( bind $?gen61 ( delete-member$ $?gen60 ( create$ rule8-overruled $?gen59 ) ) ) ) ?gen56 <- ( money ( negative-overruled $?gen61 ) )"))

([rule8-overruled] of derived-attribute-rule
   (pos-name rule8-overruled-gen671)
   (depends-on declare lc:case lc:case money)
   (implies money)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule8] ) ) ) ?gen63 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"da\" ) ( positive ?gen62 & : ( >= ?gen62 1 ) ) ) ?gen65 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_weapon_type_B \"da\" ) ( positive ?gen64 & : ( >= ?gen64 1 ) ) ) ?gen56 <- ( money ( defendant ?Defendant ) ( negative-support $?gen59 ) ( negative-overruled $?gen60 & : ( not ( subseq-pos ( create$ rule8-overruled $?gen59 $$$ $?gen60 ) ) ) ) ( positive-defeated $?gen58 & : ( not ( member$ rule8 $?gen58 ) ) ) ) ( test ( eq ( class ?gen56 ) money ) ) => ( calc ( bind $?gen61 ( create$ rule8-overruled $?gen59 $?gen60 ) ) ) ?gen56 <- ( money ( negative-overruled $?gen61 ) )"))

([rule8-support] of derived-attribute-rule
   (pos-name rule8-support-gen673)
   (depends-on declare lc:case lc:case money)
   (implies money)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule8] ) ) ) ?gen54 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"da\" ) ) ?gen55 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_weapon_type_B \"da\" ) ) ?gen56 <- ( money ( defendant ?Defendant ) ( positive-support $?gen58 & : ( not ( subseq-pos ( create$ rule8 ?gen54 ?gen55 $$$ $?gen58 ) ) ) ) ) ( test ( eq ( class ?gen56 ) money ) ) => ( calc ( bind $?gen61 ( create$ rule8 ?gen54 ?gen55 $?gen58 ) ) ) ?gen56 <- ( money ( positive-support $?gen61 ) )"))

([rule7-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7-defeasibly-dot-gen675)
   (depends-on declare confiscation lc:case confiscation)
   (implies confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7] ) ) ) ?gen46 <- ( confiscation ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule7 $? ) ) ( test ( eq ( class ?gen46 ) confiscation ) ) ( not ( and ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"da\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ?gen46 <- ( confiscation ( negative ~ 2 ) ( positive-overruled $?gen48 & : ( not ( member$ rule7 $?gen48 ) ) ) ) ) ) => ?gen46 <- ( confiscation ( positive 0 ) )"))

([rule7-defeasibly] of derived-attribute-rule
   (pos-name rule7-defeasibly-gen677)
   (depends-on declare lc:case confiscation)
   (implies confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7] ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"da\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ?gen46 <- ( confiscation ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen48 & : ( not ( member$ rule7 $?gen48 ) ) ) ) ( test ( eq ( class ?gen46 ) confiscation ) ) => ?gen46 <- ( confiscation ( positive 1 ) ( positive-derivator rule7 ?gen53 ) )"))

([rule7-overruled-dot] of derived-attribute-rule
   (pos-name rule7-overruled-dot-gen679)
   (depends-on declare confiscation lc:case confiscation)
   (implies confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7] ) ) ) ?gen46 <- ( confiscation ( defendant ?Defendant ) ( negative-support $?gen49 ) ( negative-overruled $?gen50 & : ( subseq-pos ( create$ rule7-overruled $?gen49 $$$ $?gen50 ) ) ) ) ( test ( eq ( class ?gen46 ) confiscation ) ) ( not ( and ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"da\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ?gen46 <- ( confiscation ( positive-defeated $?gen48 & : ( not ( member$ rule7 $?gen48 ) ) ) ) ) ) => ( calc ( bind $?gen51 ( delete-member$ $?gen50 ( create$ rule7-overruled $?gen49 ) ) ) ) ?gen46 <- ( confiscation ( negative-overruled $?gen51 ) )"))

([rule7-overruled] of derived-attribute-rule
   (pos-name rule7-overruled-gen681)
   (depends-on declare lc:case confiscation)
   (implies confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7] ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"da\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ?gen46 <- ( confiscation ( defendant ?Defendant ) ( negative-support $?gen49 ) ( negative-overruled $?gen50 & : ( not ( subseq-pos ( create$ rule7-overruled $?gen49 $$$ $?gen50 ) ) ) ) ( positive-defeated $?gen48 & : ( not ( member$ rule7 $?gen48 ) ) ) ) ( test ( eq ( class ?gen46 ) confiscation ) ) => ( calc ( bind $?gen51 ( create$ rule7-overruled $?gen49 $?gen50 ) ) ) ?gen46 <- ( confiscation ( negative-overruled $?gen51 ) )"))

([rule7-support] of derived-attribute-rule
   (pos-name rule7-support-gen683)
   (depends-on declare lc:case confiscation)
   (implies confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7] ) ) ) ?gen45 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"da\" ) ) ?gen46 <- ( confiscation ( defendant ?Defendant ) ( positive-support $?gen48 & : ( not ( subseq-pos ( create$ rule7 ?gen45 $$$ $?gen48 ) ) ) ) ) ( test ( eq ( class ?gen46 ) confiscation ) ) => ( calc ( bind $?gen51 ( create$ rule7 ?gen45 $?gen48 ) ) ) ?gen46 <- ( confiscation ( positive-support $?gen51 ) )"))

([rule2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule2-defeasibly-dot-gen685)
   (depends-on declare harm_done_with_weapon lc:case harm_done_with_weapon)
   (implies harm_done_with_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule2] ) ) ) ?gen37 <- ( harm_done_with_weapon ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule2 $? ) ) ( test ( eq ( class ?gen37 ) harm_done_with_weapon ) ) ( not ( and ?gen44 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:harm_done \"da\" ) ( positive ?gen43 & : ( >= ?gen43 1 ) ) ) ?gen37 <- ( harm_done_with_weapon ( negative ~ 2 ) ( positive-overruled $?gen39 & : ( not ( member$ rule2 $?gen39 ) ) ) ) ) ) => ?gen37 <- ( harm_done_with_weapon ( positive 0 ) )"))

([rule2-defeasibly] of derived-attribute-rule
   (pos-name rule2-defeasibly-gen687)
   (depends-on declare lc:case harm_done_with_weapon)
   (implies harm_done_with_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule2] ) ) ) ?gen44 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:harm_done \"da\" ) ( positive ?gen43 & : ( >= ?gen43 1 ) ) ) ?gen37 <- ( harm_done_with_weapon ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen39 & : ( not ( member$ rule2 $?gen39 ) ) ) ) ( test ( eq ( class ?gen37 ) harm_done_with_weapon ) ) => ?gen37 <- ( harm_done_with_weapon ( positive 1 ) ( positive-derivator rule2 ?gen44 ) )"))

([rule2-overruled-dot] of derived-attribute-rule
   (pos-name rule2-overruled-dot-gen689)
   (depends-on declare harm_done_with_weapon lc:case harm_done_with_weapon)
   (implies harm_done_with_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule2] ) ) ) ?gen37 <- ( harm_done_with_weapon ( defendant ?Defendant ) ( negative-support $?gen40 ) ( negative-overruled $?gen41 & : ( subseq-pos ( create$ rule2-overruled $?gen40 $$$ $?gen41 ) ) ) ) ( test ( eq ( class ?gen37 ) harm_done_with_weapon ) ) ( not ( and ?gen44 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:harm_done \"da\" ) ( positive ?gen43 & : ( >= ?gen43 1 ) ) ) ?gen37 <- ( harm_done_with_weapon ( positive-defeated $?gen39 & : ( not ( member$ rule2 $?gen39 ) ) ) ) ) ) => ( calc ( bind $?gen42 ( delete-member$ $?gen41 ( create$ rule2-overruled $?gen40 ) ) ) ) ?gen37 <- ( harm_done_with_weapon ( negative-overruled $?gen42 ) )"))

([rule2-overruled] of derived-attribute-rule
   (pos-name rule2-overruled-gen691)
   (depends-on declare lc:case harm_done_with_weapon)
   (implies harm_done_with_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule2] ) ) ) ?gen44 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:harm_done \"da\" ) ( positive ?gen43 & : ( >= ?gen43 1 ) ) ) ?gen37 <- ( harm_done_with_weapon ( defendant ?Defendant ) ( negative-support $?gen40 ) ( negative-overruled $?gen41 & : ( not ( subseq-pos ( create$ rule2-overruled $?gen40 $$$ $?gen41 ) ) ) ) ( positive-defeated $?gen39 & : ( not ( member$ rule2 $?gen39 ) ) ) ) ( test ( eq ( class ?gen37 ) harm_done_with_weapon ) ) => ( calc ( bind $?gen42 ( create$ rule2-overruled $?gen40 $?gen41 ) ) ) ?gen37 <- ( harm_done_with_weapon ( negative-overruled $?gen42 ) )"))

([rule2-support] of derived-attribute-rule
   (pos-name rule2-support-gen693)
   (depends-on declare lc:case harm_done_with_weapon)
   (implies harm_done_with_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule2] ) ) ) ?gen36 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:harm_done \"da\" ) ) ?gen37 <- ( harm_done_with_weapon ( defendant ?Defendant ) ( positive-support $?gen39 & : ( not ( subseq-pos ( create$ rule2 ?gen36 $$$ $?gen39 ) ) ) ) ) ( test ( eq ( class ?gen37 ) harm_done_with_weapon ) ) => ( calc ( bind $?gen42 ( create$ rule2 ?gen36 $?gen39 ) ) ) ?gen37 <- ( harm_done_with_weapon ( positive-support $?gen42 ) )"))

([rule111-defeasibly-dot] of derived-attribute-rule
   (pos-name rule111-defeasibly-dot-gen695)
   (depends-on declare reduce_penalty1 lc:case lc:case reduce_penalty1)
   (implies reduce_penalty1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule111] ) ) ) ?gen26 <- ( reduce_penalty1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule111 $? ) ) ( test ( eq ( class ?gen26 ) reduce_penalty1 ) ) ( not ( and ?gen33 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:admitted_guilt \"da\" ) ( positive ?gen32 & : ( >= ?gen32 1 ) ) ) ?gen35 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:regrets_it \"da\" ) ( positive ?gen34 & : ( >= ?gen34 1 ) ) ) ?gen26 <- ( reduce_penalty1 ( negative ~ 2 ) ( positive-overruled $?gen28 & : ( not ( member$ rule111 $?gen28 ) ) ) ) ) ) => ?gen26 <- ( reduce_penalty1 ( positive 0 ) )"))

([rule111-defeasibly] of derived-attribute-rule
   (pos-name rule111-defeasibly-gen697)
   (depends-on declare lc:case lc:case reduce_penalty1)
   (implies reduce_penalty1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule111] ) ) ) ?gen33 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:admitted_guilt \"da\" ) ( positive ?gen32 & : ( >= ?gen32 1 ) ) ) ?gen35 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:regrets_it \"da\" ) ( positive ?gen34 & : ( >= ?gen34 1 ) ) ) ?gen26 <- ( reduce_penalty1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen28 & : ( not ( member$ rule111 $?gen28 ) ) ) ) ( test ( eq ( class ?gen26 ) reduce_penalty1 ) ) => ?gen26 <- ( reduce_penalty1 ( positive 1 ) ( positive-derivator rule111 ?gen33 ?gen35 ) )"))

([rule111-overruled-dot] of derived-attribute-rule
   (pos-name rule111-overruled-dot-gen699)
   (depends-on declare reduce_penalty1 lc:case lc:case reduce_penalty1)
   (implies reduce_penalty1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule111] ) ) ) ?gen26 <- ( reduce_penalty1 ( defendant ?Defendant ) ( negative-support $?gen29 ) ( negative-overruled $?gen30 & : ( subseq-pos ( create$ rule111-overruled $?gen29 $$$ $?gen30 ) ) ) ) ( test ( eq ( class ?gen26 ) reduce_penalty1 ) ) ( not ( and ?gen33 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:admitted_guilt \"da\" ) ( positive ?gen32 & : ( >= ?gen32 1 ) ) ) ?gen35 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:regrets_it \"da\" ) ( positive ?gen34 & : ( >= ?gen34 1 ) ) ) ?gen26 <- ( reduce_penalty1 ( positive-defeated $?gen28 & : ( not ( member$ rule111 $?gen28 ) ) ) ) ) ) => ( calc ( bind $?gen31 ( delete-member$ $?gen30 ( create$ rule111-overruled $?gen29 ) ) ) ) ?gen26 <- ( reduce_penalty1 ( negative-overruled $?gen31 ) )"))

([rule111-overruled] of derived-attribute-rule
   (pos-name rule111-overruled-gen701)
   (depends-on declare lc:case lc:case reduce_penalty1)
   (implies reduce_penalty1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule111] ) ) ) ?gen33 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:admitted_guilt \"da\" ) ( positive ?gen32 & : ( >= ?gen32 1 ) ) ) ?gen35 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:regrets_it \"da\" ) ( positive ?gen34 & : ( >= ?gen34 1 ) ) ) ?gen26 <- ( reduce_penalty1 ( defendant ?Defendant ) ( negative-support $?gen29 ) ( negative-overruled $?gen30 & : ( not ( subseq-pos ( create$ rule111-overruled $?gen29 $$$ $?gen30 ) ) ) ) ( positive-defeated $?gen28 & : ( not ( member$ rule111 $?gen28 ) ) ) ) ( test ( eq ( class ?gen26 ) reduce_penalty1 ) ) => ( calc ( bind $?gen31 ( create$ rule111-overruled $?gen29 $?gen30 ) ) ) ?gen26 <- ( reduce_penalty1 ( negative-overruled $?gen31 ) )"))

([rule111-support] of derived-attribute-rule
   (pos-name rule111-support-gen703)
   (depends-on declare lc:case lc:case reduce_penalty1)
   (implies reduce_penalty1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule111] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:admitted_guilt \"da\" ) ) ?gen25 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:regrets_it \"da\" ) ) ?gen26 <- ( reduce_penalty1 ( defendant ?Defendant ) ( positive-support $?gen28 & : ( not ( subseq-pos ( create$ rule111 ?gen24 ?gen25 $$$ $?gen28 ) ) ) ) ) ( test ( eq ( class ?gen26 ) reduce_penalty1 ) ) => ( calc ( bind $?gen31 ( create$ rule111 ?gen24 ?gen25 $?gen28 ) ) ) ?gen26 <- ( reduce_penalty1 ( positive-support $?gen31 ) )"))

([rule1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule1-defeasibly-dot-gen705)
   (depends-on declare jail_3_months lc:case jail_3_months)
   (implies jail_3_months)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule1] ) ) ) ?gen16 <- ( jail_3_months ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule1 $? ) ) ( test ( eq ( class ?gen16 ) jail_3_months ) ) ( not ( and ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"da\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( jail_3_months ( negative ~ 2 ) ( positive-overruled $?gen18 & : ( not ( member$ rule1 $?gen18 ) ) ) ) ) ) => ?gen16 <- ( jail_3_months ( positive 0 ) )"))

([rule1-defeasibly] of derived-attribute-rule
   (pos-name rule1-defeasibly-gen707)
   (depends-on declare lc:case jail_3_months)
   (implies jail_3_months)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule1] ) ) ) ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"da\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( jail_3_months ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen18 & : ( not ( member$ rule1 $?gen18 ) ) ) ) ( test ( eq ( class ?gen16 ) jail_3_months ) ) => ?gen16 <- ( jail_3_months ( positive 1 ) ( positive-derivator rule1 ?gen23 ) )"))

([rule1-overruled-dot] of derived-attribute-rule
   (pos-name rule1-overruled-dot-gen709)
   (depends-on declare jail_3_months lc:case jail_3_months)
   (implies jail_3_months)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule1] ) ) ) ?gen16 <- ( jail_3_months ( defendant ?Defendant ) ( negative-support $?gen19 ) ( negative-overruled $?gen20 & : ( subseq-pos ( create$ rule1-overruled $?gen19 $$$ $?gen20 ) ) ) ) ( test ( eq ( class ?gen16 ) jail_3_months ) ) ( not ( and ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"da\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( jail_3_months ( positive-defeated $?gen18 & : ( not ( member$ rule1 $?gen18 ) ) ) ) ) ) => ( calc ( bind $?gen21 ( delete-member$ $?gen20 ( create$ rule1-overruled $?gen19 ) ) ) ) ?gen16 <- ( jail_3_months ( negative-overruled $?gen21 ) )"))

([rule1-overruled] of derived-attribute-rule
   (pos-name rule1-overruled-gen711)
   (depends-on declare lc:case jail_3_months)
   (implies jail_3_months)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule1] ) ) ) ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"da\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( jail_3_months ( defendant ?Defendant ) ( negative-support $?gen19 ) ( negative-overruled $?gen20 & : ( not ( subseq-pos ( create$ rule1-overruled $?gen19 $$$ $?gen20 ) ) ) ) ( positive-defeated $?gen18 & : ( not ( member$ rule1 $?gen18 ) ) ) ) ( test ( eq ( class ?gen16 ) jail_3_months ) ) => ( calc ( bind $?gen21 ( create$ rule1-overruled $?gen19 $?gen20 ) ) ) ?gen16 <- ( jail_3_months ( negative-overruled $?gen21 ) )"))

([rule1-support] of derived-attribute-rule
   (pos-name rule1-support-gen713)
   (depends-on declare lc:case jail_3_months)
   (implies jail_3_months)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule1] ) ) ) ?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"da\" ) ) ?gen16 <- ( jail_3_months ( defendant ?Defendant ) ( positive-support $?gen18 & : ( not ( subseq-pos ( create$ rule1 ?gen15 $$$ $?gen18 ) ) ) ) ) ( test ( eq ( class ?gen16 ) jail_3_months ) ) => ( calc ( bind $?gen21 ( create$ rule1 ?gen15 $?gen18 ) ) ) ?gen16 <- ( jail_3_months ( positive-support $?gen21 ) )"))

([pen22-deductive] of ntm-deductive-rule
   (pos-name pen22-deductive-gen364)
   (depends-on recommend_fine_increase to_pay_more)
   (implies to_pay_more)
   (deductive-rule "?gen327 <- ( recommend_fine_increase ( defendant ?Defendant ) ) ( not ( to_pay_more ( value true ) ) ) => ( to_pay_more ( value true ) )")
   (production-rule "( defrule pen22-deductive-gen364 ( declare ( salience ( calc-salience to_pay_more ) ) ) ( run-deductive-rules ) ( object ( name ?gen327 ) ( is-a recommend_fine_increase ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_more ) ( value true ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_more true ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_more true ) ) ) ( make-instance ?oid of to_pay_more ( value true ) ) )")
   (derived-class to_pay_more))

([pen21-deductive] of ntm-deductive-rule
   (pos-name pen21-deductive-gen363)
   (depends-on destructive_weapon jail_max_year)
   (implies jail_max_year)
   (deductive-rule "?gen318 <- ( destructive_weapon ( defendant ?Defendant ) ) ( not ( jail_max_year ( value 8 ) ) ) => ( jail_max_year ( value 8 ) )")
   (production-rule "( defrule pen21-deductive-gen363 ( declare ( salience ( calc-salience jail_max_year ) ) ) ( run-deductive-rules ) ( object ( name ?gen318 ) ( is-a destructive_weapon ) ( defendant ?Defendant ) ) ( not ( object ( is-a jail_max_year ) ( value 8 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat jail_max_year 8 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat jail_max_year 8 ) ) ) ( make-instance ?oid of jail_max_year ( value 8 ) ) )")
   (derived-class jail_max_year))

([pen20-deductive] of ntm-deductive-rule
   (pos-name pen20-deductive-gen362)
   (depends-on destructive_weapon jail_min_year)
   (implies jail_min_year)
   (deductive-rule "?gen309 <- ( destructive_weapon ( defendant ?Defendant ) ) ( not ( jail_min_year ( value 1 ) ) ) => ( jail_min_year ( value 1 ) )")
   (production-rule "( defrule pen20-deductive-gen362 ( declare ( salience ( calc-salience jail_min_year ) ) ) ( run-deductive-rules ) ( object ( name ?gen309 ) ( is-a destructive_weapon ) ( defendant ?Defendant ) ) ( not ( object ( is-a jail_min_year ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat jail_min_year 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat jail_min_year 1 ) ) ) ( make-instance ?oid of jail_min_year ( value 1 ) ) )")
   (derived-class jail_min_year))

([pen19-deductive] of ntm-deductive-rule
   (pos-name pen19-deductive-gen361)
   (depends-on found_outside_safe to_pay_min_3)
   (implies to_pay_min_3)
   (deductive-rule "?gen246 <- ( found_outside_safe ( defendant ?Defendant ) ) ( not ( to_pay_min_3 ( value 30 ) ) ) => ( to_pay_min_3 ( value 30 ) )")
   (production-rule "( defrule pen19-deductive-gen361 ( declare ( salience ( calc-salience to_pay_min_3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen246 ) ( is-a found_outside_safe ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min_3 ) ( value 30 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min_3 30 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min_3 30 ) ) ) ( make-instance ?oid of to_pay_min_3 ( value 30 ) ) )")
   (derived-class to_pay_min_3))

([pen18-deductive] of ntm-deductive-rule
   (pos-name pen18-deductive-gen360)
   (depends-on found_outside_safe to_pay_max_3)
   (implies to_pay_max_3)
   (deductive-rule "?gen237 <- ( found_outside_safe ( defendant ?Defendant ) ) ( not ( to_pay_max_3 ( value 500 ) ) ) => ( to_pay_max_3 ( value 500 ) )")
   (production-rule "( defrule pen18-deductive-gen360 ( declare ( salience ( calc-salience to_pay_max_3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen237 ) ( is-a found_outside_safe ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max_3 ) ( value 500 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max_3 500 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max_3 500 ) ) ) ( make-instance ?oid of to_pay_max_3 ( value 500 ) ) )")
   (derived-class to_pay_max_3))

([pen17-deductive] of ntm-deductive-rule
   (pos-name pen17-deductive-gen359)
   (depends-on reduce_penalty1 reduce_penalty)
   (implies reduce_penalty)
   (deductive-rule "?gen228 <- ( reduce_penalty1 ( defendant ?Defendant ) ) ( not ( reduce_penalty ( value true ) ) ) => ( reduce_penalty ( value true ) )")
   (production-rule "( defrule pen17-deductive-gen359 ( declare ( salience ( calc-salience reduce_penalty ) ) ) ( run-deductive-rules ) ( object ( name ?gen228 ) ( is-a reduce_penalty1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a reduce_penalty ) ( value true ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat reduce_penalty true ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat reduce_penalty true ) ) ) ( make-instance ?oid of reduce_penalty ( value true ) ) )")
   (derived-class reduce_penalty))

([pen16-deductive] of ntm-deductive-rule
   (pos-name pen16-deductive-gen358)
   (depends-on harm_done_with_weapon jail_3_year)
   (implies jail_3_year)
   (deductive-rule "?gen219 <- ( harm_done_with_weapon ( defendant ?Defendant ) ) ( not ( jail_3_year ( value 3 ) ) ) => ( jail_3_year ( value 3 ) )")
   (production-rule "( defrule pen16-deductive-gen358 ( declare ( salience ( calc-salience jail_3_year ) ) ) ( run-deductive-rules ) ( object ( name ?gen219 ) ( is-a harm_done_with_weapon ) ( defendant ?Defendant ) ) ( not ( object ( is-a jail_3_year ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat jail_3_year 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat jail_3_year 3 ) ) ) ( make-instance ?oid of jail_3_year ( value 3 ) ) )")
   (derived-class jail_3_year))

([pen15-deductive] of ntm-deductive-rule
   (pos-name pen15-deductive-gen357)
   (depends-on money to_pay_min2)
   (implies to_pay_min2)
   (deductive-rule "?gen210 <- ( money ( defendant ?Defendant ) ) ( not ( to_pay_min2 ( value 30 ) ) ) => ( to_pay_min2 ( value 30 ) )")
   (production-rule "( defrule pen15-deductive-gen357 ( declare ( salience ( calc-salience to_pay_min2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen210 ) ( is-a money ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min2 ) ( value 30 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min2 30 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min2 30 ) ) ) ( make-instance ?oid of to_pay_min2 ( value 30 ) ) )")
   (derived-class to_pay_min2))

([pen14-deductive] of ntm-deductive-rule
   (pos-name pen14-deductive-gen356)
   (depends-on money to_pay_max2)
   (implies to_pay_max2)
   (deductive-rule "?gen201 <- ( money ( defendant ?Defendant ) ) ( not ( to_pay_max2 ( value 500 ) ) ) => ( to_pay_max2 ( value 500 ) )")
   (production-rule "( defrule pen14-deductive-gen356 ( declare ( salience ( calc-salience to_pay_max2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen201 ) ( is-a money ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max2 ) ( value 500 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max2 500 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max2 500 ) ) ) ( make-instance ?oid of to_pay_max2 ( value 500 ) ) )")
   (derived-class to_pay_max2))

([pen13-deductive] of ntm-deductive-rule
   (pos-name pen13-deductive-gen355)
   (depends-on is_high_category_weapon_in_public to_pay_min)
   (implies to_pay_min)
   (deductive-rule "?gen192 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ) ( not ( to_pay_min ( value 30 ) ) ) => ( to_pay_min ( value 30 ) )")
   (production-rule "( defrule pen13-deductive-gen355 ( declare ( salience ( calc-salience to_pay_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen192 ) ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min ) ( value 30 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min 30 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min 30 ) ) ) ( make-instance ?oid of to_pay_min ( value 30 ) ) )")
   (derived-class to_pay_min))

([pen12-deductive] of ntm-deductive-rule
   (pos-name pen12-deductive-gen354)
   (depends-on is_high_category_weapon_in_public to_pay_max)
   (implies to_pay_max)
   (deductive-rule "?gen183 <- ( is_high_category_weapon_in_public ( defendant ?Defendant ) ) ( not ( to_pay_max ( value 500 ) ) ) => ( to_pay_max ( value 500 ) )")
   (production-rule "( defrule pen12-deductive-gen354 ( declare ( salience ( calc-salience to_pay_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen183 ) ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max ) ( value 500 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max 500 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max 500 ) ) ) ( make-instance ?oid of to_pay_max ( value 500 ) ) )")
   (derived-class to_pay_max))

([pen11-deductive] of ntm-deductive-rule
   (pos-name pen11-deductive-gen353)
   (depends-on recommend_increased_penalty to_increase_penalty)
   (implies to_increase_penalty)
   (deductive-rule "?gen174 <- ( recommend_increased_penalty ( defendant ?Defendant ) ) ( not ( to_increase_penalty ( value true ) ) ) => ( to_increase_penalty ( value true ) )")
   (production-rule "( defrule pen11-deductive-gen353 ( declare ( salience ( calc-salience to_increase_penalty ) ) ) ( run-deductive-rules ) ( object ( name ?gen174 ) ( is-a recommend_increased_penalty ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_increase_penalty ) ( value true ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_increase_penalty true ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_increase_penalty true ) ) ) ( make-instance ?oid of to_increase_penalty ( value true ) ) )")
   (derived-class to_increase_penalty))

([pen10-deductive] of ntm-deductive-rule
   (pos-name pen10-deductive-gen352)
   (depends-on recommend_fine_reduction to_pay_less)
   (implies to_pay_less)
   (deductive-rule "?gen165 <- ( recommend_fine_reduction ( defendant ?Defendant ) ) ( not ( to_pay_less ( value true ) ) ) => ( to_pay_less ( value true ) )")
   (production-rule "( defrule pen10-deductive-gen352 ( declare ( salience ( calc-salience to_pay_less ) ) ) ( run-deductive-rules ) ( object ( name ?gen165 ) ( is-a recommend_fine_reduction ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_less ) ( value true ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_less true ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_less true ) ) ) ( make-instance ?oid of to_pay_less ( value true ) ) )")
   (derived-class to_pay_less))

([pen7-deductive] of ntm-deductive-rule
   (pos-name pen7-deductive-gen351)
   (depends-on confiscation confiscate_weapon)
   (implies confiscate_weapon)
   (deductive-rule "?gen156 <- ( confiscation ( defendant ?Defendant ) ) ( not ( confiscate_weapon ( value true ) ) ) => ( confiscate_weapon ( value true ) )")
   (production-rule "( defrule pen7-deductive-gen351 ( declare ( salience ( calc-salience confiscate_weapon ) ) ) ( run-deductive-rules ) ( object ( name ?gen156 ) ( is-a confiscation ) ( defendant ?Defendant ) ) ( not ( object ( is-a confiscate_weapon ) ( value true ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat confiscate_weapon true ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat confiscate_weapon true ) ) ) ( make-instance ?oid of confiscate_weapon ( value true ) ) )")
   (derived-class confiscate_weapon))

([pen1-deductive] of ntm-deductive-rule
   (pos-name pen1-deductive-gen350)
   (depends-on jail_3_months imprisonment_3)
   (implies imprisonment_3)
   (deductive-rule "?gen147 <- ( jail_3_months ( defendant ?Defendant ) ) ( not ( imprisonment_3 ( value 3 ) ) ) => ( imprisonment_3 ( value 3 ) )")
   (production-rule "( defrule pen1-deductive-gen350 ( declare ( salience ( calc-salience imprisonment_3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen147 ) ( is-a jail_3_months ) ( defendant ?Defendant ) ) ( not ( object ( is-a imprisonment_3 ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat imprisonment_3 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat imprisonment_3 3 ) ) ) ( make-instance ?oid of imprisonment_3 ( value 3 ) ) )")
   (derived-class imprisonment_3))

([rule11-deductive] of ntm-deductive-rule
   (pos-name rule11-deductive-gen349)
   (depends-on lc:case is_high_category_weapon_in_public)
   (implies is_high_category_weapon_in_public)
   (deductive-rule "?gen138 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"javno\" ) ) ( not ( is_high_category_weapon_in_public ( defendant ?Defendant ) ) ) => ( is_high_category_weapon_in_public ( defendant ?Defendant ) )")
   (production-rule "( defrule rule11-deductive-gen349 ( declare ( salience ( calc-salience is_high_category_weapon_in_public ) ) ) ( run-deductive-rules ) ( object ( name ?gen138 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"javno\" ) ) ( not ( object ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_high_category_weapon_in_public ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_high_category_weapon_in_public ?Defendant ) ) ) ( make-instance ?oid of is_high_category_weapon_in_public ( defendant ?Defendant ) ) )")
   (derived-class is_high_category_weapon_in_public))

([rule403-deductive] of ntm-deductive-rule
   (pos-name rule403-deductive-gen348)
   (depends-on lc:case destructive_weapon)
   (implies destructive_weapon)
   (deductive-rule "?gen129 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_weapon_type_A \"da\" ) ) ( not ( destructive_weapon ( defendant ?Defendant ) ) ) => ( destructive_weapon ( defendant ?Defendant ) )")
   (production-rule "( defrule rule403-deductive-gen348 ( declare ( salience ( calc-salience destructive_weapon ) ) ) ( run-deductive-rules ) ( object ( name ?gen129 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:has_weapon_type_A \"da\" ) ) ( not ( object ( is-a destructive_weapon ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat destructive_weapon ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat destructive_weapon ?Defendant ) ) ) ( make-instance ?oid of destructive_weapon ( defendant ?Defendant ) ) )")
   (derived-class destructive_weapon))

([rule58-deductive] of ntm-deductive-rule
   (pos-name rule58-deductive-gen347)
   (depends-on lc:case found_outside_safe)
   (implies found_outside_safe)
   (deductive-rule "?gen120 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"drugo\" ) ) ( not ( found_outside_safe ( defendant ?Defendant ) ) ) => ( found_outside_safe ( defendant ?Defendant ) )")
   (production-rule "( defrule rule58-deductive-gen347 ( declare ( salience ( calc-salience found_outside_safe ) ) ) ( run-deductive-rules ) ( object ( name ?gen120 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"drugo\" ) ) ( not ( object ( is-a found_outside_safe ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat found_outside_safe ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat found_outside_safe ?Defendant ) ) ) ( make-instance ?oid of found_outside_safe ( defendant ?Defendant ) ) )")
   (derived-class found_outside_safe))

([rule57-deductive] of ntm-deductive-rule
   (pos-name rule57-deductive-gen346)
   (depends-on lc:case found_outside_safe)
   (implies found_outside_safe)
   (deductive-rule "?gen111 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"javno\" ) ) ( not ( found_outside_safe ( defendant ?Defendant ) ) ) => ( found_outside_safe ( defendant ?Defendant ) )")
   (production-rule "( defrule rule57-deductive-gen346 ( declare ( salience ( calc-salience found_outside_safe ) ) ) ( run-deductive-rules ) ( object ( name ?gen111 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"javno\" ) ) ( not ( object ( is-a found_outside_safe ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat found_outside_safe ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat found_outside_safe ?Defendant ) ) ) ( make-instance ?oid of found_outside_safe ( defendant ?Defendant ) ) )")
   (derived-class found_outside_safe))

([rule56-deductive] of ntm-deductive-rule
   (pos-name rule56-deductive-gen345)
   (depends-on lc:case found_outside_safe)
   (implies found_outside_safe)
   (deductive-rule "?gen102 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"auto\" ) ) ( not ( found_outside_safe ( defendant ?Defendant ) ) ) => ( found_outside_safe ( defendant ?Defendant ) )")
   (production-rule "( defrule rule56-deductive-gen345 ( declare ( salience ( calc-salience found_outside_safe ) ) ) ( run-deductive-rules ) ( object ( name ?gen102 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"auto\" ) ) ( not ( object ( is-a found_outside_safe ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat found_outside_safe ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat found_outside_safe ?Defendant ) ) ) ( make-instance ?oid of found_outside_safe ( defendant ?Defendant ) ) )")
   (derived-class found_outside_safe))

([rule55-deductive] of ntm-deductive-rule
   (pos-name rule55-deductive-gen344)
   (depends-on lc:case found_outside_safe)
   (implies found_outside_safe)
   (deductive-rule "?gen93 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"house\" ) ) ( not ( found_outside_safe ( defendant ?Defendant ) ) ) => ( found_outside_safe ( defendant ?Defendant ) )")
   (production-rule "( defrule rule55-deductive-gen344 ( declare ( salience ( calc-salience found_outside_safe ) ) ) ( run-deductive-rules ) ( object ( name ?gen93 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery \"house\" ) ) ( not ( object ( is-a found_outside_safe ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat found_outside_safe ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat found_outside_safe ?Defendant ) ) ) ( make-instance ?oid of found_outside_safe ( defendant ?Defendant ) ) )")
   (derived-class found_outside_safe))

([rule10-deductive] of ntm-deductive-rule
   (pos-name rule10-deductive-gen343)
   (depends-on lc:case recommend_increased_penalty)
   (implies recommend_increased_penalty)
   (deductive-rule "?gen84 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"da\" ) ) ( not ( recommend_increased_penalty ( defendant ?Defendant ) ) ) => ( recommend_increased_penalty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule10-deductive-gen343 ( declare ( salience ( calc-salience recommend_increased_penalty ) ) ) ( run-deductive-rules ) ( object ( name ?gen84 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:previously_convicted \"da\" ) ) ( not ( object ( is-a recommend_increased_penalty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat recommend_increased_penalty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat recommend_increased_penalty ?Defendant ) ) ) ( make-instance ?oid of recommend_increased_penalty ( defendant ?Defendant ) ) )")
   (derived-class recommend_increased_penalty))

([rule771-deductive] of ntm-deductive-rule
   (pos-name rule771-deductive-gen342)
   (depends-on lc:case recommend_fine_increase)
   (implies recommend_fine_increase)
   (deductive-rule "?gen75 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:high_income \"da\" ) ) ( not ( recommend_fine_increase ( defendant ?Defendant ) ) ) => ( recommend_fine_increase ( defendant ?Defendant ) )")
   (production-rule "( defrule rule771-deductive-gen342 ( declare ( salience ( calc-salience recommend_fine_increase ) ) ) ( run-deductive-rules ) ( object ( name ?gen75 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:high_income \"da\" ) ) ( not ( object ( is-a recommend_fine_increase ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat recommend_fine_increase ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat recommend_fine_increase ?Defendant ) ) ) ( make-instance ?oid of recommend_fine_increase ( defendant ?Defendant ) ) )")
   (derived-class recommend_fine_increase))

([rule9-deductive] of ntm-deductive-rule
   (pos-name rule9-deductive-gen341)
   (depends-on lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (deductive-rule "?gen66 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"da\" ) ) ( not ( recommend_fine_reduction ( defendant ?Defendant ) ) ) => ( recommend_fine_reduction ( defendant ?Defendant ) )")
   (production-rule "( defrule rule9-deductive-gen341 ( declare ( salience ( calc-salience recommend_fine_reduction ) ) ) ( run-deductive-rules ) ( object ( name ?gen66 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:low_income \"da\" ) ) ( not ( object ( is-a recommend_fine_reduction ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat recommend_fine_reduction ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat recommend_fine_reduction ?Defendant ) ) ) ( make-instance ?oid of recommend_fine_reduction ( defendant ?Defendant ) ) )")
   (derived-class recommend_fine_reduction))

([rule8-deductive] of ntm-deductive-rule
   (pos-name rule8-deductive-gen340)
   (depends-on lc:case lc:case money)
   (implies money)
   (deductive-rule "?gen54 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"da\" ) ) ?gen55 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_weapon_type_B \"da\" ) ) ( not ( money ( defendant ?Defendant ) ) ) => ( money ( defendant ?Defendant ) )")
   (production-rule "( defrule rule8-deductive-gen340 ( declare ( salience ( calc-salience money ) ) ) ( run-deductive-rules ) ( object ( name ?gen54 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"da\" ) ) ( object ( name ?gen55 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:has_weapon_type_B \"da\" ) ) ( not ( object ( is-a money ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat money ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat money ?Defendant ) ) ) ( make-instance ?oid of money ( defendant ?Defendant ) ) )")
   (derived-class money))

([rule7-deductive] of ntm-deductive-rule
   (pos-name rule7-deductive-gen339)
   (depends-on lc:case confiscation)
   (implies confiscation)
   (deductive-rule "?gen45 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"da\" ) ) ( not ( confiscation ( defendant ?Defendant ) ) ) => ( confiscation ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7-deductive-gen339 ( declare ( salience ( calc-salience confiscation ) ) ) ( run-deductive-rules ) ( object ( name ?gen45 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"da\" ) ) ( not ( object ( is-a confiscation ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat confiscation ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat confiscation ?Defendant ) ) ) ( make-instance ?oid of confiscation ( defendant ?Defendant ) ) )")
   (derived-class confiscation))

([rule2-deductive] of ntm-deductive-rule
   (pos-name rule2-deductive-gen338)
   (depends-on lc:case harm_done_with_weapon)
   (implies harm_done_with_weapon)
   (deductive-rule "?gen36 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:harm_done \"da\" ) ) ( not ( harm_done_with_weapon ( defendant ?Defendant ) ) ) => ( harm_done_with_weapon ( defendant ?Defendant ) )")
   (production-rule "( defrule rule2-deductive-gen338 ( declare ( salience ( calc-salience harm_done_with_weapon ) ) ) ( run-deductive-rules ) ( object ( name ?gen36 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:harm_done \"da\" ) ) ( not ( object ( is-a harm_done_with_weapon ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat harm_done_with_weapon ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat harm_done_with_weapon ?Defendant ) ) ) ( make-instance ?oid of harm_done_with_weapon ( defendant ?Defendant ) ) )")
   (derived-class harm_done_with_weapon))

([rule111-deductive] of ntm-deductive-rule
   (pos-name rule111-deductive-gen337)
   (depends-on lc:case lc:case reduce_penalty1)
   (implies reduce_penalty1)
   (deductive-rule "?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:admitted_guilt \"da\" ) ) ?gen25 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:regrets_it \"da\" ) ) ( not ( reduce_penalty1 ( defendant ?Defendant ) ) ) => ( reduce_penalty1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule111-deductive-gen337 ( declare ( salience ( calc-salience reduce_penalty1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen24 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:admitted_guilt \"da\" ) ) ( object ( name ?gen25 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:regrets_it \"da\" ) ) ( not ( object ( is-a reduce_penalty1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat reduce_penalty1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat reduce_penalty1 ?Defendant ) ) ) ( make-instance ?oid of reduce_penalty1 ( defendant ?Defendant ) ) )")
   (derived-class reduce_penalty1))

([rule1-deductive] of ntm-deductive-rule
   (pos-name rule1-deductive-gen336)
   (depends-on lc:case jail_3_months)
   (implies jail_3_months)
   (deductive-rule "?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"da\" ) ) ( not ( jail_3_months ( defendant ?Defendant ) ) ) => ( jail_3_months ( defendant ?Defendant ) )")
   (production-rule "( defrule rule1-deductive-gen336 ( declare ( salience ( calc-salience jail_3_months ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:unauthorized_possession_of_a_weapon \"da\" ) ) ( not ( object ( is-a jail_3_months ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat jail_3_months ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat jail_3_months ?Defendant ) ) ) ( make-instance ?oid of jail_3_months ( defendant ?Defendant ) ) )")
   (derived-class jail_3_months))

