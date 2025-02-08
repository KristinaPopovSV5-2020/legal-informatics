([pen10-defeasibly-dot] of derived-attribute-rule
   (pos-name pen10-defeasibly-dot-gen255)
   (depends-on declare to_pay_little recommend_fine_reduction to_pay_little)
   (implies to_pay_little)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen10] ) ) ) ?gen228 <- ( to_pay_little ( value 600000 ) ( positive 1 ) ( positive-derivator pen10 $? ) ) ( test ( eq ( class ?gen228 ) to_pay_little ) ) ( not ( and ?gen235 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive ?gen234 & : ( >= ?gen234 1 ) ) ) ?gen228 <- ( to_pay_little ( negative ~ 2 ) ( positive-overruled $?gen230 & : ( not ( member$ pen10 $?gen230 ) ) ) ) ) ) => ?gen228 <- ( to_pay_little ( positive 0 ) )"))

([pen10-defeasibly] of derived-attribute-rule
   (pos-name pen10-defeasibly-gen257)
   (depends-on declare recommend_fine_reduction to_pay_little)
   (implies to_pay_little)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen10] ) ) ) ?gen235 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive ?gen234 & : ( >= ?gen234 1 ) ) ) ?gen228 <- ( to_pay_little ( value 600000 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen230 & : ( not ( member$ pen10 $?gen230 ) ) ) ) ( test ( eq ( class ?gen228 ) to_pay_little ) ) => ?gen228 <- ( to_pay_little ( positive 1 ) ( positive-derivator pen10 ?gen235 ) )"))

([pen10-overruled-dot] of derived-attribute-rule
   (pos-name pen10-overruled-dot-gen259)
   (depends-on declare to_pay_little recommend_fine_reduction to_pay_little)
   (implies to_pay_little)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen10] ) ) ) ?gen228 <- ( to_pay_little ( value 600000 ) ( negative-support $?gen231 ) ( negative-overruled $?gen232 & : ( subseq-pos ( create$ pen10-overruled $?gen231 $$$ $?gen232 ) ) ) ) ( test ( eq ( class ?gen228 ) to_pay_little ) ) ( not ( and ?gen235 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive ?gen234 & : ( >= ?gen234 1 ) ) ) ?gen228 <- ( to_pay_little ( positive-defeated $?gen230 & : ( not ( member$ pen10 $?gen230 ) ) ) ) ) ) => ( calc ( bind $?gen233 ( delete-member$ $?gen232 ( create$ pen10-overruled $?gen231 ) ) ) ) ?gen228 <- ( to_pay_little ( negative-overruled $?gen233 ) )"))

([pen10-overruled] of derived-attribute-rule
   (pos-name pen10-overruled-gen261)
   (depends-on declare recommend_fine_reduction to_pay_little)
   (implies to_pay_little)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen10] ) ) ) ?gen235 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive ?gen234 & : ( >= ?gen234 1 ) ) ) ?gen228 <- ( to_pay_little ( value 600000 ) ( negative-support $?gen231 ) ( negative-overruled $?gen232 & : ( not ( subseq-pos ( create$ pen10-overruled $?gen231 $$$ $?gen232 ) ) ) ) ( positive-defeated $?gen230 & : ( not ( member$ pen10 $?gen230 ) ) ) ) ( test ( eq ( class ?gen228 ) to_pay_little ) ) => ( calc ( bind $?gen233 ( create$ pen10-overruled $?gen231 $?gen232 ) ) ) ?gen228 <- ( to_pay_little ( negative-overruled $?gen233 ) )"))

([pen10-support] of derived-attribute-rule
   (pos-name pen10-support-gen263)
   (depends-on declare recommend_fine_reduction to_pay_little)
   (implies to_pay_little)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen10] ) ) ) ?gen227 <- ( recommend_fine_reduction ( defendant ?Defendant ) ) ?gen228 <- ( to_pay_little ( value 600000 ) ( positive-support $?gen230 & : ( not ( subseq-pos ( create$ pen10 ?gen227 $$$ $?gen230 ) ) ) ) ) ( test ( eq ( class ?gen228 ) to_pay_little ) ) => ( calc ( bind $?gen233 ( create$ pen10 ?gen227 $?gen230 ) ) ) ?gen228 <- ( to_pay_little ( positive-support $?gen233 ) )"))

([pen9-defeasibly-dot] of derived-attribute-rule
   (pos-name pen9-defeasibly-dot-gen265)
   (depends-on declare to_pay_max is_speeding_on_town_road_lv3_with_accident to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen9] ) ) ) ?gen219 <- ( to_pay_max ( value 60000 ) ( positive 1 ) ( positive-derivator pen9 $? ) ) ( test ( eq ( class ?gen219 ) to_pay_max ) ) ( not ( and ?gen226 <- ( is_speeding_on_town_road_lv3_with_accident ( defendant ?Defendant ) ( positive ?gen225 & : ( >= ?gen225 1 ) ) ) ?gen219 <- ( to_pay_max ( negative ~ 2 ) ( positive-overruled $?gen221 & : ( not ( member$ pen9 $?gen221 ) ) ) ) ) ) => ?gen219 <- ( to_pay_max ( positive 0 ) )"))

([pen9-defeasibly] of derived-attribute-rule
   (pos-name pen9-defeasibly-gen267)
   (depends-on declare is_speeding_on_town_road_lv3_with_accident to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen9] ) ) ) ?gen226 <- ( is_speeding_on_town_road_lv3_with_accident ( defendant ?Defendant ) ( positive ?gen225 & : ( >= ?gen225 1 ) ) ) ?gen219 <- ( to_pay_max ( value 60000 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen221 & : ( not ( member$ pen9 $?gen221 ) ) ) ) ( test ( eq ( class ?gen219 ) to_pay_max ) ) => ?gen219 <- ( to_pay_max ( positive 1 ) ( positive-derivator pen9 ?gen226 ) )"))

([pen9-overruled-dot] of derived-attribute-rule
   (pos-name pen9-overruled-dot-gen269)
   (depends-on declare to_pay_max is_speeding_on_town_road_lv3_with_accident to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen9] ) ) ) ?gen219 <- ( to_pay_max ( value 60000 ) ( negative-support $?gen222 ) ( negative-overruled $?gen223 & : ( subseq-pos ( create$ pen9-overruled $?gen222 $$$ $?gen223 ) ) ) ) ( test ( eq ( class ?gen219 ) to_pay_max ) ) ( not ( and ?gen226 <- ( is_speeding_on_town_road_lv3_with_accident ( defendant ?Defendant ) ( positive ?gen225 & : ( >= ?gen225 1 ) ) ) ?gen219 <- ( to_pay_max ( positive-defeated $?gen221 & : ( not ( member$ pen9 $?gen221 ) ) ) ) ) ) => ( calc ( bind $?gen224 ( delete-member$ $?gen223 ( create$ pen9-overruled $?gen222 ) ) ) ) ?gen219 <- ( to_pay_max ( negative-overruled $?gen224 ) )"))

([pen9-overruled] of derived-attribute-rule
   (pos-name pen9-overruled-gen271)
   (depends-on declare is_speeding_on_town_road_lv3_with_accident to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen9] ) ) ) ?gen226 <- ( is_speeding_on_town_road_lv3_with_accident ( defendant ?Defendant ) ( positive ?gen225 & : ( >= ?gen225 1 ) ) ) ?gen219 <- ( to_pay_max ( value 60000 ) ( negative-support $?gen222 ) ( negative-overruled $?gen223 & : ( not ( subseq-pos ( create$ pen9-overruled $?gen222 $$$ $?gen223 ) ) ) ) ( positive-defeated $?gen221 & : ( not ( member$ pen9 $?gen221 ) ) ) ) ( test ( eq ( class ?gen219 ) to_pay_max ) ) => ( calc ( bind $?gen224 ( create$ pen9-overruled $?gen222 $?gen223 ) ) ) ?gen219 <- ( to_pay_max ( negative-overruled $?gen224 ) )"))

([pen9-support] of derived-attribute-rule
   (pos-name pen9-support-gen273)
   (depends-on declare is_speeding_on_town_road_lv3_with_accident to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen9] ) ) ) ?gen218 <- ( is_speeding_on_town_road_lv3_with_accident ( defendant ?Defendant ) ) ?gen219 <- ( to_pay_max ( value 60000 ) ( positive-support $?gen221 & : ( not ( subseq-pos ( create$ pen9 ?gen218 $$$ $?gen221 ) ) ) ) ) ( test ( eq ( class ?gen219 ) to_pay_max ) ) => ( calc ( bind $?gen224 ( create$ pen9 ?gen218 $?gen221 ) ) ) ?gen219 <- ( to_pay_max ( positive-support $?gen224 ) )"))

([pen8-defeasibly-dot] of derived-attribute-rule
   (pos-name pen8-defeasibly-dot-gen275)
   (depends-on declare to_pay_min is_speeding_on_town_road_lv3_with_accident to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen8] ) ) ) ?gen210 <- ( to_pay_min ( value 40000 ) ( positive 1 ) ( positive-derivator pen8 $? ) ) ( test ( eq ( class ?gen210 ) to_pay_min ) ) ( not ( and ?gen217 <- ( is_speeding_on_town_road_lv3_with_accident ( defendant ?Defendant ) ( positive ?gen216 & : ( >= ?gen216 1 ) ) ) ?gen210 <- ( to_pay_min ( negative ~ 2 ) ( positive-overruled $?gen212 & : ( not ( member$ pen8 $?gen212 ) ) ) ) ) ) => ?gen210 <- ( to_pay_min ( positive 0 ) )"))

([pen8-defeasibly] of derived-attribute-rule
   (pos-name pen8-defeasibly-gen277)
   (depends-on declare is_speeding_on_town_road_lv3_with_accident to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen8] ) ) ) ?gen217 <- ( is_speeding_on_town_road_lv3_with_accident ( defendant ?Defendant ) ( positive ?gen216 & : ( >= ?gen216 1 ) ) ) ?gen210 <- ( to_pay_min ( value 40000 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen212 & : ( not ( member$ pen8 $?gen212 ) ) ) ) ( test ( eq ( class ?gen210 ) to_pay_min ) ) => ?gen210 <- ( to_pay_min ( positive 1 ) ( positive-derivator pen8 ?gen217 ) )"))

([pen8-overruled-dot] of derived-attribute-rule
   (pos-name pen8-overruled-dot-gen279)
   (depends-on declare to_pay_min is_speeding_on_town_road_lv3_with_accident to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen8] ) ) ) ?gen210 <- ( to_pay_min ( value 40000 ) ( negative-support $?gen213 ) ( negative-overruled $?gen214 & : ( subseq-pos ( create$ pen8-overruled $?gen213 $$$ $?gen214 ) ) ) ) ( test ( eq ( class ?gen210 ) to_pay_min ) ) ( not ( and ?gen217 <- ( is_speeding_on_town_road_lv3_with_accident ( defendant ?Defendant ) ( positive ?gen216 & : ( >= ?gen216 1 ) ) ) ?gen210 <- ( to_pay_min ( positive-defeated $?gen212 & : ( not ( member$ pen8 $?gen212 ) ) ) ) ) ) => ( calc ( bind $?gen215 ( delete-member$ $?gen214 ( create$ pen8-overruled $?gen213 ) ) ) ) ?gen210 <- ( to_pay_min ( negative-overruled $?gen215 ) )"))

([pen8-overruled] of derived-attribute-rule
   (pos-name pen8-overruled-gen281)
   (depends-on declare is_speeding_on_town_road_lv3_with_accident to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen8] ) ) ) ?gen217 <- ( is_speeding_on_town_road_lv3_with_accident ( defendant ?Defendant ) ( positive ?gen216 & : ( >= ?gen216 1 ) ) ) ?gen210 <- ( to_pay_min ( value 40000 ) ( negative-support $?gen213 ) ( negative-overruled $?gen214 & : ( not ( subseq-pos ( create$ pen8-overruled $?gen213 $$$ $?gen214 ) ) ) ) ( positive-defeated $?gen212 & : ( not ( member$ pen8 $?gen212 ) ) ) ) ( test ( eq ( class ?gen210 ) to_pay_min ) ) => ( calc ( bind $?gen215 ( create$ pen8-overruled $?gen213 $?gen214 ) ) ) ?gen210 <- ( to_pay_min ( negative-overruled $?gen215 ) )"))

([pen8-support] of derived-attribute-rule
   (pos-name pen8-support-gen283)
   (depends-on declare is_speeding_on_town_road_lv3_with_accident to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen8] ) ) ) ?gen209 <- ( is_speeding_on_town_road_lv3_with_accident ( defendant ?Defendant ) ) ?gen210 <- ( to_pay_min ( value 40000 ) ( positive-support $?gen212 & : ( not ( subseq-pos ( create$ pen8 ?gen209 $$$ $?gen212 ) ) ) ) ) ( test ( eq ( class ?gen210 ) to_pay_min ) ) => ( calc ( bind $?gen215 ( create$ pen8 ?gen209 $?gen212 ) ) ) ?gen210 <- ( to_pay_min ( positive-support $?gen215 ) )"))

([pen7-defeasibly-dot] of derived-attribute-rule
   (pos-name pen7-defeasibly-dot-gen285)
   (depends-on declare max_imprisonment is_speeding_on_town_road_lv3_with_accident max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen7] ) ) ) ?gen201 <- ( max_imprisonment ( value 60 ) ( positive 1 ) ( positive-derivator pen7 $? ) ) ( test ( eq ( class ?gen201 ) max_imprisonment ) ) ( not ( and ?gen208 <- ( is_speeding_on_town_road_lv3_with_accident ( defendant ?Defendant ) ( positive ?gen207 & : ( >= ?gen207 1 ) ) ) ?gen201 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen203 & : ( not ( member$ pen7 $?gen203 ) ) ) ) ) ) => ?gen201 <- ( max_imprisonment ( positive 0 ) )"))

([pen7-defeasibly] of derived-attribute-rule
   (pos-name pen7-defeasibly-gen287)
   (depends-on declare is_speeding_on_town_road_lv3_with_accident max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen7] ) ) ) ?gen208 <- ( is_speeding_on_town_road_lv3_with_accident ( defendant ?Defendant ) ( positive ?gen207 & : ( >= ?gen207 1 ) ) ) ?gen201 <- ( max_imprisonment ( value 60 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen203 & : ( not ( member$ pen7 $?gen203 ) ) ) ) ( test ( eq ( class ?gen201 ) max_imprisonment ) ) => ?gen201 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen7 ?gen208 ) )"))

([pen7-overruled-dot] of derived-attribute-rule
   (pos-name pen7-overruled-dot-gen289)
   (depends-on declare max_imprisonment is_speeding_on_town_road_lv3_with_accident max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen7] ) ) ) ?gen201 <- ( max_imprisonment ( value 60 ) ( negative-support $?gen204 ) ( negative-overruled $?gen205 & : ( subseq-pos ( create$ pen7-overruled $?gen204 $$$ $?gen205 ) ) ) ) ( test ( eq ( class ?gen201 ) max_imprisonment ) ) ( not ( and ?gen208 <- ( is_speeding_on_town_road_lv3_with_accident ( defendant ?Defendant ) ( positive ?gen207 & : ( >= ?gen207 1 ) ) ) ?gen201 <- ( max_imprisonment ( positive-defeated $?gen203 & : ( not ( member$ pen7 $?gen203 ) ) ) ) ) ) => ( calc ( bind $?gen206 ( delete-member$ $?gen205 ( create$ pen7-overruled $?gen204 ) ) ) ) ?gen201 <- ( max_imprisonment ( negative-overruled $?gen206 ) )"))

([pen7-overruled] of derived-attribute-rule
   (pos-name pen7-overruled-gen291)
   (depends-on declare is_speeding_on_town_road_lv3_with_accident max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen7] ) ) ) ?gen208 <- ( is_speeding_on_town_road_lv3_with_accident ( defendant ?Defendant ) ( positive ?gen207 & : ( >= ?gen207 1 ) ) ) ?gen201 <- ( max_imprisonment ( value 60 ) ( negative-support $?gen204 ) ( negative-overruled $?gen205 & : ( not ( subseq-pos ( create$ pen7-overruled $?gen204 $$$ $?gen205 ) ) ) ) ( positive-defeated $?gen203 & : ( not ( member$ pen7 $?gen203 ) ) ) ) ( test ( eq ( class ?gen201 ) max_imprisonment ) ) => ( calc ( bind $?gen206 ( create$ pen7-overruled $?gen204 $?gen205 ) ) ) ?gen201 <- ( max_imprisonment ( negative-overruled $?gen206 ) )"))

([pen7-support] of derived-attribute-rule
   (pos-name pen7-support-gen293)
   (depends-on declare is_speeding_on_town_road_lv3_with_accident max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen7] ) ) ) ?gen200 <- ( is_speeding_on_town_road_lv3_with_accident ( defendant ?Defendant ) ) ?gen201 <- ( max_imprisonment ( value 60 ) ( positive-support $?gen203 & : ( not ( subseq-pos ( create$ pen7 ?gen200 $$$ $?gen203 ) ) ) ) ) ( test ( eq ( class ?gen201 ) max_imprisonment ) ) => ( calc ( bind $?gen206 ( create$ pen7 ?gen200 $?gen203 ) ) ) ?gen201 <- ( max_imprisonment ( positive-support $?gen206 ) )"))

([pen6-defeasibly-dot] of derived-attribute-rule
   (pos-name pen6-defeasibly-dot-gen295)
   (depends-on declare max_imprisonment is_speeding_on_town_road_lv3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen6] ) ) ) ?gen192 <- ( max_imprisonment ( value 30 ) ( positive 1 ) ( positive-derivator pen6 $? ) ) ( test ( eq ( class ?gen192 ) max_imprisonment ) ) ( not ( and ?gen199 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( positive ?gen198 & : ( >= ?gen198 1 ) ) ) ?gen192 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen194 & : ( not ( member$ pen6 $?gen194 ) ) ) ) ) ) => ?gen192 <- ( max_imprisonment ( positive 0 ) )"))

([pen6-defeasibly] of derived-attribute-rule
   (pos-name pen6-defeasibly-gen297)
   (depends-on declare is_speeding_on_town_road_lv3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen6] ) ) ) ?gen199 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( positive ?gen198 & : ( >= ?gen198 1 ) ) ) ?gen192 <- ( max_imprisonment ( value 30 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen194 & : ( not ( member$ pen6 $?gen194 ) ) ) ) ( test ( eq ( class ?gen192 ) max_imprisonment ) ) => ?gen192 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen6 ?gen199 ) )"))

([pen6-overruled-dot] of derived-attribute-rule
   (pos-name pen6-overruled-dot-gen299)
   (depends-on declare max_imprisonment is_speeding_on_town_road_lv3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen6] ) ) ) ?gen192 <- ( max_imprisonment ( value 30 ) ( negative-support $?gen195 ) ( negative-overruled $?gen196 & : ( subseq-pos ( create$ pen6-overruled $?gen195 $$$ $?gen196 ) ) ) ) ( test ( eq ( class ?gen192 ) max_imprisonment ) ) ( not ( and ?gen199 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( positive ?gen198 & : ( >= ?gen198 1 ) ) ) ?gen192 <- ( max_imprisonment ( positive-defeated $?gen194 & : ( not ( member$ pen6 $?gen194 ) ) ) ) ) ) => ( calc ( bind $?gen197 ( delete-member$ $?gen196 ( create$ pen6-overruled $?gen195 ) ) ) ) ?gen192 <- ( max_imprisonment ( negative-overruled $?gen197 ) )"))

([pen6-overruled] of derived-attribute-rule
   (pos-name pen6-overruled-gen301)
   (depends-on declare is_speeding_on_town_road_lv3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen6] ) ) ) ?gen199 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( positive ?gen198 & : ( >= ?gen198 1 ) ) ) ?gen192 <- ( max_imprisonment ( value 30 ) ( negative-support $?gen195 ) ( negative-overruled $?gen196 & : ( not ( subseq-pos ( create$ pen6-overruled $?gen195 $$$ $?gen196 ) ) ) ) ( positive-defeated $?gen194 & : ( not ( member$ pen6 $?gen194 ) ) ) ) ( test ( eq ( class ?gen192 ) max_imprisonment ) ) => ( calc ( bind $?gen197 ( create$ pen6-overruled $?gen195 $?gen196 ) ) ) ?gen192 <- ( max_imprisonment ( negative-overruled $?gen197 ) )"))

([pen6-support] of derived-attribute-rule
   (pos-name pen6-support-gen303)
   (depends-on declare is_speeding_on_town_road_lv3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen6] ) ) ) ?gen191 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ) ?gen192 <- ( max_imprisonment ( value 30 ) ( positive-support $?gen194 & : ( not ( subseq-pos ( create$ pen6 ?gen191 $$$ $?gen194 ) ) ) ) ) ( test ( eq ( class ?gen192 ) max_imprisonment ) ) => ( calc ( bind $?gen197 ( create$ pen6 ?gen191 $?gen194 ) ) ) ?gen192 <- ( max_imprisonment ( positive-support $?gen197 ) )"))

([pen5-defeasibly-dot] of derived-attribute-rule
   (pos-name pen5-defeasibly-dot-gen305)
   (depends-on declare to_pay_max is_speeding_on_town_road_lv3 to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen5] ) ) ) ?gen183 <- ( to_pay_max ( value 40000 ) ( positive 1 ) ( positive-derivator pen5 $? ) ) ( test ( eq ( class ?gen183 ) to_pay_max ) ) ( not ( and ?gen190 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( positive ?gen189 & : ( >= ?gen189 1 ) ) ) ?gen183 <- ( to_pay_max ( negative ~ 2 ) ( positive-overruled $?gen185 & : ( not ( member$ pen5 $?gen185 ) ) ) ) ) ) => ?gen183 <- ( to_pay_max ( positive 0 ) )"))

([pen5-defeasibly] of derived-attribute-rule
   (pos-name pen5-defeasibly-gen307)
   (depends-on declare is_speeding_on_town_road_lv3 to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen5] ) ) ) ?gen190 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( positive ?gen189 & : ( >= ?gen189 1 ) ) ) ?gen183 <- ( to_pay_max ( value 40000 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen185 & : ( not ( member$ pen5 $?gen185 ) ) ) ) ( test ( eq ( class ?gen183 ) to_pay_max ) ) => ?gen183 <- ( to_pay_max ( positive 1 ) ( positive-derivator pen5 ?gen190 ) )"))

([pen5-overruled-dot] of derived-attribute-rule
   (pos-name pen5-overruled-dot-gen309)
   (depends-on declare to_pay_max is_speeding_on_town_road_lv3 to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen5] ) ) ) ?gen183 <- ( to_pay_max ( value 40000 ) ( negative-support $?gen186 ) ( negative-overruled $?gen187 & : ( subseq-pos ( create$ pen5-overruled $?gen186 $$$ $?gen187 ) ) ) ) ( test ( eq ( class ?gen183 ) to_pay_max ) ) ( not ( and ?gen190 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( positive ?gen189 & : ( >= ?gen189 1 ) ) ) ?gen183 <- ( to_pay_max ( positive-defeated $?gen185 & : ( not ( member$ pen5 $?gen185 ) ) ) ) ) ) => ( calc ( bind $?gen188 ( delete-member$ $?gen187 ( create$ pen5-overruled $?gen186 ) ) ) ) ?gen183 <- ( to_pay_max ( negative-overruled $?gen188 ) )"))

([pen5-overruled] of derived-attribute-rule
   (pos-name pen5-overruled-gen311)
   (depends-on declare is_speeding_on_town_road_lv3 to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen5] ) ) ) ?gen190 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( positive ?gen189 & : ( >= ?gen189 1 ) ) ) ?gen183 <- ( to_pay_max ( value 40000 ) ( negative-support $?gen186 ) ( negative-overruled $?gen187 & : ( not ( subseq-pos ( create$ pen5-overruled $?gen186 $$$ $?gen187 ) ) ) ) ( positive-defeated $?gen185 & : ( not ( member$ pen5 $?gen185 ) ) ) ) ( test ( eq ( class ?gen183 ) to_pay_max ) ) => ( calc ( bind $?gen188 ( create$ pen5-overruled $?gen186 $?gen187 ) ) ) ?gen183 <- ( to_pay_max ( negative-overruled $?gen188 ) )"))

([pen5-support] of derived-attribute-rule
   (pos-name pen5-support-gen313)
   (depends-on declare is_speeding_on_town_road_lv3 to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen5] ) ) ) ?gen182 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ) ?gen183 <- ( to_pay_max ( value 40000 ) ( positive-support $?gen185 & : ( not ( subseq-pos ( create$ pen5 ?gen182 $$$ $?gen185 ) ) ) ) ) ( test ( eq ( class ?gen183 ) to_pay_max ) ) => ( calc ( bind $?gen188 ( create$ pen5 ?gen182 $?gen185 ) ) ) ?gen183 <- ( to_pay_max ( positive-support $?gen188 ) )"))

([pen4-defeasibly-dot] of derived-attribute-rule
   (pos-name pen4-defeasibly-dot-gen315)
   (depends-on declare to_pay_min is_speeding_on_town_road_lv3 to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen4] ) ) ) ?gen174 <- ( to_pay_min ( value 20000 ) ( positive 1 ) ( positive-derivator pen4 $? ) ) ( test ( eq ( class ?gen174 ) to_pay_min ) ) ( not ( and ?gen181 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( positive ?gen180 & : ( >= ?gen180 1 ) ) ) ?gen174 <- ( to_pay_min ( negative ~ 2 ) ( positive-overruled $?gen176 & : ( not ( member$ pen4 $?gen176 ) ) ) ) ) ) => ?gen174 <- ( to_pay_min ( positive 0 ) )"))

([pen4-defeasibly] of derived-attribute-rule
   (pos-name pen4-defeasibly-gen317)
   (depends-on declare is_speeding_on_town_road_lv3 to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen4] ) ) ) ?gen181 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( positive ?gen180 & : ( >= ?gen180 1 ) ) ) ?gen174 <- ( to_pay_min ( value 20000 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen176 & : ( not ( member$ pen4 $?gen176 ) ) ) ) ( test ( eq ( class ?gen174 ) to_pay_min ) ) => ?gen174 <- ( to_pay_min ( positive 1 ) ( positive-derivator pen4 ?gen181 ) )"))

([pen4-overruled-dot] of derived-attribute-rule
   (pos-name pen4-overruled-dot-gen319)
   (depends-on declare to_pay_min is_speeding_on_town_road_lv3 to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen4] ) ) ) ?gen174 <- ( to_pay_min ( value 20000 ) ( negative-support $?gen177 ) ( negative-overruled $?gen178 & : ( subseq-pos ( create$ pen4-overruled $?gen177 $$$ $?gen178 ) ) ) ) ( test ( eq ( class ?gen174 ) to_pay_min ) ) ( not ( and ?gen181 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( positive ?gen180 & : ( >= ?gen180 1 ) ) ) ?gen174 <- ( to_pay_min ( positive-defeated $?gen176 & : ( not ( member$ pen4 $?gen176 ) ) ) ) ) ) => ( calc ( bind $?gen179 ( delete-member$ $?gen178 ( create$ pen4-overruled $?gen177 ) ) ) ) ?gen174 <- ( to_pay_min ( negative-overruled $?gen179 ) )"))

([pen4-overruled] of derived-attribute-rule
   (pos-name pen4-overruled-gen321)
   (depends-on declare is_speeding_on_town_road_lv3 to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen4] ) ) ) ?gen181 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( positive ?gen180 & : ( >= ?gen180 1 ) ) ) ?gen174 <- ( to_pay_min ( value 20000 ) ( negative-support $?gen177 ) ( negative-overruled $?gen178 & : ( not ( subseq-pos ( create$ pen4-overruled $?gen177 $$$ $?gen178 ) ) ) ) ( positive-defeated $?gen176 & : ( not ( member$ pen4 $?gen176 ) ) ) ) ( test ( eq ( class ?gen174 ) to_pay_min ) ) => ( calc ( bind $?gen179 ( create$ pen4-overruled $?gen177 $?gen178 ) ) ) ?gen174 <- ( to_pay_min ( negative-overruled $?gen179 ) )"))

([pen4-support] of derived-attribute-rule
   (pos-name pen4-support-gen323)
   (depends-on declare is_speeding_on_town_road_lv3 to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen4] ) ) ) ?gen173 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ) ?gen174 <- ( to_pay_min ( value 20000 ) ( positive-support $?gen176 & : ( not ( subseq-pos ( create$ pen4 ?gen173 $$$ $?gen176 ) ) ) ) ) ( test ( eq ( class ?gen174 ) to_pay_min ) ) => ( calc ( bind $?gen179 ( create$ pen4 ?gen173 $?gen176 ) ) ) ?gen174 <- ( to_pay_min ( positive-support $?gen179 ) )"))

([pen3-defeasibly-dot] of derived-attribute-rule
   (pos-name pen3-defeasibly-dot-gen325)
   (depends-on declare to_pay_max is_speeding_on_town_road_lv2 to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen3] ) ) ) ?gen165 <- ( to_pay_max ( value 20000 ) ( positive 1 ) ( positive-derivator pen3 $? ) ) ( test ( eq ( class ?gen165 ) to_pay_max ) ) ( not ( and ?gen172 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( positive ?gen171 & : ( >= ?gen171 1 ) ) ) ?gen165 <- ( to_pay_max ( negative ~ 2 ) ( positive-overruled $?gen167 & : ( not ( member$ pen3 $?gen167 ) ) ) ) ) ) => ?gen165 <- ( to_pay_max ( positive 0 ) )"))

([pen3-defeasibly] of derived-attribute-rule
   (pos-name pen3-defeasibly-gen327)
   (depends-on declare is_speeding_on_town_road_lv2 to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen3] ) ) ) ?gen172 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( positive ?gen171 & : ( >= ?gen171 1 ) ) ) ?gen165 <- ( to_pay_max ( value 20000 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen167 & : ( not ( member$ pen3 $?gen167 ) ) ) ) ( test ( eq ( class ?gen165 ) to_pay_max ) ) => ?gen165 <- ( to_pay_max ( positive 1 ) ( positive-derivator pen3 ?gen172 ) )"))

([pen3-overruled-dot] of derived-attribute-rule
   (pos-name pen3-overruled-dot-gen329)
   (depends-on declare to_pay_max is_speeding_on_town_road_lv2 to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen3] ) ) ) ?gen165 <- ( to_pay_max ( value 20000 ) ( negative-support $?gen168 ) ( negative-overruled $?gen169 & : ( subseq-pos ( create$ pen3-overruled $?gen168 $$$ $?gen169 ) ) ) ) ( test ( eq ( class ?gen165 ) to_pay_max ) ) ( not ( and ?gen172 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( positive ?gen171 & : ( >= ?gen171 1 ) ) ) ?gen165 <- ( to_pay_max ( positive-defeated $?gen167 & : ( not ( member$ pen3 $?gen167 ) ) ) ) ) ) => ( calc ( bind $?gen170 ( delete-member$ $?gen169 ( create$ pen3-overruled $?gen168 ) ) ) ) ?gen165 <- ( to_pay_max ( negative-overruled $?gen170 ) )"))

([pen3-overruled] of derived-attribute-rule
   (pos-name pen3-overruled-gen331)
   (depends-on declare is_speeding_on_town_road_lv2 to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen3] ) ) ) ?gen172 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( positive ?gen171 & : ( >= ?gen171 1 ) ) ) ?gen165 <- ( to_pay_max ( value 20000 ) ( negative-support $?gen168 ) ( negative-overruled $?gen169 & : ( not ( subseq-pos ( create$ pen3-overruled $?gen168 $$$ $?gen169 ) ) ) ) ( positive-defeated $?gen167 & : ( not ( member$ pen3 $?gen167 ) ) ) ) ( test ( eq ( class ?gen165 ) to_pay_max ) ) => ( calc ( bind $?gen170 ( create$ pen3-overruled $?gen168 $?gen169 ) ) ) ?gen165 <- ( to_pay_max ( negative-overruled $?gen170 ) )"))

([pen3-support] of derived-attribute-rule
   (pos-name pen3-support-gen333)
   (depends-on declare is_speeding_on_town_road_lv2 to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen3] ) ) ) ?gen164 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ) ?gen165 <- ( to_pay_max ( value 20000 ) ( positive-support $?gen167 & : ( not ( subseq-pos ( create$ pen3 ?gen164 $$$ $?gen167 ) ) ) ) ) ( test ( eq ( class ?gen165 ) to_pay_max ) ) => ( calc ( bind $?gen170 ( create$ pen3 ?gen164 $?gen167 ) ) ) ?gen165 <- ( to_pay_max ( positive-support $?gen170 ) )"))

([pen2-defeasibly-dot] of derived-attribute-rule
   (pos-name pen2-defeasibly-dot-gen335)
   (depends-on declare to_pay_min is_speeding_on_town_road_lv2 to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen2] ) ) ) ?gen156 <- ( to_pay_min ( value 10000 ) ( positive 1 ) ( positive-derivator pen2 $? ) ) ( test ( eq ( class ?gen156 ) to_pay_min ) ) ( not ( and ?gen163 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( positive ?gen162 & : ( >= ?gen162 1 ) ) ) ?gen156 <- ( to_pay_min ( negative ~ 2 ) ( positive-overruled $?gen158 & : ( not ( member$ pen2 $?gen158 ) ) ) ) ) ) => ?gen156 <- ( to_pay_min ( positive 0 ) )"))

([pen2-defeasibly] of derived-attribute-rule
   (pos-name pen2-defeasibly-gen337)
   (depends-on declare is_speeding_on_town_road_lv2 to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen2] ) ) ) ?gen163 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( positive ?gen162 & : ( >= ?gen162 1 ) ) ) ?gen156 <- ( to_pay_min ( value 10000 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen158 & : ( not ( member$ pen2 $?gen158 ) ) ) ) ( test ( eq ( class ?gen156 ) to_pay_min ) ) => ?gen156 <- ( to_pay_min ( positive 1 ) ( positive-derivator pen2 ?gen163 ) )"))

([pen2-overruled-dot] of derived-attribute-rule
   (pos-name pen2-overruled-dot-gen339)
   (depends-on declare to_pay_min is_speeding_on_town_road_lv2 to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen2] ) ) ) ?gen156 <- ( to_pay_min ( value 10000 ) ( negative-support $?gen159 ) ( negative-overruled $?gen160 & : ( subseq-pos ( create$ pen2-overruled $?gen159 $$$ $?gen160 ) ) ) ) ( test ( eq ( class ?gen156 ) to_pay_min ) ) ( not ( and ?gen163 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( positive ?gen162 & : ( >= ?gen162 1 ) ) ) ?gen156 <- ( to_pay_min ( positive-defeated $?gen158 & : ( not ( member$ pen2 $?gen158 ) ) ) ) ) ) => ( calc ( bind $?gen161 ( delete-member$ $?gen160 ( create$ pen2-overruled $?gen159 ) ) ) ) ?gen156 <- ( to_pay_min ( negative-overruled $?gen161 ) )"))

([pen2-overruled] of derived-attribute-rule
   (pos-name pen2-overruled-gen341)
   (depends-on declare is_speeding_on_town_road_lv2 to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen2] ) ) ) ?gen163 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( positive ?gen162 & : ( >= ?gen162 1 ) ) ) ?gen156 <- ( to_pay_min ( value 10000 ) ( negative-support $?gen159 ) ( negative-overruled $?gen160 & : ( not ( subseq-pos ( create$ pen2-overruled $?gen159 $$$ $?gen160 ) ) ) ) ( positive-defeated $?gen158 & : ( not ( member$ pen2 $?gen158 ) ) ) ) ( test ( eq ( class ?gen156 ) to_pay_min ) ) => ( calc ( bind $?gen161 ( create$ pen2-overruled $?gen159 $?gen160 ) ) ) ?gen156 <- ( to_pay_min ( negative-overruled $?gen161 ) )"))

([pen2-support] of derived-attribute-rule
   (pos-name pen2-support-gen343)
   (depends-on declare is_speeding_on_town_road_lv2 to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen2] ) ) ) ?gen155 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ) ?gen156 <- ( to_pay_min ( value 10000 ) ( positive-support $?gen158 & : ( not ( subseq-pos ( create$ pen2 ?gen155 $$$ $?gen158 ) ) ) ) ) ( test ( eq ( class ?gen156 ) to_pay_min ) ) => ( calc ( bind $?gen161 ( create$ pen2 ?gen155 $?gen158 ) ) ) ?gen156 <- ( to_pay_min ( positive-support $?gen161 ) )"))

([pen1-defeasibly-dot] of derived-attribute-rule
   (pos-name pen1-defeasibly-dot-gen345)
   (depends-on declare to_pay is_speeding_on_town_road_lv1 to_pay)
   (implies to_pay)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen1] ) ) ) ?gen147 <- ( to_pay ( value 10000 ) ( positive 1 ) ( positive-derivator pen1 $? ) ) ( test ( eq ( class ?gen147 ) to_pay ) ) ( not ( and ?gen154 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( positive ?gen153 & : ( >= ?gen153 1 ) ) ) ?gen147 <- ( to_pay ( negative ~ 2 ) ( positive-overruled $?gen149 & : ( not ( member$ pen1 $?gen149 ) ) ) ) ) ) => ?gen147 <- ( to_pay ( positive 0 ) )"))

([pen1-defeasibly] of derived-attribute-rule
   (pos-name pen1-defeasibly-gen347)
   (depends-on declare is_speeding_on_town_road_lv1 to_pay)
   (implies to_pay)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen1] ) ) ) ?gen154 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( positive ?gen153 & : ( >= ?gen153 1 ) ) ) ?gen147 <- ( to_pay ( value 10000 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen149 & : ( not ( member$ pen1 $?gen149 ) ) ) ) ( test ( eq ( class ?gen147 ) to_pay ) ) => ?gen147 <- ( to_pay ( positive 1 ) ( positive-derivator pen1 ?gen154 ) )"))

([pen1-overruled-dot] of derived-attribute-rule
   (pos-name pen1-overruled-dot-gen349)
   (depends-on declare to_pay is_speeding_on_town_road_lv1 to_pay)
   (implies to_pay)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen1] ) ) ) ?gen147 <- ( to_pay ( value 10000 ) ( negative-support $?gen150 ) ( negative-overruled $?gen151 & : ( subseq-pos ( create$ pen1-overruled $?gen150 $$$ $?gen151 ) ) ) ) ( test ( eq ( class ?gen147 ) to_pay ) ) ( not ( and ?gen154 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( positive ?gen153 & : ( >= ?gen153 1 ) ) ) ?gen147 <- ( to_pay ( positive-defeated $?gen149 & : ( not ( member$ pen1 $?gen149 ) ) ) ) ) ) => ( calc ( bind $?gen152 ( delete-member$ $?gen151 ( create$ pen1-overruled $?gen150 ) ) ) ) ?gen147 <- ( to_pay ( negative-overruled $?gen152 ) )"))

([pen1-overruled] of derived-attribute-rule
   (pos-name pen1-overruled-gen351)
   (depends-on declare is_speeding_on_town_road_lv1 to_pay)
   (implies to_pay)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen1] ) ) ) ?gen154 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( positive ?gen153 & : ( >= ?gen153 1 ) ) ) ?gen147 <- ( to_pay ( value 10000 ) ( negative-support $?gen150 ) ( negative-overruled $?gen151 & : ( not ( subseq-pos ( create$ pen1-overruled $?gen150 $$$ $?gen151 ) ) ) ) ( positive-defeated $?gen149 & : ( not ( member$ pen1 $?gen149 ) ) ) ) ( test ( eq ( class ?gen147 ) to_pay ) ) => ( calc ( bind $?gen152 ( create$ pen1-overruled $?gen150 $?gen151 ) ) ) ?gen147 <- ( to_pay ( negative-overruled $?gen152 ) )"))

([pen1-support] of derived-attribute-rule
   (pos-name pen1-support-gen353)
   (depends-on declare is_speeding_on_town_road_lv1 to_pay)
   (implies to_pay)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen1] ) ) ) ?gen146 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ) ?gen147 <- ( to_pay ( value 10000 ) ( positive-support $?gen149 & : ( not ( subseq-pos ( create$ pen1 ?gen146 $$$ $?gen149 ) ) ) ) ) ( test ( eq ( class ?gen147 ) to_pay ) ) => ( calc ( bind $?gen152 ( create$ pen1 ?gen146 $?gen149 ) ) ) ?gen147 <- ( to_pay ( positive-support $?gen152 ) )"))

([rule9-defeasibly-dot] of derived-attribute-rule
   (pos-name rule9-defeasibly-dot-gen355)
   (depends-on declare recommend_fine_reduction lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule9] ) ) ) ?gen138 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule9 $? ) ) ( test ( eq ( class ?gen138 ) recommend_fine_reduction ) ) ( not ( and ?gen145 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ( positive ?gen144 & : ( >= ?gen144 1 ) ) ) ?gen138 <- ( recommend_fine_reduction ( negative ~ 2 ) ( positive-overruled $?gen140 & : ( not ( member$ rule9 $?gen140 ) ) ) ) ) ) => ?gen138 <- ( recommend_fine_reduction ( positive 0 ) )"))

([rule9-defeasibly] of derived-attribute-rule
   (pos-name rule9-defeasibly-gen357)
   (depends-on declare lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule9] ) ) ) ?gen145 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ( positive ?gen144 & : ( >= ?gen144 1 ) ) ) ?gen138 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen140 & : ( not ( member$ rule9 $?gen140 ) ) ) ) ( test ( eq ( class ?gen138 ) recommend_fine_reduction ) ) => ?gen138 <- ( recommend_fine_reduction ( positive 1 ) ( positive-derivator rule9 ?gen145 ) )"))

([rule9-overruled-dot] of derived-attribute-rule
   (pos-name rule9-overruled-dot-gen359)
   (depends-on declare recommend_fine_reduction lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule9] ) ) ) ?gen138 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( negative-support $?gen141 ) ( negative-overruled $?gen142 & : ( subseq-pos ( create$ rule9-overruled $?gen141 $$$ $?gen142 ) ) ) ) ( test ( eq ( class ?gen138 ) recommend_fine_reduction ) ) ( not ( and ?gen145 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ( positive ?gen144 & : ( >= ?gen144 1 ) ) ) ?gen138 <- ( recommend_fine_reduction ( positive-defeated $?gen140 & : ( not ( member$ rule9 $?gen140 ) ) ) ) ) ) => ( calc ( bind $?gen143 ( delete-member$ $?gen142 ( create$ rule9-overruled $?gen141 ) ) ) ) ?gen138 <- ( recommend_fine_reduction ( negative-overruled $?gen143 ) )"))

([rule9-overruled] of derived-attribute-rule
   (pos-name rule9-overruled-gen361)
   (depends-on declare lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule9] ) ) ) ?gen145 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ( positive ?gen144 & : ( >= ?gen144 1 ) ) ) ?gen138 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( negative-support $?gen141 ) ( negative-overruled $?gen142 & : ( not ( subseq-pos ( create$ rule9-overruled $?gen141 $$$ $?gen142 ) ) ) ) ( positive-defeated $?gen140 & : ( not ( member$ rule9 $?gen140 ) ) ) ) ( test ( eq ( class ?gen138 ) recommend_fine_reduction ) ) => ( calc ( bind $?gen143 ( create$ rule9-overruled $?gen141 $?gen142 ) ) ) ?gen138 <- ( recommend_fine_reduction ( negative-overruled $?gen143 ) )"))

([rule9-support] of derived-attribute-rule
   (pos-name rule9-support-gen363)
   (depends-on declare lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule9] ) ) ) ?gen137 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ) ?gen138 <- ( recommend_fine_reduction ( defendant ?Defendant ) ( positive-support $?gen140 & : ( not ( subseq-pos ( create$ rule9 ?gen137 $$$ $?gen140 ) ) ) ) ) ( test ( eq ( class ?gen138 ) recommend_fine_reduction ) ) => ( calc ( bind $?gen143 ( create$ rule9 ?gen137 $?gen140 ) ) ) ?gen138 <- ( recommend_fine_reduction ( positive-support $?gen143 ) )"))

([rule8-defeasibly-dot] of derived-attribute-rule
   (pos-name rule8-defeasibly-dot-gen365)
   (depends-on declare is_speeding_on_town_road_lv3_with_accident lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv3_with_accident)
   (implies is_speeding_on_town_road_lv3_with_accident)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule8] ) ) ) ?gen123 <- ( is_speeding_on_town_road_lv3_with_accident ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule8 $? ) ) ( test ( eq ( class ?gen123 ) is_speeding_on_town_road_lv3_with_accident ) ) ( not ( and ?gen130 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ( positive ?gen129 & : ( >= ?gen129 1 ) ) ) ?gen132 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ( positive ?gen131 & : ( >= ?gen131 1 ) ) ) ( test ( > ?Speed 100 ) ) ?gen134 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen136 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"yes\" ) ( positive ?gen135 & : ( >= ?gen135 1 ) ) ) ?gen123 <- ( is_speeding_on_town_road_lv3_with_accident ( negative ~ 2 ) ( positive-overruled $?gen125 & : ( not ( member$ rule8 $?gen125 ) ) ) ) ) ) => ?gen123 <- ( is_speeding_on_town_road_lv3_with_accident ( positive 0 ) )"))

([rule8-defeasibly] of derived-attribute-rule
   (pos-name rule8-defeasibly-gen367)
   (depends-on declare lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv3_with_accident)
   (implies is_speeding_on_town_road_lv3_with_accident)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule8] ) ) ) ?gen130 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ( positive ?gen129 & : ( >= ?gen129 1 ) ) ) ?gen132 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ( positive ?gen131 & : ( >= ?gen131 1 ) ) ) ( test ( > ?Speed 100 ) ) ?gen134 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen136 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"yes\" ) ( positive ?gen135 & : ( >= ?gen135 1 ) ) ) ?gen123 <- ( is_speeding_on_town_road_lv3_with_accident ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen125 & : ( not ( member$ rule8 $?gen125 ) ) ) ) ( test ( eq ( class ?gen123 ) is_speeding_on_town_road_lv3_with_accident ) ) => ?gen123 <- ( is_speeding_on_town_road_lv3_with_accident ( positive 1 ) ( positive-derivator rule8 ?gen130 ?gen132 ?gen134 ?gen136 ) )"))

([rule8-overruled-dot] of derived-attribute-rule
   (pos-name rule8-overruled-dot-gen369)
   (depends-on declare is_speeding_on_town_road_lv3_with_accident lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv3_with_accident)
   (implies is_speeding_on_town_road_lv3_with_accident)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule8] ) ) ) ?gen123 <- ( is_speeding_on_town_road_lv3_with_accident ( defendant ?Defendant ) ( negative-support $?gen126 ) ( negative-overruled $?gen127 & : ( subseq-pos ( create$ rule8-overruled $?gen126 $$$ $?gen127 ) ) ) ) ( test ( eq ( class ?gen123 ) is_speeding_on_town_road_lv3_with_accident ) ) ( not ( and ?gen130 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ( positive ?gen129 & : ( >= ?gen129 1 ) ) ) ?gen132 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ( positive ?gen131 & : ( >= ?gen131 1 ) ) ) ( test ( > ?Speed 100 ) ) ?gen134 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen136 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"yes\" ) ( positive ?gen135 & : ( >= ?gen135 1 ) ) ) ?gen123 <- ( is_speeding_on_town_road_lv3_with_accident ( positive-defeated $?gen125 & : ( not ( member$ rule8 $?gen125 ) ) ) ) ) ) => ( calc ( bind $?gen128 ( delete-member$ $?gen127 ( create$ rule8-overruled $?gen126 ) ) ) ) ?gen123 <- ( is_speeding_on_town_road_lv3_with_accident ( negative-overruled $?gen128 ) )"))

([rule8-overruled] of derived-attribute-rule
   (pos-name rule8-overruled-gen371)
   (depends-on declare lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv3_with_accident)
   (implies is_speeding_on_town_road_lv3_with_accident)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule8] ) ) ) ?gen130 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ( positive ?gen129 & : ( >= ?gen129 1 ) ) ) ?gen132 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ( positive ?gen131 & : ( >= ?gen131 1 ) ) ) ( test ( > ?Speed 100 ) ) ?gen134 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen136 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"yes\" ) ( positive ?gen135 & : ( >= ?gen135 1 ) ) ) ?gen123 <- ( is_speeding_on_town_road_lv3_with_accident ( defendant ?Defendant ) ( negative-support $?gen126 ) ( negative-overruled $?gen127 & : ( not ( subseq-pos ( create$ rule8-overruled $?gen126 $$$ $?gen127 ) ) ) ) ( positive-defeated $?gen125 & : ( not ( member$ rule8 $?gen125 ) ) ) ) ( test ( eq ( class ?gen123 ) is_speeding_on_town_road_lv3_with_accident ) ) => ( calc ( bind $?gen128 ( create$ rule8-overruled $?gen126 $?gen127 ) ) ) ?gen123 <- ( is_speeding_on_town_road_lv3_with_accident ( negative-overruled $?gen128 ) )"))

([rule8-support] of derived-attribute-rule
   (pos-name rule8-support-gen373)
   (depends-on declare lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv3_with_accident)
   (implies is_speeding_on_town_road_lv3_with_accident)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule8] ) ) ) ?gen118 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ) ?gen119 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ) ( test ( > ?Speed 100 ) ) ?gen121 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ) ?gen122 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"yes\" ) ) ?gen123 <- ( is_speeding_on_town_road_lv3_with_accident ( defendant ?Defendant ) ( positive-support $?gen125 & : ( not ( subseq-pos ( create$ rule8 ?gen118 ?gen119 ?gen121 ?gen122 $$$ $?gen125 ) ) ) ) ) ( test ( eq ( class ?gen123 ) is_speeding_on_town_road_lv3_with_accident ) ) => ( calc ( bind $?gen128 ( create$ rule8 ?gen118 ?gen119 ?gen121 ?gen122 $?gen125 ) ) ) ?gen123 <- ( is_speeding_on_town_road_lv3_with_accident ( positive-support $?gen128 ) )"))

([rule7-defeated-dot] of derived-attribute-rule
   (pos-name rule7-defeated-dot-gen375)
   (depends-on declare is_speeding_on_town_road_lv1 is_speeding_on_town_road_lv3)
   (implies is_speeding_on_town_road_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule7] ) ) ) ?gen110 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( positive-defeated $?gen113 & : ( subseq-pos ( create$ rule7-defeated rule1 $$$ $?gen113 ) ) ) ) ( test ( eq ( class ?gen110 ) is_speeding_on_town_road_lv1 ) ) ( not ?gen117 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( positive ?gen116 & : ( >= ?gen116 1 ) ) ) ) => ( calc ( bind $?gen112 ( delete-member$ $?gen113 ( create$ rule7-defeated rule1 ) ) ) ) ?gen110 <- ( is_speeding_on_town_road_lv1 ( positive-defeated $?gen112 ) )"))

([rule7-defeated] of derived-attribute-rule
   (pos-name rule7-defeated-gen377)
   (depends-on declare is_speeding_on_town_road_lv3 is_speeding_on_town_road_lv1)
   (implies is_speeding_on_town_road_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule7] ) ) ) ?gen117 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( positive ?gen116 & : ( >= ?gen116 1 ) ) ) ?gen110 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( positive-defeated $?gen113 & : ( not ( subseq-pos ( create$ rule7-defeated rule1 $$$ $?gen113 ) ) ) ) ) ( test ( eq ( class ?gen110 ) is_speeding_on_town_road_lv1 ) ) => ( calc ( bind $?gen112 ( create$ rule7-defeated rule1 $?gen113 ) ) ) ?gen110 <- ( is_speeding_on_town_road_lv1 ( positive-defeated $?gen112 ) )"))

([rule7-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7-defeasibly-dot-gen379)
   (depends-on declare is_speeding_on_town_road_lv1 is_speeding_on_town_road_lv3 is_speeding_on_town_road_lv1)
   (implies is_speeding_on_town_road_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7] ) ) ) ?gen110 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule7 $? ) ) ( test ( eq ( class ?gen110 ) is_speeding_on_town_road_lv1 ) ) ( not ( and ?gen117 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( positive ?gen116 & : ( >= ?gen116 1 ) ) ) ?gen110 <- ( is_speeding_on_town_road_lv1 ( positive ~ 2 ) ( negative-overruled $?gen112 & : ( not ( member$ rule7 $?gen112 ) ) ) ) ) ) => ?gen110 <- ( is_speeding_on_town_road_lv1 ( negative 0 ) )"))

([rule7-defeasibly] of derived-attribute-rule
   (pos-name rule7-defeasibly-gen381)
   (depends-on declare is_speeding_on_town_road_lv3 is_speeding_on_town_road_lv1)
   (implies is_speeding_on_town_road_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7] ) ) ) ?gen117 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( positive ?gen116 & : ( >= ?gen116 1 ) ) ) ?gen110 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen112 & : ( not ( member$ rule7 $?gen112 ) ) ) ) ( test ( eq ( class ?gen110 ) is_speeding_on_town_road_lv1 ) ) => ?gen110 <- ( is_speeding_on_town_road_lv1 ( negative 1 ) ( negative-derivator rule7 ?gen117 ) )"))

([rule7-overruled-dot] of derived-attribute-rule
   (pos-name rule7-overruled-dot-gen383)
   (depends-on declare is_speeding_on_town_road_lv1 is_speeding_on_town_road_lv3 is_speeding_on_town_road_lv1)
   (implies is_speeding_on_town_road_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7] ) ) ) ?gen110 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( positive-support $?gen113 ) ( positive-overruled $?gen114 & : ( subseq-pos ( create$ rule7-overruled $?gen113 $$$ $?gen114 ) ) ) ) ( test ( eq ( class ?gen110 ) is_speeding_on_town_road_lv1 ) ) ( not ( and ?gen117 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( positive ?gen116 & : ( >= ?gen116 1 ) ) ) ?gen110 <- ( is_speeding_on_town_road_lv1 ( negative-defeated $?gen112 & : ( not ( member$ rule7 $?gen112 ) ) ) ) ) ) => ( calc ( bind $?gen115 ( delete-member$ $?gen114 ( create$ rule7-overruled $?gen113 ) ) ) ) ?gen110 <- ( is_speeding_on_town_road_lv1 ( positive-overruled $?gen115 ) )"))

([rule7-overruled] of derived-attribute-rule
   (pos-name rule7-overruled-gen385)
   (depends-on declare is_speeding_on_town_road_lv3 is_speeding_on_town_road_lv1)
   (implies is_speeding_on_town_road_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7] ) ) ) ?gen117 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( positive ?gen116 & : ( >= ?gen116 1 ) ) ) ?gen110 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( positive-support $?gen113 ) ( positive-overruled $?gen114 & : ( not ( subseq-pos ( create$ rule7-overruled $?gen113 $$$ $?gen114 ) ) ) ) ( negative-defeated $?gen112 & : ( not ( member$ rule7 $?gen112 ) ) ) ) ( test ( eq ( class ?gen110 ) is_speeding_on_town_road_lv1 ) ) => ( calc ( bind $?gen115 ( create$ rule7-overruled $?gen113 $?gen114 ) ) ) ?gen110 <- ( is_speeding_on_town_road_lv1 ( positive-overruled $?gen115 ) )"))

([rule7-support] of derived-attribute-rule
   (pos-name rule7-support-gen387)
   (depends-on declare is_speeding_on_town_road_lv3 is_speeding_on_town_road_lv1)
   (implies is_speeding_on_town_road_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7] ) ) ) ?gen109 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ) ?gen110 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( negative-support $?gen112 & : ( not ( subseq-pos ( create$ rule7 ?gen109 $$$ $?gen112 ) ) ) ) ) ( test ( eq ( class ?gen110 ) is_speeding_on_town_road_lv1 ) ) => ( calc ( bind $?gen115 ( create$ rule7 ?gen109 $?gen112 ) ) ) ?gen110 <- ( is_speeding_on_town_road_lv1 ( negative-support $?gen115 ) )"))

([rule6-defeated-dot] of derived-attribute-rule
   (pos-name rule6-defeated-dot-gen389)
   (depends-on declare is_speeding_on_town_road_lv2 is_speeding_on_town_road_lv3)
   (implies is_speeding_on_town_road_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule6] ) ) ) ?gen101 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( positive-defeated $?gen104 & : ( subseq-pos ( create$ rule6-defeated rule3 $$$ $?gen104 ) ) ) ) ( test ( eq ( class ?gen101 ) is_speeding_on_town_road_lv2 ) ) ( not ?gen108 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( positive ?gen107 & : ( >= ?gen107 1 ) ) ) ) => ( calc ( bind $?gen103 ( delete-member$ $?gen104 ( create$ rule6-defeated rule3 ) ) ) ) ?gen101 <- ( is_speeding_on_town_road_lv2 ( positive-defeated $?gen103 ) )"))

([rule6-defeated] of derived-attribute-rule
   (pos-name rule6-defeated-gen391)
   (depends-on declare is_speeding_on_town_road_lv3 is_speeding_on_town_road_lv2)
   (implies is_speeding_on_town_road_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule6] ) ) ) ?gen108 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( positive ?gen107 & : ( >= ?gen107 1 ) ) ) ?gen101 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( positive-defeated $?gen104 & : ( not ( subseq-pos ( create$ rule6-defeated rule3 $$$ $?gen104 ) ) ) ) ) ( test ( eq ( class ?gen101 ) is_speeding_on_town_road_lv2 ) ) => ( calc ( bind $?gen103 ( create$ rule6-defeated rule3 $?gen104 ) ) ) ?gen101 <- ( is_speeding_on_town_road_lv2 ( positive-defeated $?gen103 ) )"))

([rule6-defeasibly-dot] of derived-attribute-rule
   (pos-name rule6-defeasibly-dot-gen393)
   (depends-on declare is_speeding_on_town_road_lv2 is_speeding_on_town_road_lv3 is_speeding_on_town_road_lv2)
   (implies is_speeding_on_town_road_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule6] ) ) ) ?gen101 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule6 $? ) ) ( test ( eq ( class ?gen101 ) is_speeding_on_town_road_lv2 ) ) ( not ( and ?gen108 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( positive ?gen107 & : ( >= ?gen107 1 ) ) ) ?gen101 <- ( is_speeding_on_town_road_lv2 ( positive ~ 2 ) ( negative-overruled $?gen103 & : ( not ( member$ rule6 $?gen103 ) ) ) ) ) ) => ?gen101 <- ( is_speeding_on_town_road_lv2 ( negative 0 ) )"))

([rule6-defeasibly] of derived-attribute-rule
   (pos-name rule6-defeasibly-gen395)
   (depends-on declare is_speeding_on_town_road_lv3 is_speeding_on_town_road_lv2)
   (implies is_speeding_on_town_road_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule6] ) ) ) ?gen108 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( positive ?gen107 & : ( >= ?gen107 1 ) ) ) ?gen101 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen103 & : ( not ( member$ rule6 $?gen103 ) ) ) ) ( test ( eq ( class ?gen101 ) is_speeding_on_town_road_lv2 ) ) => ?gen101 <- ( is_speeding_on_town_road_lv2 ( negative 1 ) ( negative-derivator rule6 ?gen108 ) )"))

([rule6-overruled-dot] of derived-attribute-rule
   (pos-name rule6-overruled-dot-gen397)
   (depends-on declare is_speeding_on_town_road_lv2 is_speeding_on_town_road_lv3 is_speeding_on_town_road_lv2)
   (implies is_speeding_on_town_road_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule6] ) ) ) ?gen101 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( positive-support $?gen104 ) ( positive-overruled $?gen105 & : ( subseq-pos ( create$ rule6-overruled $?gen104 $$$ $?gen105 ) ) ) ) ( test ( eq ( class ?gen101 ) is_speeding_on_town_road_lv2 ) ) ( not ( and ?gen108 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( positive ?gen107 & : ( >= ?gen107 1 ) ) ) ?gen101 <- ( is_speeding_on_town_road_lv2 ( negative-defeated $?gen103 & : ( not ( member$ rule6 $?gen103 ) ) ) ) ) ) => ( calc ( bind $?gen106 ( delete-member$ $?gen105 ( create$ rule6-overruled $?gen104 ) ) ) ) ?gen101 <- ( is_speeding_on_town_road_lv2 ( positive-overruled $?gen106 ) )"))

([rule6-overruled] of derived-attribute-rule
   (pos-name rule6-overruled-gen399)
   (depends-on declare is_speeding_on_town_road_lv3 is_speeding_on_town_road_lv2)
   (implies is_speeding_on_town_road_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule6] ) ) ) ?gen108 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( positive ?gen107 & : ( >= ?gen107 1 ) ) ) ?gen101 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( positive-support $?gen104 ) ( positive-overruled $?gen105 & : ( not ( subseq-pos ( create$ rule6-overruled $?gen104 $$$ $?gen105 ) ) ) ) ( negative-defeated $?gen103 & : ( not ( member$ rule6 $?gen103 ) ) ) ) ( test ( eq ( class ?gen101 ) is_speeding_on_town_road_lv2 ) ) => ( calc ( bind $?gen106 ( create$ rule6-overruled $?gen104 $?gen105 ) ) ) ?gen101 <- ( is_speeding_on_town_road_lv2 ( positive-overruled $?gen106 ) )"))

([rule6-support] of derived-attribute-rule
   (pos-name rule6-support-gen401)
   (depends-on declare is_speeding_on_town_road_lv3 is_speeding_on_town_road_lv2)
   (implies is_speeding_on_town_road_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule6] ) ) ) ?gen100 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ) ?gen101 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( negative-support $?gen103 & : ( not ( subseq-pos ( create$ rule6 ?gen100 $$$ $?gen103 ) ) ) ) ) ( test ( eq ( class ?gen101 ) is_speeding_on_town_road_lv2 ) ) => ( calc ( bind $?gen106 ( create$ rule6 ?gen100 $?gen103 ) ) ) ?gen101 <- ( is_speeding_on_town_road_lv2 ( negative-support $?gen106 ) )"))

([rule5-defeasibly-dot] of derived-attribute-rule
   (pos-name rule5-defeasibly-dot-gen403)
   (depends-on declare is_speeding_on_town_road_lv3 lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv3)
   (implies is_speeding_on_town_road_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule5] ) ) ) ?gen86 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule5 $? ) ) ( test ( eq ( class ?gen86 ) is_speeding_on_town_road_lv3 ) ) ( not ( and ?gen93 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ( positive ?gen92 & : ( >= ?gen92 1 ) ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ( test ( > ?Speed 100 ) ) ?gen97 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ( positive ?gen96 & : ( >= ?gen96 1 ) ) ) ?gen99 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ( positive ?gen98 & : ( >= ?gen98 1 ) ) ) ?gen86 <- ( is_speeding_on_town_road_lv3 ( negative ~ 2 ) ( positive-overruled $?gen88 & : ( not ( member$ rule5 $?gen88 ) ) ) ) ) ) => ?gen86 <- ( is_speeding_on_town_road_lv3 ( positive 0 ) )"))

([rule5-defeasibly] of derived-attribute-rule
   (pos-name rule5-defeasibly-gen405)
   (depends-on declare lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv3)
   (implies is_speeding_on_town_road_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule5] ) ) ) ?gen93 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ( positive ?gen92 & : ( >= ?gen92 1 ) ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ( test ( > ?Speed 100 ) ) ?gen97 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ( positive ?gen96 & : ( >= ?gen96 1 ) ) ) ?gen99 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ( positive ?gen98 & : ( >= ?gen98 1 ) ) ) ?gen86 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen88 & : ( not ( member$ rule5 $?gen88 ) ) ) ) ( test ( eq ( class ?gen86 ) is_speeding_on_town_road_lv3 ) ) => ?gen86 <- ( is_speeding_on_town_road_lv3 ( positive 1 ) ( positive-derivator rule5 ?gen93 ?gen95 ?gen97 ?gen99 ) )"))

([rule5-overruled-dot] of derived-attribute-rule
   (pos-name rule5-overruled-dot-gen407)
   (depends-on declare is_speeding_on_town_road_lv3 lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv3)
   (implies is_speeding_on_town_road_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule5] ) ) ) ?gen86 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( negative-support $?gen89 ) ( negative-overruled $?gen90 & : ( subseq-pos ( create$ rule5-overruled $?gen89 $$$ $?gen90 ) ) ) ) ( test ( eq ( class ?gen86 ) is_speeding_on_town_road_lv3 ) ) ( not ( and ?gen93 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ( positive ?gen92 & : ( >= ?gen92 1 ) ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ( test ( > ?Speed 100 ) ) ?gen97 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ( positive ?gen96 & : ( >= ?gen96 1 ) ) ) ?gen99 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ( positive ?gen98 & : ( >= ?gen98 1 ) ) ) ?gen86 <- ( is_speeding_on_town_road_lv3 ( positive-defeated $?gen88 & : ( not ( member$ rule5 $?gen88 ) ) ) ) ) ) => ( calc ( bind $?gen91 ( delete-member$ $?gen90 ( create$ rule5-overruled $?gen89 ) ) ) ) ?gen86 <- ( is_speeding_on_town_road_lv3 ( negative-overruled $?gen91 ) )"))

([rule5-overruled] of derived-attribute-rule
   (pos-name rule5-overruled-gen409)
   (depends-on declare lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv3)
   (implies is_speeding_on_town_road_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule5] ) ) ) ?gen93 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ( positive ?gen92 & : ( >= ?gen92 1 ) ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ( test ( > ?Speed 100 ) ) ?gen97 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ( positive ?gen96 & : ( >= ?gen96 1 ) ) ) ?gen99 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ( positive ?gen98 & : ( >= ?gen98 1 ) ) ) ?gen86 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( negative-support $?gen89 ) ( negative-overruled $?gen90 & : ( not ( subseq-pos ( create$ rule5-overruled $?gen89 $$$ $?gen90 ) ) ) ) ( positive-defeated $?gen88 & : ( not ( member$ rule5 $?gen88 ) ) ) ) ( test ( eq ( class ?gen86 ) is_speeding_on_town_road_lv3 ) ) => ( calc ( bind $?gen91 ( create$ rule5-overruled $?gen89 $?gen90 ) ) ) ?gen86 <- ( is_speeding_on_town_road_lv3 ( negative-overruled $?gen91 ) )"))

([rule5-support] of derived-attribute-rule
   (pos-name rule5-support-gen411)
   (depends-on declare lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv3)
   (implies is_speeding_on_town_road_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule5] ) ) ) ?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ) ?gen82 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ) ( test ( > ?Speed 100 ) ) ?gen84 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ) ?gen85 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ) ?gen86 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ( positive-support $?gen88 & : ( not ( subseq-pos ( create$ rule5 ?gen81 ?gen82 ?gen84 ?gen85 $$$ $?gen88 ) ) ) ) ) ( test ( eq ( class ?gen86 ) is_speeding_on_town_road_lv3 ) ) => ( calc ( bind $?gen91 ( create$ rule5 ?gen81 ?gen82 ?gen84 ?gen85 $?gen88 ) ) ) ?gen86 <- ( is_speeding_on_town_road_lv3 ( positive-support $?gen91 ) )"))

([rule4-defeated-dot] of derived-attribute-rule
   (pos-name rule4-defeated-dot-gen413)
   (depends-on declare is_speeding_on_town_road_lv1 is_speeding_on_town_road_lv2)
   (implies is_speeding_on_town_road_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule4] ) ) ) ?gen73 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( positive-defeated $?gen76 & : ( subseq-pos ( create$ rule4-defeated rule1 $$$ $?gen76 ) ) ) ) ( test ( eq ( class ?gen73 ) is_speeding_on_town_road_lv1 ) ) ( not ?gen80 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( positive ?gen79 & : ( >= ?gen79 1 ) ) ) ) => ( calc ( bind $?gen75 ( delete-member$ $?gen76 ( create$ rule4-defeated rule1 ) ) ) ) ?gen73 <- ( is_speeding_on_town_road_lv1 ( positive-defeated $?gen75 ) )"))

([rule4-defeated] of derived-attribute-rule
   (pos-name rule4-defeated-gen415)
   (depends-on declare is_speeding_on_town_road_lv2 is_speeding_on_town_road_lv1)
   (implies is_speeding_on_town_road_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule4] ) ) ) ?gen80 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( positive ?gen79 & : ( >= ?gen79 1 ) ) ) ?gen73 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( positive-defeated $?gen76 & : ( not ( subseq-pos ( create$ rule4-defeated rule1 $$$ $?gen76 ) ) ) ) ) ( test ( eq ( class ?gen73 ) is_speeding_on_town_road_lv1 ) ) => ( calc ( bind $?gen75 ( create$ rule4-defeated rule1 $?gen76 ) ) ) ?gen73 <- ( is_speeding_on_town_road_lv1 ( positive-defeated $?gen75 ) )"))

([rule4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule4-defeasibly-dot-gen417)
   (depends-on declare is_speeding_on_town_road_lv1 is_speeding_on_town_road_lv2 is_speeding_on_town_road_lv1)
   (implies is_speeding_on_town_road_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule4] ) ) ) ?gen73 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule4 $? ) ) ( test ( eq ( class ?gen73 ) is_speeding_on_town_road_lv1 ) ) ( not ( and ?gen80 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( positive ?gen79 & : ( >= ?gen79 1 ) ) ) ?gen73 <- ( is_speeding_on_town_road_lv1 ( positive ~ 2 ) ( negative-overruled $?gen75 & : ( not ( member$ rule4 $?gen75 ) ) ) ) ) ) => ?gen73 <- ( is_speeding_on_town_road_lv1 ( negative 0 ) )"))

([rule4-defeasibly] of derived-attribute-rule
   (pos-name rule4-defeasibly-gen419)
   (depends-on declare is_speeding_on_town_road_lv2 is_speeding_on_town_road_lv1)
   (implies is_speeding_on_town_road_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule4] ) ) ) ?gen80 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( positive ?gen79 & : ( >= ?gen79 1 ) ) ) ?gen73 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen75 & : ( not ( member$ rule4 $?gen75 ) ) ) ) ( test ( eq ( class ?gen73 ) is_speeding_on_town_road_lv1 ) ) => ?gen73 <- ( is_speeding_on_town_road_lv1 ( negative 1 ) ( negative-derivator rule4 ?gen80 ) )"))

([rule4-overruled-dot] of derived-attribute-rule
   (pos-name rule4-overruled-dot-gen421)
   (depends-on declare is_speeding_on_town_road_lv1 is_speeding_on_town_road_lv2 is_speeding_on_town_road_lv1)
   (implies is_speeding_on_town_road_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule4] ) ) ) ?gen73 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( positive-support $?gen76 ) ( positive-overruled $?gen77 & : ( subseq-pos ( create$ rule4-overruled $?gen76 $$$ $?gen77 ) ) ) ) ( test ( eq ( class ?gen73 ) is_speeding_on_town_road_lv1 ) ) ( not ( and ?gen80 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( positive ?gen79 & : ( >= ?gen79 1 ) ) ) ?gen73 <- ( is_speeding_on_town_road_lv1 ( negative-defeated $?gen75 & : ( not ( member$ rule4 $?gen75 ) ) ) ) ) ) => ( calc ( bind $?gen78 ( delete-member$ $?gen77 ( create$ rule4-overruled $?gen76 ) ) ) ) ?gen73 <- ( is_speeding_on_town_road_lv1 ( positive-overruled $?gen78 ) )"))

([rule4-overruled] of derived-attribute-rule
   (pos-name rule4-overruled-gen423)
   (depends-on declare is_speeding_on_town_road_lv2 is_speeding_on_town_road_lv1)
   (implies is_speeding_on_town_road_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule4] ) ) ) ?gen80 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( positive ?gen79 & : ( >= ?gen79 1 ) ) ) ?gen73 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( positive-support $?gen76 ) ( positive-overruled $?gen77 & : ( not ( subseq-pos ( create$ rule4-overruled $?gen76 $$$ $?gen77 ) ) ) ) ( negative-defeated $?gen75 & : ( not ( member$ rule4 $?gen75 ) ) ) ) ( test ( eq ( class ?gen73 ) is_speeding_on_town_road_lv1 ) ) => ( calc ( bind $?gen78 ( create$ rule4-overruled $?gen76 $?gen77 ) ) ) ?gen73 <- ( is_speeding_on_town_road_lv1 ( positive-overruled $?gen78 ) )"))

([rule4-support] of derived-attribute-rule
   (pos-name rule4-support-gen425)
   (depends-on declare is_speeding_on_town_road_lv2 is_speeding_on_town_road_lv1)
   (implies is_speeding_on_town_road_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule4] ) ) ) ?gen72 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ) ?gen73 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( negative-support $?gen75 & : ( not ( subseq-pos ( create$ rule4 ?gen72 $$$ $?gen75 ) ) ) ) ) ( test ( eq ( class ?gen73 ) is_speeding_on_town_road_lv1 ) ) => ( calc ( bind $?gen78 ( create$ rule4 ?gen72 $?gen75 ) ) ) ?gen73 <- ( is_speeding_on_town_road_lv1 ( negative-support $?gen78 ) )"))

([rule3-defeated-dot] of derived-attribute-rule
   (pos-name rule3-defeated-dot-gen427)
   (depends-on declare is_speeding_on_town_road_lv2 lc:case lc:case lc:case lc:case)
   (implies is_speeding_on_town_road_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule3] ) ) ) ?gen58 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( negative-defeated $?gen61 & : ( subseq-pos ( create$ rule3-defeated rule2 rule1 $$$ $?gen61 ) ) ) ) ( test ( eq ( class ?gen58 ) is_speeding_on_town_road_lv2 ) ) ( not ( and ?gen65 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ( positive ?gen64 & : ( >= ?gen64 1 ) ) ) ?gen67 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ( positive ?gen66 & : ( >= ?gen66 1 ) ) ) ( test ( > ?Speed 80 ) ) ?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ( positive ?gen68 & : ( >= ?gen68 1 ) ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ) ) => ( calc ( bind $?gen60 ( delete-member$ $?gen61 ( create$ rule3-defeated rule2 rule1 ) ) ) ) ?gen58 <- ( is_speeding_on_town_road_lv2 ( negative-defeated $?gen60 ) )"))

([rule3-defeated] of derived-attribute-rule
   (pos-name rule3-defeated-gen429)
   (depends-on declare lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv2)
   (implies is_speeding_on_town_road_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule3] ) ) ) ?gen65 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ( positive ?gen64 & : ( >= ?gen64 1 ) ) ) ?gen67 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ( positive ?gen66 & : ( >= ?gen66 1 ) ) ) ( test ( > ?Speed 80 ) ) ?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ( positive ?gen68 & : ( >= ?gen68 1 ) ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen58 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( negative-defeated $?gen61 & : ( not ( subseq-pos ( create$ rule3-defeated rule2 rule1 $$$ $?gen61 ) ) ) ) ) ( test ( eq ( class ?gen58 ) is_speeding_on_town_road_lv2 ) ) => ( calc ( bind $?gen60 ( create$ rule3-defeated rule2 rule1 $?gen61 ) ) ) ?gen58 <- ( is_speeding_on_town_road_lv2 ( negative-defeated $?gen60 ) )"))

([rule3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule3-defeasibly-dot-gen431)
   (depends-on declare is_speeding_on_town_road_lv2 lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv2)
   (implies is_speeding_on_town_road_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule3] ) ) ) ?gen58 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule3 $? ) ) ( test ( eq ( class ?gen58 ) is_speeding_on_town_road_lv2 ) ) ( not ( and ?gen65 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ( positive ?gen64 & : ( >= ?gen64 1 ) ) ) ?gen67 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ( positive ?gen66 & : ( >= ?gen66 1 ) ) ) ( test ( > ?Speed 80 ) ) ?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ( positive ?gen68 & : ( >= ?gen68 1 ) ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen58 <- ( is_speeding_on_town_road_lv2 ( negative ~ 2 ) ( positive-overruled $?gen60 & : ( not ( member$ rule3 $?gen60 ) ) ) ) ) ) => ?gen58 <- ( is_speeding_on_town_road_lv2 ( positive 0 ) )"))

([rule3-defeasibly] of derived-attribute-rule
   (pos-name rule3-defeasibly-gen433)
   (depends-on declare lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv2)
   (implies is_speeding_on_town_road_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule3] ) ) ) ?gen65 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ( positive ?gen64 & : ( >= ?gen64 1 ) ) ) ?gen67 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ( positive ?gen66 & : ( >= ?gen66 1 ) ) ) ( test ( > ?Speed 80 ) ) ?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ( positive ?gen68 & : ( >= ?gen68 1 ) ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen58 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen60 & : ( not ( member$ rule3 $?gen60 ) ) ) ) ( test ( eq ( class ?gen58 ) is_speeding_on_town_road_lv2 ) ) => ?gen58 <- ( is_speeding_on_town_road_lv2 ( positive 1 ) ( positive-derivator rule3 ?gen65 ?gen67 ?gen69 ?gen71 ) )"))

([rule3-overruled-dot] of derived-attribute-rule
   (pos-name rule3-overruled-dot-gen435)
   (depends-on declare is_speeding_on_town_road_lv2 lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv2)
   (implies is_speeding_on_town_road_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule3] ) ) ) ?gen58 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( negative-support $?gen61 ) ( negative-overruled $?gen62 & : ( subseq-pos ( create$ rule3-overruled $?gen61 $$$ $?gen62 ) ) ) ) ( test ( eq ( class ?gen58 ) is_speeding_on_town_road_lv2 ) ) ( not ( and ?gen65 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ( positive ?gen64 & : ( >= ?gen64 1 ) ) ) ?gen67 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ( positive ?gen66 & : ( >= ?gen66 1 ) ) ) ( test ( > ?Speed 80 ) ) ?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ( positive ?gen68 & : ( >= ?gen68 1 ) ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen58 <- ( is_speeding_on_town_road_lv2 ( positive-defeated $?gen60 & : ( not ( member$ rule3 $?gen60 ) ) ) ) ) ) => ( calc ( bind $?gen63 ( delete-member$ $?gen62 ( create$ rule3-overruled $?gen61 ) ) ) ) ?gen58 <- ( is_speeding_on_town_road_lv2 ( negative-overruled $?gen63 ) )"))

([rule3-overruled] of derived-attribute-rule
   (pos-name rule3-overruled-gen437)
   (depends-on declare lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv2)
   (implies is_speeding_on_town_road_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule3] ) ) ) ?gen65 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ( positive ?gen64 & : ( >= ?gen64 1 ) ) ) ?gen67 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ( positive ?gen66 & : ( >= ?gen66 1 ) ) ) ( test ( > ?Speed 80 ) ) ?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ( positive ?gen68 & : ( >= ?gen68 1 ) ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen58 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( negative-support $?gen61 ) ( negative-overruled $?gen62 & : ( not ( subseq-pos ( create$ rule3-overruled $?gen61 $$$ $?gen62 ) ) ) ) ( positive-defeated $?gen60 & : ( not ( member$ rule3 $?gen60 ) ) ) ) ( test ( eq ( class ?gen58 ) is_speeding_on_town_road_lv2 ) ) => ( calc ( bind $?gen63 ( create$ rule3-overruled $?gen61 $?gen62 ) ) ) ?gen58 <- ( is_speeding_on_town_road_lv2 ( negative-overruled $?gen63 ) )"))

([rule3-support] of derived-attribute-rule
   (pos-name rule3-support-gen439)
   (depends-on declare lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv2)
   (implies is_speeding_on_town_road_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule3] ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ) ?gen54 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ) ( test ( > ?Speed 80 ) ) ?gen56 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ) ?gen57 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ) ?gen58 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ( positive-support $?gen60 & : ( not ( subseq-pos ( create$ rule3 ?gen53 ?gen54 ?gen56 ?gen57 $$$ $?gen60 ) ) ) ) ) ( test ( eq ( class ?gen58 ) is_speeding_on_town_road_lv2 ) ) => ( calc ( bind $?gen63 ( create$ rule3 ?gen53 ?gen54 ?gen56 ?gen57 $?gen60 ) ) ) ?gen58 <- ( is_speeding_on_town_road_lv2 ( positive-support $?gen63 ) )"))

([rule2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule2-defeasibly-dot-gen441)
   (depends-on declare is_speeding_on_town_road_lv1 lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv1)
   (implies is_speeding_on_town_road_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule2] ) ) ) ?gen39 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule2 $? ) ) ( test ( eq ( class ?gen39 ) is_speeding_on_town_road_lv1 ) ) ( not ( and ?gen46 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ( positive ?gen45 & : ( >= ?gen45 1 ) ) ) ?gen48 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ( positive ?gen47 & : ( >= ?gen47 1 ) ) ) ( test ( <= ?Speed 50 ) ) ?gen50 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen52 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ( positive ?gen51 & : ( >= ?gen51 1 ) ) ) ?gen39 <- ( is_speeding_on_town_road_lv1 ( positive ~ 2 ) ( negative-overruled $?gen41 & : ( not ( member$ rule2 $?gen41 ) ) ) ) ) ) => ?gen39 <- ( is_speeding_on_town_road_lv1 ( negative 0 ) )"))

([rule2-defeasibly] of derived-attribute-rule
   (pos-name rule2-defeasibly-gen443)
   (depends-on declare lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv1)
   (implies is_speeding_on_town_road_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule2] ) ) ) ?gen46 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ( positive ?gen45 & : ( >= ?gen45 1 ) ) ) ?gen48 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ( positive ?gen47 & : ( >= ?gen47 1 ) ) ) ( test ( <= ?Speed 50 ) ) ?gen50 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen52 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ( positive ?gen51 & : ( >= ?gen51 1 ) ) ) ?gen39 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen41 & : ( not ( member$ rule2 $?gen41 ) ) ) ) ( test ( eq ( class ?gen39 ) is_speeding_on_town_road_lv1 ) ) => ?gen39 <- ( is_speeding_on_town_road_lv1 ( negative 1 ) ( negative-derivator rule2 ?gen46 ?gen48 ?gen50 ?gen52 ) )"))

([rule2-overruled-dot] of derived-attribute-rule
   (pos-name rule2-overruled-dot-gen445)
   (depends-on declare is_speeding_on_town_road_lv1 lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv1)
   (implies is_speeding_on_town_road_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule2] ) ) ) ?gen39 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( positive-support $?gen42 ) ( positive-overruled $?gen43 & : ( subseq-pos ( create$ rule2-overruled $?gen42 $$$ $?gen43 ) ) ) ) ( test ( eq ( class ?gen39 ) is_speeding_on_town_road_lv1 ) ) ( not ( and ?gen46 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ( positive ?gen45 & : ( >= ?gen45 1 ) ) ) ?gen48 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ( positive ?gen47 & : ( >= ?gen47 1 ) ) ) ( test ( <= ?Speed 50 ) ) ?gen50 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen52 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ( positive ?gen51 & : ( >= ?gen51 1 ) ) ) ?gen39 <- ( is_speeding_on_town_road_lv1 ( negative-defeated $?gen41 & : ( not ( member$ rule2 $?gen41 ) ) ) ) ) ) => ( calc ( bind $?gen44 ( delete-member$ $?gen43 ( create$ rule2-overruled $?gen42 ) ) ) ) ?gen39 <- ( is_speeding_on_town_road_lv1 ( positive-overruled $?gen44 ) )"))

([rule2-overruled] of derived-attribute-rule
   (pos-name rule2-overruled-gen447)
   (depends-on declare lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv1)
   (implies is_speeding_on_town_road_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule2] ) ) ) ?gen46 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ( positive ?gen45 & : ( >= ?gen45 1 ) ) ) ?gen48 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ( positive ?gen47 & : ( >= ?gen47 1 ) ) ) ( test ( <= ?Speed 50 ) ) ?gen50 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen52 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ( positive ?gen51 & : ( >= ?gen51 1 ) ) ) ?gen39 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( positive-support $?gen42 ) ( positive-overruled $?gen43 & : ( not ( subseq-pos ( create$ rule2-overruled $?gen42 $$$ $?gen43 ) ) ) ) ( negative-defeated $?gen41 & : ( not ( member$ rule2 $?gen41 ) ) ) ) ( test ( eq ( class ?gen39 ) is_speeding_on_town_road_lv1 ) ) => ( calc ( bind $?gen44 ( create$ rule2-overruled $?gen42 $?gen43 ) ) ) ?gen39 <- ( is_speeding_on_town_road_lv1 ( positive-overruled $?gen44 ) )"))

([rule2-support] of derived-attribute-rule
   (pos-name rule2-support-gen449)
   (depends-on declare lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv1)
   (implies is_speeding_on_town_road_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule2] ) ) ) ?gen34 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ) ?gen35 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ) ( test ( <= ?Speed 50 ) ) ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ) ?gen39 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( negative-support $?gen41 & : ( not ( subseq-pos ( create$ rule2 ?gen34 ?gen35 ?gen37 ?gen38 $$$ $?gen41 ) ) ) ) ) ( test ( eq ( class ?gen39 ) is_speeding_on_town_road_lv1 ) ) => ( calc ( bind $?gen44 ( create$ rule2 ?gen34 ?gen35 ?gen37 ?gen38 $?gen41 ) ) ) ?gen39 <- ( is_speeding_on_town_road_lv1 ( negative-support $?gen44 ) )"))

([rule1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule1-defeasibly-dot-gen451)
   (depends-on declare is_speeding_on_town_road_lv1 lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv1)
   (implies is_speeding_on_town_road_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule1] ) ) ) ?gen20 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule1 $? ) ) ( test ( eq ( class ?gen20 ) is_speeding_on_town_road_lv1 ) ) ( not ( and ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ( positive ?gen26 & : ( >= ?gen26 1 ) ) ) ?gen29 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ( positive ?gen28 & : ( >= ?gen28 1 ) ) ) ( test ( > ?Speed 70 ) ) ?gen31 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ( positive ?gen30 & : ( >= ?gen30 1 ) ) ) ?gen33 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ( positive ?gen32 & : ( >= ?gen32 1 ) ) ) ?gen20 <- ( is_speeding_on_town_road_lv1 ( negative ~ 2 ) ( positive-overruled $?gen22 & : ( not ( member$ rule1 $?gen22 ) ) ) ) ) ) => ?gen20 <- ( is_speeding_on_town_road_lv1 ( positive 0 ) )"))

([rule1-defeasibly] of derived-attribute-rule
   (pos-name rule1-defeasibly-gen453)
   (depends-on declare lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv1)
   (implies is_speeding_on_town_road_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule1] ) ) ) ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ( positive ?gen26 & : ( >= ?gen26 1 ) ) ) ?gen29 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ( positive ?gen28 & : ( >= ?gen28 1 ) ) ) ( test ( > ?Speed 70 ) ) ?gen31 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ( positive ?gen30 & : ( >= ?gen30 1 ) ) ) ?gen33 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ( positive ?gen32 & : ( >= ?gen32 1 ) ) ) ?gen20 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen22 & : ( not ( member$ rule1 $?gen22 ) ) ) ) ( test ( eq ( class ?gen20 ) is_speeding_on_town_road_lv1 ) ) => ?gen20 <- ( is_speeding_on_town_road_lv1 ( positive 1 ) ( positive-derivator rule1 ?gen27 ?gen29 ?gen31 ?gen33 ) )"))

([rule1-overruled-dot] of derived-attribute-rule
   (pos-name rule1-overruled-dot-gen455)
   (depends-on declare is_speeding_on_town_road_lv1 lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv1)
   (implies is_speeding_on_town_road_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule1] ) ) ) ?gen20 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( negative-support $?gen23 ) ( negative-overruled $?gen24 & : ( subseq-pos ( create$ rule1-overruled $?gen23 $$$ $?gen24 ) ) ) ) ( test ( eq ( class ?gen20 ) is_speeding_on_town_road_lv1 ) ) ( not ( and ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ( positive ?gen26 & : ( >= ?gen26 1 ) ) ) ?gen29 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ( positive ?gen28 & : ( >= ?gen28 1 ) ) ) ( test ( > ?Speed 70 ) ) ?gen31 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ( positive ?gen30 & : ( >= ?gen30 1 ) ) ) ?gen33 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ( positive ?gen32 & : ( >= ?gen32 1 ) ) ) ?gen20 <- ( is_speeding_on_town_road_lv1 ( positive-defeated $?gen22 & : ( not ( member$ rule1 $?gen22 ) ) ) ) ) ) => ( calc ( bind $?gen25 ( delete-member$ $?gen24 ( create$ rule1-overruled $?gen23 ) ) ) ) ?gen20 <- ( is_speeding_on_town_road_lv1 ( negative-overruled $?gen25 ) )"))

([rule1-overruled] of derived-attribute-rule
   (pos-name rule1-overruled-gen457)
   (depends-on declare lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv1)
   (implies is_speeding_on_town_road_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule1] ) ) ) ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ( positive ?gen26 & : ( >= ?gen26 1 ) ) ) ?gen29 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ( positive ?gen28 & : ( >= ?gen28 1 ) ) ) ( test ( > ?Speed 70 ) ) ?gen31 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ( positive ?gen30 & : ( >= ?gen30 1 ) ) ) ?gen33 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ( positive ?gen32 & : ( >= ?gen32 1 ) ) ) ?gen20 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( negative-support $?gen23 ) ( negative-overruled $?gen24 & : ( not ( subseq-pos ( create$ rule1-overruled $?gen23 $$$ $?gen24 ) ) ) ) ( positive-defeated $?gen22 & : ( not ( member$ rule1 $?gen22 ) ) ) ) ( test ( eq ( class ?gen20 ) is_speeding_on_town_road_lv1 ) ) => ( calc ( bind $?gen25 ( create$ rule1-overruled $?gen23 $?gen24 ) ) ) ?gen20 <- ( is_speeding_on_town_road_lv1 ( negative-overruled $?gen25 ) )"))

([rule1-support] of derived-attribute-rule
   (pos-name rule1-support-gen459)
   (depends-on declare lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv1)
   (implies is_speeding_on_town_road_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule1] ) ) ) ?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ) ( test ( > ?Speed 70 ) ) ?gen18 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ) ?gen19 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ) ?gen20 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ( positive-support $?gen22 & : ( not ( subseq-pos ( create$ rule1 ?gen15 ?gen16 ?gen18 ?gen19 $$$ $?gen22 ) ) ) ) ) ( test ( eq ( class ?gen20 ) is_speeding_on_town_road_lv1 ) ) => ( calc ( bind $?gen25 ( create$ rule1 ?gen15 ?gen16 ?gen18 ?gen19 $?gen22 ) ) ) ?gen20 <- ( is_speeding_on_town_road_lv1 ( positive-support $?gen25 ) )"))

([pen10-deductive] of ntm-deductive-rule
   (pos-name pen10-deductive-gen254)
   (depends-on recommend_fine_reduction to_pay_little)
   (implies to_pay_little)
   (deductive-rule "?gen227 <- ( recommend_fine_reduction ( defendant ?Defendant ) ) ( not ( to_pay_little ( value 600000 ) ) ) => ( to_pay_little ( value 600000 ) )")
   (production-rule "( defrule pen10-deductive-gen254 ( declare ( salience ( calc-salience to_pay_little ) ) ) ( run-deductive-rules ) ( object ( name ?gen227 ) ( is-a recommend_fine_reduction ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_little ) ( value 600000 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_little 600000 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_little 600000 ) ) ) ( make-instance ?oid of to_pay_little ( value 600000 ) ) )")
   (derived-class to_pay_little))

([pen9-deductive] of ntm-deductive-rule
   (pos-name pen9-deductive-gen253)
   (depends-on is_speeding_on_town_road_lv3_with_accident to_pay_max)
   (implies to_pay_max)
   (deductive-rule "?gen218 <- ( is_speeding_on_town_road_lv3_with_accident ( defendant ?Defendant ) ) ( not ( to_pay_max ( value 60000 ) ) ) => ( to_pay_max ( value 60000 ) )")
   (production-rule "( defrule pen9-deductive-gen253 ( declare ( salience ( calc-salience to_pay_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen218 ) ( is-a is_speeding_on_town_road_lv3_with_accident ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max ) ( value 60000 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max 60000 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max 60000 ) ) ) ( make-instance ?oid of to_pay_max ( value 60000 ) ) )")
   (derived-class to_pay_max))

([pen8-deductive] of ntm-deductive-rule
   (pos-name pen8-deductive-gen252)
   (depends-on is_speeding_on_town_road_lv3_with_accident to_pay_min)
   (implies to_pay_min)
   (deductive-rule "?gen209 <- ( is_speeding_on_town_road_lv3_with_accident ( defendant ?Defendant ) ) ( not ( to_pay_min ( value 40000 ) ) ) => ( to_pay_min ( value 40000 ) )")
   (production-rule "( defrule pen8-deductive-gen252 ( declare ( salience ( calc-salience to_pay_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen209 ) ( is-a is_speeding_on_town_road_lv3_with_accident ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min ) ( value 40000 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min 40000 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min 40000 ) ) ) ( make-instance ?oid of to_pay_min ( value 40000 ) ) )")
   (derived-class to_pay_min))

([pen7-deductive] of ntm-deductive-rule
   (pos-name pen7-deductive-gen251)
   (depends-on is_speeding_on_town_road_lv3_with_accident max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen200 <- ( is_speeding_on_town_road_lv3_with_accident ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 60 ) ) ) => ( max_imprisonment ( value 60 ) )")
   (production-rule "( defrule pen7-deductive-gen251 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen200 ) ( is-a is_speeding_on_town_road_lv3_with_accident ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 60 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 60 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 60 ) ) ) ( make-instance ?oid of max_imprisonment ( value 60 ) ) )")
   (derived-class max_imprisonment))

([pen6-deductive] of ntm-deductive-rule
   (pos-name pen6-deductive-gen250)
   (depends-on is_speeding_on_town_road_lv3 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen191 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 30 ) ) ) => ( max_imprisonment ( value 30 ) )")
   (production-rule "( defrule pen6-deductive-gen250 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen191 ) ( is-a is_speeding_on_town_road_lv3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 30 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 30 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 30 ) ) ) ( make-instance ?oid of max_imprisonment ( value 30 ) ) )")
   (derived-class max_imprisonment))

([pen5-deductive] of ntm-deductive-rule
   (pos-name pen5-deductive-gen249)
   (depends-on is_speeding_on_town_road_lv3 to_pay_max)
   (implies to_pay_max)
   (deductive-rule "?gen182 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ) ( not ( to_pay_max ( value 40000 ) ) ) => ( to_pay_max ( value 40000 ) )")
   (production-rule "( defrule pen5-deductive-gen249 ( declare ( salience ( calc-salience to_pay_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen182 ) ( is-a is_speeding_on_town_road_lv3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max ) ( value 40000 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max 40000 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max 40000 ) ) ) ( make-instance ?oid of to_pay_max ( value 40000 ) ) )")
   (derived-class to_pay_max))

([pen4-deductive] of ntm-deductive-rule
   (pos-name pen4-deductive-gen248)
   (depends-on is_speeding_on_town_road_lv3 to_pay_min)
   (implies to_pay_min)
   (deductive-rule "?gen173 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ) ( not ( to_pay_min ( value 20000 ) ) ) => ( to_pay_min ( value 20000 ) )")
   (production-rule "( defrule pen4-deductive-gen248 ( declare ( salience ( calc-salience to_pay_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen173 ) ( is-a is_speeding_on_town_road_lv3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min ) ( value 20000 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min 20000 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min 20000 ) ) ) ( make-instance ?oid of to_pay_min ( value 20000 ) ) )")
   (derived-class to_pay_min))

([pen3-deductive] of ntm-deductive-rule
   (pos-name pen3-deductive-gen247)
   (depends-on is_speeding_on_town_road_lv2 to_pay_max)
   (implies to_pay_max)
   (deductive-rule "?gen164 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ) ( not ( to_pay_max ( value 20000 ) ) ) => ( to_pay_max ( value 20000 ) )")
   (production-rule "( defrule pen3-deductive-gen247 ( declare ( salience ( calc-salience to_pay_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen164 ) ( is-a is_speeding_on_town_road_lv2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max ) ( value 20000 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max 20000 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max 20000 ) ) ) ( make-instance ?oid of to_pay_max ( value 20000 ) ) )")
   (derived-class to_pay_max))

([pen2-deductive] of ntm-deductive-rule
   (pos-name pen2-deductive-gen246)
   (depends-on is_speeding_on_town_road_lv2 to_pay_min)
   (implies to_pay_min)
   (deductive-rule "?gen155 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ) ( not ( to_pay_min ( value 10000 ) ) ) => ( to_pay_min ( value 10000 ) )")
   (production-rule "( defrule pen2-deductive-gen246 ( declare ( salience ( calc-salience to_pay_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen155 ) ( is-a is_speeding_on_town_road_lv2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min ) ( value 10000 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min 10000 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min 10000 ) ) ) ( make-instance ?oid of to_pay_min ( value 10000 ) ) )")
   (derived-class to_pay_min))

([pen1-deductive] of ntm-deductive-rule
   (pos-name pen1-deductive-gen245)
   (depends-on is_speeding_on_town_road_lv1 to_pay)
   (implies to_pay)
   (deductive-rule "?gen146 <- ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ) ( not ( to_pay ( value 10000 ) ) ) => ( to_pay ( value 10000 ) )")
   (production-rule "( defrule pen1-deductive-gen245 ( declare ( salience ( calc-salience to_pay ) ) ) ( run-deductive-rules ) ( object ( name ?gen146 ) ( is-a is_speeding_on_town_road_lv1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay ) ( value 10000 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay 10000 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay 10000 ) ) ) ( make-instance ?oid of to_pay ( value 10000 ) ) )")
   (derived-class to_pay))

([rule9-deductive] of ntm-deductive-rule
   (pos-name rule9-deductive-gen244)
   (depends-on lc:case recommend_fine_reduction)
   (implies recommend_fine_reduction)
   (deductive-rule "?gen137 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ) ( not ( recommend_fine_reduction ( defendant ?Defendant ) ) ) => ( recommend_fine_reduction ( defendant ?Defendant ) )")
   (production-rule "( defrule rule9-deductive-gen244 ( declare ( salience ( calc-salience recommend_fine_reduction ) ) ) ( run-deductive-rules ) ( object ( name ?gen137 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:low_income \"yes\" ) ) ( not ( object ( is-a recommend_fine_reduction ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat recommend_fine_reduction ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat recommend_fine_reduction ?Defendant ) ) ) ( make-instance ?oid of recommend_fine_reduction ( defendant ?Defendant ) ) )")
   (derived-class recommend_fine_reduction))

([rule8-deductive] of ntm-deductive-rule
   (pos-name rule8-deductive-gen243)
   (depends-on lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv3_with_accident)
   (implies is_speeding_on_town_road_lv3_with_accident)
   (deductive-rule "?gen118 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ) ?gen119 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ) ( test ( > ?Speed 100 ) ) ?gen121 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ) ?gen122 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"yes\" ) ) ( not ( is_speeding_on_town_road_lv3_with_accident ( defendant ?Defendant ) ) ) => ( is_speeding_on_town_road_lv3_with_accident ( defendant ?Defendant ) )")
   (production-rule "( defrule rule8-deductive-gen243 ( declare ( salience ( calc-salience is_speeding_on_town_road_lv3_with_accident ) ) ) ( run-deductive-rules ) ( object ( name ?gen118 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ) ( object ( name ?gen119 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ) ( test ( > ?Speed 100 ) ) ( object ( name ?gen121 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ) ( object ( name ?gen122 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:caused_accident \"yes\" ) ) ( not ( object ( is-a is_speeding_on_town_road_lv3_with_accident ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_speeding_on_town_road_lv3_with_accident ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_speeding_on_town_road_lv3_with_accident ?Defendant ) ) ) ( make-instance ?oid of is_speeding_on_town_road_lv3_with_accident ( defendant ?Defendant ) ) )")
   (derived-class is_speeding_on_town_road_lv3_with_accident))

([rule7-deductive] of ntm-deductive-rule
   (pos-name rule7-deductive-gen242)
   (depends-on is_speeding_on_town_road_lv3 is_speeding_on_town_road_lv1)
   (implies is_speeding_on_town_road_lv1)
   (deductive-rule "?gen109 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ) ( not ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ) ) => ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7-deductive-gen242 ( declare ( salience ( calc-salience is_speeding_on_town_road_lv1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen109 ) ( is-a is_speeding_on_town_road_lv3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a is_speeding_on_town_road_lv1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_speeding_on_town_road_lv1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_speeding_on_town_road_lv1 ?Defendant ) ) ) ( make-instance ?oid of is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ) )")
   (derived-class is_speeding_on_town_road_lv1))

([rule6-deductive] of ntm-deductive-rule
   (pos-name rule6-deductive-gen241)
   (depends-on is_speeding_on_town_road_lv3 is_speeding_on_town_road_lv2)
   (implies is_speeding_on_town_road_lv2)
   (deductive-rule "?gen100 <- ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ) ( not ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ) ) => ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule6-deductive-gen241 ( declare ( salience ( calc-salience is_speeding_on_town_road_lv2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen100 ) ( is-a is_speeding_on_town_road_lv3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a is_speeding_on_town_road_lv2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_speeding_on_town_road_lv2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_speeding_on_town_road_lv2 ?Defendant ) ) ) ( make-instance ?oid of is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ) )")
   (derived-class is_speeding_on_town_road_lv2))

([rule5-deductive] of ntm-deductive-rule
   (pos-name rule5-deductive-gen240)
   (depends-on lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv3)
   (implies is_speeding_on_town_road_lv3)
   (deductive-rule "?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ) ?gen82 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ) ( test ( > ?Speed 100 ) ) ?gen84 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ) ?gen85 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ) ( not ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ) ) => ( is_speeding_on_town_road_lv3 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule5-deductive-gen240 ( declare ( salience ( calc-salience is_speeding_on_town_road_lv3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen81 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ) ( object ( name ?gen82 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ) ( test ( > ?Speed 100 ) ) ( object ( name ?gen84 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ) ( object ( name ?gen85 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ) ( not ( object ( is-a is_speeding_on_town_road_lv3 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_speeding_on_town_road_lv3 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_speeding_on_town_road_lv3 ?Defendant ) ) ) ( make-instance ?oid of is_speeding_on_town_road_lv3 ( defendant ?Defendant ) ) )")
   (derived-class is_speeding_on_town_road_lv3))

([rule4-deductive] of ntm-deductive-rule
   (pos-name rule4-deductive-gen239)
   (depends-on is_speeding_on_town_road_lv2 is_speeding_on_town_road_lv1)
   (implies is_speeding_on_town_road_lv1)
   (deductive-rule "?gen72 <- ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ) ( not ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ) ) => ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule4-deductive-gen239 ( declare ( salience ( calc-salience is_speeding_on_town_road_lv1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen72 ) ( is-a is_speeding_on_town_road_lv2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a is_speeding_on_town_road_lv1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_speeding_on_town_road_lv1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_speeding_on_town_road_lv1 ?Defendant ) ) ) ( make-instance ?oid of is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ) )")
   (derived-class is_speeding_on_town_road_lv1))

([rule3-deductive] of ntm-deductive-rule
   (pos-name rule3-deductive-gen238)
   (depends-on lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv2)
   (implies is_speeding_on_town_road_lv2)
   (deductive-rule "?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ) ?gen54 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ) ( test ( > ?Speed 80 ) ) ?gen56 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ) ?gen57 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ) ( not ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ) ) => ( is_speeding_on_town_road_lv2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule3-deductive-gen238 ( declare ( salience ( calc-salience is_speeding_on_town_road_lv2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen53 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ) ( object ( name ?gen54 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ) ( test ( > ?Speed 80 ) ) ( object ( name ?gen56 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ) ( object ( name ?gen57 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ) ( not ( object ( is-a is_speeding_on_town_road_lv2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_speeding_on_town_road_lv2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_speeding_on_town_road_lv2 ?Defendant ) ) ) ( make-instance ?oid of is_speeding_on_town_road_lv2 ( defendant ?Defendant ) ) )")
   (derived-class is_speeding_on_town_road_lv2))

([rule2-deductive] of ntm-deductive-rule
   (pos-name rule2-deductive-gen237)
   (depends-on lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv1)
   (implies is_speeding_on_town_road_lv1)
   (deductive-rule "?gen34 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ) ?gen35 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ) ( test ( <= ?Speed 50 ) ) ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ) ( not ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ) ) => ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule2-deductive-gen237 ( declare ( salience ( calc-salience is_speeding_on_town_road_lv1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen34 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ) ( object ( name ?gen35 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ) ( test ( <= ?Speed 50 ) ) ( object ( name ?gen37 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ) ( object ( name ?gen38 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ) ( not ( object ( is-a is_speeding_on_town_road_lv1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_speeding_on_town_road_lv1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_speeding_on_town_road_lv1 ?Defendant ) ) ) ( make-instance ?oid of is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ) )")
   (derived-class is_speeding_on_town_road_lv1))

([rule1-deductive] of ntm-deductive-rule
   (pos-name rule1-deductive-gen236)
   (depends-on lc:case lc:case lc:case lc:case is_speeding_on_town_road_lv1)
   (implies is_speeding_on_town_road_lv1)
   (deductive-rule "?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ) ( test ( > ?Speed 70 ) ) ?gen18 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ) ?gen19 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ) ( not ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ) ) => ( is_speeding_on_town_road_lv1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule1-deductive-gen236 ( declare ( salience ( calc-salience is_speeding_on_town_road_lv1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:speed ?Speed ) ) ( object ( name ?gen16 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:allowed_speed 50 ) ) ( test ( > ?Speed 70 ) ) ( object ( name ?gen18 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:driving_on \"town_road\" ) ) ( object ( name ?gen19 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:caused_accident \"no\" ) ) ( not ( object ( is-a is_speeding_on_town_road_lv1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_speeding_on_town_road_lv1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_speeding_on_town_road_lv1 ?Defendant ) ) ) ( make-instance ?oid of is_speeding_on_town_road_lv1 ( defendant ?Defendant ) ) )")
   (derived-class is_speeding_on_town_road_lv1))

