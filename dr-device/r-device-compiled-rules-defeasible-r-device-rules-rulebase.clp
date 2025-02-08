( defrule pen13-defeasibly-dot-gen85 ( declare ( salience ( + 1000 ( calc-defeasible-priority -1 [pen13] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen70 ) ( is-a to_pay_min ) ( value 30 ) ( positive 1 ) ( positive-derivator pen13 $? ) ) ( test ( eq ( class ?gen70 ) to_pay_min ) ) ( not ( and ( object ( name ?gen77 ) ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ( object ( name ?gen70 ) ( is-a to_pay_min ) ( negative ~ 2 ) ( positive-overruled $?gen72 & : ( not ( member$ pen13 $?gen72 ) ) ) ) ) )  ( not ( object ( name ?gen70 ) ( is-a to_pay_min ) ( positive 0 ) ) ) ( test ( instance-existp ?gen70 ) ) => ( message-modify-instance ?gen70 ( positive 0 ) ) )
( defrule pen13-defeasibly-gen87 ( declare ( salience ( + 1000 ( calc-defeasible-priority 1 [pen13] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen77 ) ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ( object ( name ?gen70 ) ( is-a to_pay_min ) ( value 30 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen72 & : ( not ( member$ pen13 $?gen72 ) ) ) ) ( test ( eq ( class ?gen70 ) to_pay_min ) ) ( test ( neq ?Defendant nil ) ) ( not ( object ( name ?gen70 ) ( is-a to_pay_min ) ( positive 1 ) ( positive-derivator pen13 ?gen77 ) ) ) ( test ( instance-existp ?gen70 ) ) => ( message-modify-instance ?gen70 ( positive 1 ) ( positive-derivator pen13 ?gen77 ) ) )
( defrule pen13-overruled-dot-gen89 ( declare ( salience ( + 1000 ( calc-defeasible-priority -2 [pen13] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen70 ) ( is-a to_pay_min ) ( value 30 ) ( negative-support $?gen73 ) ( negative-overruled $?gen74 & : ( subseq-pos ( create$ pen13-overruled $?gen73 $$$ $?gen74 ) ) ) ) ( test ( eq ( class ?gen70 ) to_pay_min ) ) ( not ( and ( object ( name ?gen77 ) ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ( object ( name ?gen70 ) ( is-a to_pay_min ) ( positive-defeated $?gen72 & : ( not ( member$ pen13 $?gen72 ) ) ) ) ) ) ( test ( neq $?gen73 (create$) ) ) ( not ( object ( name ?gen70 ) ( is-a to_pay_min ) ( negative-overruled $?gen75 & : ( eq $?gen75 ( delete-member$ $?gen74 ( create$ pen13-overruled $?gen73 ) ) ) ) ) ) ( test ( instance-existp ?gen70 ) ) => ( bind $?gen75 ( delete-member$ $?gen74 ( create$ pen13-overruled $?gen73 ) ) ) ( message-modify-instance ?gen70 ( negative-overruled $?gen75 ) ) )
( defrule pen13-overruled-gen91 ( declare ( salience ( + 1000 ( calc-defeasible-priority 2 [pen13] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen77 ) ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ( object ( name ?gen70 ) ( is-a to_pay_min ) ( value 30 ) ( negative-support $?gen73 ) ( negative-overruled $?gen74 & : ( not ( subseq-pos ( create$ pen13-overruled $?gen73 $$$ $?gen74 ) ) ) ) ( positive-defeated $?gen72 & : ( not ( member$ pen13 $?gen72 ) ) ) ) ( test ( eq ( class ?gen70 ) to_pay_min ) ) ( test ( and ( neq ?Defendant nil ) ( neq $?gen73 (create$) ) ) ) ( not ( object ( name ?gen70 ) ( is-a to_pay_min ) ( negative-overruled $?gen75 & : ( eq $?gen75 ( create$ pen13-overruled $?gen73 $?gen74 ) ) ) ) ) ( test ( instance-existp ?gen70 ) ) => ( bind $?gen75 ( create$ pen13-overruled $?gen73 $?gen74 ) ) ( message-modify-instance ?gen70 ( negative-overruled $?gen75 ) ) )
( defrule pen13-support-gen93 ( declare ( salience ( + 1000 ( calc-defeasible-priority 5 [pen13] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen69 ) ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ) ( object ( name ?gen70 ) ( is-a to_pay_min ) ( value 30 ) ( positive-support $?gen72 & : ( not ( subseq-pos ( create$ pen13 ?gen69 $$$ $?gen72 ) ) ) ) ) ( test ( eq ( class ?gen70 ) to_pay_min ) ) ( test ( neq ?Defendant nil ) ) ( not ( object ( name ?gen70 ) ( is-a to_pay_min ) ( positive-support $?gen75 & : ( eq $?gen75 ( create$ pen13 ?gen69 $?gen72 ) ) ) ) ) ( test ( instance-existp ?gen70 ) ) => ( bind $?gen75 ( create$ pen13 ?gen69 $?gen72 ) ) ( message-modify-instance ?gen70 ( positive-support $?gen75 ) ) )
( defrule pen12-defeasibly-dot-gen95 ( declare ( salience ( + 1000 ( calc-defeasible-priority -1 [pen12] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen61 ) ( is-a to_pay_max ) ( value 500 ) ( positive 1 ) ( positive-derivator pen12 $? ) ) ( test ( eq ( class ?gen61 ) to_pay_max ) ) ( not ( and ( object ( name ?gen68 ) ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ( object ( name ?gen61 ) ( is-a to_pay_max ) ( negative ~ 2 ) ( positive-overruled $?gen63 & : ( not ( member$ pen12 $?gen63 ) ) ) ) ) )  ( not ( object ( name ?gen61 ) ( is-a to_pay_max ) ( positive 0 ) ) ) ( test ( instance-existp ?gen61 ) ) => ( message-modify-instance ?gen61 ( positive 0 ) ) )
( defrule pen12-defeasibly-gen97 ( declare ( salience ( + 1000 ( calc-defeasible-priority 1 [pen12] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen68 ) ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ( object ( name ?gen61 ) ( is-a to_pay_max ) ( value 500 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen63 & : ( not ( member$ pen12 $?gen63 ) ) ) ) ( test ( eq ( class ?gen61 ) to_pay_max ) ) ( test ( neq ?Defendant nil ) ) ( not ( object ( name ?gen61 ) ( is-a to_pay_max ) ( positive 1 ) ( positive-derivator pen12 ?gen68 ) ) ) ( test ( instance-existp ?gen61 ) ) => ( message-modify-instance ?gen61 ( positive 1 ) ( positive-derivator pen12 ?gen68 ) ) )
( defrule pen12-overruled-dot-gen99 ( declare ( salience ( + 1000 ( calc-defeasible-priority -2 [pen12] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen61 ) ( is-a to_pay_max ) ( value 500 ) ( negative-support $?gen64 ) ( negative-overruled $?gen65 & : ( subseq-pos ( create$ pen12-overruled $?gen64 $$$ $?gen65 ) ) ) ) ( test ( eq ( class ?gen61 ) to_pay_max ) ) ( not ( and ( object ( name ?gen68 ) ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ( object ( name ?gen61 ) ( is-a to_pay_max ) ( positive-defeated $?gen63 & : ( not ( member$ pen12 $?gen63 ) ) ) ) ) ) ( test ( neq $?gen64 (create$) ) ) ( not ( object ( name ?gen61 ) ( is-a to_pay_max ) ( negative-overruled $?gen66 & : ( eq $?gen66 ( delete-member$ $?gen65 ( create$ pen12-overruled $?gen64 ) ) ) ) ) ) ( test ( instance-existp ?gen61 ) ) => ( bind $?gen66 ( delete-member$ $?gen65 ( create$ pen12-overruled $?gen64 ) ) ) ( message-modify-instance ?gen61 ( negative-overruled $?gen66 ) ) )
( defrule pen12-overruled-gen101 ( declare ( salience ( + 1000 ( calc-defeasible-priority 2 [pen12] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen68 ) ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ( object ( name ?gen61 ) ( is-a to_pay_max ) ( value 500 ) ( negative-support $?gen64 ) ( negative-overruled $?gen65 & : ( not ( subseq-pos ( create$ pen12-overruled $?gen64 $$$ $?gen65 ) ) ) ) ( positive-defeated $?gen63 & : ( not ( member$ pen12 $?gen63 ) ) ) ) ( test ( eq ( class ?gen61 ) to_pay_max ) ) ( test ( and ( neq ?Defendant nil ) ( neq $?gen64 (create$) ) ) ) ( not ( object ( name ?gen61 ) ( is-a to_pay_max ) ( negative-overruled $?gen66 & : ( eq $?gen66 ( create$ pen12-overruled $?gen64 $?gen65 ) ) ) ) ) ( test ( instance-existp ?gen61 ) ) => ( bind $?gen66 ( create$ pen12-overruled $?gen64 $?gen65 ) ) ( message-modify-instance ?gen61 ( negative-overruled $?gen66 ) ) )
( defrule pen12-support-gen103 ( declare ( salience ( + 1000 ( calc-defeasible-priority 5 [pen12] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen60 ) ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ) ( object ( name ?gen61 ) ( is-a to_pay_max ) ( value 500 ) ( positive-support $?gen63 & : ( not ( subseq-pos ( create$ pen12 ?gen60 $$$ $?gen63 ) ) ) ) ) ( test ( eq ( class ?gen61 ) to_pay_max ) ) ( test ( neq ?Defendant nil ) ) ( not ( object ( name ?gen61 ) ( is-a to_pay_max ) ( positive-support $?gen66 & : ( eq $?gen66 ( create$ pen12 ?gen60 $?gen63 ) ) ) ) ) ( test ( instance-existp ?gen61 ) ) => ( bind $?gen66 ( create$ pen12 ?gen60 $?gen63 ) ) ( message-modify-instance ?gen61 ( positive-support $?gen66 ) ) )
( defrule pen11-defeasibly-dot-gen105 ( declare ( salience ( + 1000 ( calc-defeasible-priority -1 [pen11] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen52 ) ( is-a to_increase_penalty ) ( value 1 ) ( positive 1 ) ( positive-derivator pen11 $? ) ) ( test ( eq ( class ?gen52 ) to_increase_penalty ) ) ( not ( and ( object ( name ?gen59 ) ( is-a recommend_increased_penalty ) ( defendant ?Defendant ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ( object ( name ?gen52 ) ( is-a to_increase_penalty ) ( negative ~ 2 ) ( positive-overruled $?gen54 & : ( not ( member$ pen11 $?gen54 ) ) ) ) ) )  ( not ( object ( name ?gen52 ) ( is-a to_increase_penalty ) ( positive 0 ) ) ) ( test ( instance-existp ?gen52 ) ) => ( message-modify-instance ?gen52 ( positive 0 ) ) )
( defrule pen11-defeasibly-gen107 ( declare ( salience ( + 1000 ( calc-defeasible-priority 1 [pen11] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen59 ) ( is-a recommend_increased_penalty ) ( defendant ?Defendant ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ( object ( name ?gen52 ) ( is-a to_increase_penalty ) ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen54 & : ( not ( member$ pen11 $?gen54 ) ) ) ) ( test ( eq ( class ?gen52 ) to_increase_penalty ) ) ( test ( neq ?Defendant nil ) ) ( not ( object ( name ?gen52 ) ( is-a to_increase_penalty ) ( positive 1 ) ( positive-derivator pen11 ?gen59 ) ) ) ( test ( instance-existp ?gen52 ) ) => ( message-modify-instance ?gen52 ( positive 1 ) ( positive-derivator pen11 ?gen59 ) ) )
( defrule pen11-overruled-dot-gen109 ( declare ( salience ( + 1000 ( calc-defeasible-priority -2 [pen11] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen52 ) ( is-a to_increase_penalty ) ( value 1 ) ( negative-support $?gen55 ) ( negative-overruled $?gen56 & : ( subseq-pos ( create$ pen11-overruled $?gen55 $$$ $?gen56 ) ) ) ) ( test ( eq ( class ?gen52 ) to_increase_penalty ) ) ( not ( and ( object ( name ?gen59 ) ( is-a recommend_increased_penalty ) ( defendant ?Defendant ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ( object ( name ?gen52 ) ( is-a to_increase_penalty ) ( positive-defeated $?gen54 & : ( not ( member$ pen11 $?gen54 ) ) ) ) ) ) ( test ( neq $?gen55 (create$) ) ) ( not ( object ( name ?gen52 ) ( is-a to_increase_penalty ) ( negative-overruled $?gen57 & : ( eq $?gen57 ( delete-member$ $?gen56 ( create$ pen11-overruled $?gen55 ) ) ) ) ) ) ( test ( instance-existp ?gen52 ) ) => ( bind $?gen57 ( delete-member$ $?gen56 ( create$ pen11-overruled $?gen55 ) ) ) ( message-modify-instance ?gen52 ( negative-overruled $?gen57 ) ) )
( defrule pen11-overruled-gen111 ( declare ( salience ( + 1000 ( calc-defeasible-priority 2 [pen11] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen59 ) ( is-a recommend_increased_penalty ) ( defendant ?Defendant ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ( object ( name ?gen52 ) ( is-a to_increase_penalty ) ( value 1 ) ( negative-support $?gen55 ) ( negative-overruled $?gen56 & : ( not ( subseq-pos ( create$ pen11-overruled $?gen55 $$$ $?gen56 ) ) ) ) ( positive-defeated $?gen54 & : ( not ( member$ pen11 $?gen54 ) ) ) ) ( test ( eq ( class ?gen52 ) to_increase_penalty ) ) ( test ( and ( neq ?Defendant nil ) ( neq $?gen55 (create$) ) ) ) ( not ( object ( name ?gen52 ) ( is-a to_increase_penalty ) ( negative-overruled $?gen57 & : ( eq $?gen57 ( create$ pen11-overruled $?gen55 $?gen56 ) ) ) ) ) ( test ( instance-existp ?gen52 ) ) => ( bind $?gen57 ( create$ pen11-overruled $?gen55 $?gen56 ) ) ( message-modify-instance ?gen52 ( negative-overruled $?gen57 ) ) )
( defrule pen11-support-gen113 ( declare ( salience ( + 1000 ( calc-defeasible-priority 5 [pen11] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen51 ) ( is-a recommend_increased_penalty ) ( defendant ?Defendant ) ) ( object ( name ?gen52 ) ( is-a to_increase_penalty ) ( value 1 ) ( positive-support $?gen54 & : ( not ( subseq-pos ( create$ pen11 ?gen51 $$$ $?gen54 ) ) ) ) ) ( test ( eq ( class ?gen52 ) to_increase_penalty ) ) ( test ( neq ?Defendant nil ) ) ( not ( object ( name ?gen52 ) ( is-a to_increase_penalty ) ( positive-support $?gen57 & : ( eq $?gen57 ( create$ pen11 ?gen51 $?gen54 ) ) ) ) ) ( test ( instance-existp ?gen52 ) ) => ( bind $?gen57 ( create$ pen11 ?gen51 $?gen54 ) ) ( message-modify-instance ?gen52 ( positive-support $?gen57 ) ) )
( defrule pen10-defeasibly-dot-gen115 ( declare ( salience ( + 1000 ( calc-defeasible-priority -1 [pen10] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen43 ) ( is-a to_pay_less ) ( value 1 ) ( positive 1 ) ( positive-derivator pen10 $? ) ) ( test ( eq ( class ?gen43 ) to_pay_less ) ) ( not ( and ( object ( name ?gen50 ) ( is-a recommend_fine_reduction ) ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ( object ( name ?gen43 ) ( is-a to_pay_less ) ( negative ~ 2 ) ( positive-overruled $?gen45 & : ( not ( member$ pen10 $?gen45 ) ) ) ) ) )  ( not ( object ( name ?gen43 ) ( is-a to_pay_less ) ( positive 0 ) ) ) ( test ( instance-existp ?gen43 ) ) => ( message-modify-instance ?gen43 ( positive 0 ) ) )
( defrule pen10-defeasibly-gen117 ( declare ( salience ( + 1000 ( calc-defeasible-priority 1 [pen10] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen50 ) ( is-a recommend_fine_reduction ) ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ( object ( name ?gen43 ) ( is-a to_pay_less ) ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen45 & : ( not ( member$ pen10 $?gen45 ) ) ) ) ( test ( eq ( class ?gen43 ) to_pay_less ) ) ( test ( neq ?Defendant nil ) ) ( not ( object ( name ?gen43 ) ( is-a to_pay_less ) ( positive 1 ) ( positive-derivator pen10 ?gen50 ) ) ) ( test ( instance-existp ?gen43 ) ) => ( message-modify-instance ?gen43 ( positive 1 ) ( positive-derivator pen10 ?gen50 ) ) )
( defrule pen10-overruled-dot-gen119 ( declare ( salience ( + 1000 ( calc-defeasible-priority -2 [pen10] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen43 ) ( is-a to_pay_less ) ( value 1 ) ( negative-support $?gen46 ) ( negative-overruled $?gen47 & : ( subseq-pos ( create$ pen10-overruled $?gen46 $$$ $?gen47 ) ) ) ) ( test ( eq ( class ?gen43 ) to_pay_less ) ) ( not ( and ( object ( name ?gen50 ) ( is-a recommend_fine_reduction ) ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ( object ( name ?gen43 ) ( is-a to_pay_less ) ( positive-defeated $?gen45 & : ( not ( member$ pen10 $?gen45 ) ) ) ) ) ) ( test ( neq $?gen46 (create$) ) ) ( not ( object ( name ?gen43 ) ( is-a to_pay_less ) ( negative-overruled $?gen48 & : ( eq $?gen48 ( delete-member$ $?gen47 ( create$ pen10-overruled $?gen46 ) ) ) ) ) ) ( test ( instance-existp ?gen43 ) ) => ( bind $?gen48 ( delete-member$ $?gen47 ( create$ pen10-overruled $?gen46 ) ) ) ( message-modify-instance ?gen43 ( negative-overruled $?gen48 ) ) )
( defrule pen10-overruled-gen121 ( declare ( salience ( + 1000 ( calc-defeasible-priority 2 [pen10] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen50 ) ( is-a recommend_fine_reduction ) ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ( object ( name ?gen43 ) ( is-a to_pay_less ) ( value 1 ) ( negative-support $?gen46 ) ( negative-overruled $?gen47 & : ( not ( subseq-pos ( create$ pen10-overruled $?gen46 $$$ $?gen47 ) ) ) ) ( positive-defeated $?gen45 & : ( not ( member$ pen10 $?gen45 ) ) ) ) ( test ( eq ( class ?gen43 ) to_pay_less ) ) ( test ( and ( neq ?Defendant nil ) ( neq $?gen46 (create$) ) ) ) ( not ( object ( name ?gen43 ) ( is-a to_pay_less ) ( negative-overruled $?gen48 & : ( eq $?gen48 ( create$ pen10-overruled $?gen46 $?gen47 ) ) ) ) ) ( test ( instance-existp ?gen43 ) ) => ( bind $?gen48 ( create$ pen10-overruled $?gen46 $?gen47 ) ) ( message-modify-instance ?gen43 ( negative-overruled $?gen48 ) ) )
( defrule pen10-support-gen123 ( declare ( salience ( + 1000 ( calc-defeasible-priority 5 [pen10] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen42 ) ( is-a recommend_fine_reduction ) ( defendant ?Defendant ) ) ( object ( name ?gen43 ) ( is-a to_pay_less ) ( value 1 ) ( positive-support $?gen45 & : ( not ( subseq-pos ( create$ pen10 ?gen42 $$$ $?gen45 ) ) ) ) ) ( test ( eq ( class ?gen43 ) to_pay_less ) ) ( test ( neq ?Defendant nil ) ) ( not ( object ( name ?gen43 ) ( is-a to_pay_less ) ( positive-support $?gen48 & : ( eq $?gen48 ( create$ pen10 ?gen42 $?gen45 ) ) ) ) ) ( test ( instance-existp ?gen43 ) ) => ( bind $?gen48 ( create$ pen10 ?gen42 $?gen45 ) ) ( message-modify-instance ?gen43 ( positive-support $?gen48 ) ) )
( defrule rule11-defeasibly-dot-gen125 ( declare ( salience ( + 1000 ( calc-defeasible-priority -1 [rule11] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen34 ) ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule11 $? ) ) ( test ( eq ( class ?gen34 ) is_high_category_weapon_in_public ) ) ( not ( and ( object ( name ?gen41 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery "public" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ( object ( name ?gen34 ) ( is-a is_high_category_weapon_in_public ) ( negative ~ 2 ) ( positive-overruled $?gen36 & : ( not ( member$ rule11 $?gen36 ) ) ) ) ) ) ( test ( neq ?Defendant nil ) ) ( not ( object ( name ?gen34 ) ( is-a is_high_category_weapon_in_public ) ( positive 0 ) ) ) ( test ( instance-existp ?gen34 ) ) => ( message-modify-instance ?gen34 ( positive 0 ) ) )
( defrule rule11-defeasibly-gen127 ( declare ( salience ( + 1000 ( calc-defeasible-priority 1 [rule11] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen41 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery "public" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ( object ( name ?gen34 ) ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen36 & : ( not ( member$ rule11 $?gen36 ) ) ) ) ( test ( eq ( class ?gen34 ) is_high_category_weapon_in_public ) ) ( test ( and ( neq ?Defendant (create$) ) ( neq ?Defendant nil ) ) ) ( not ( object ( name ?gen34 ) ( is-a is_high_category_weapon_in_public ) ( positive 1 ) ( positive-derivator rule11 ?gen41 ) ) ) ( test ( instance-existp ?gen34 ) ) => ( message-modify-instance ?gen34 ( positive 1 ) ( positive-derivator rule11 ?gen41 ) ) )
( defrule rule11-overruled-dot-gen129 ( declare ( salience ( + 1000 ( calc-defeasible-priority -2 [rule11] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen34 ) ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ( negative-support $?gen37 ) ( negative-overruled $?gen38 & : ( subseq-pos ( create$ rule11-overruled $?gen37 $$$ $?gen38 ) ) ) ) ( test ( eq ( class ?gen34 ) is_high_category_weapon_in_public ) ) ( not ( and ( object ( name ?gen41 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery "public" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ( object ( name ?gen34 ) ( is-a is_high_category_weapon_in_public ) ( positive-defeated $?gen36 & : ( not ( member$ rule11 $?gen36 ) ) ) ) ) ) ( test ( and ( neq ?Defendant nil ) ( neq $?gen37 (create$) ) ) ) ( not ( object ( name ?gen34 ) ( is-a is_high_category_weapon_in_public ) ( negative-overruled $?gen39 & : ( eq $?gen39 ( delete-member$ $?gen38 ( create$ rule11-overruled $?gen37 ) ) ) ) ) ) ( test ( instance-existp ?gen34 ) ) => ( bind $?gen39 ( delete-member$ $?gen38 ( create$ rule11-overruled $?gen37 ) ) ) ( message-modify-instance ?gen34 ( negative-overruled $?gen39 ) ) )
( defrule rule11-overruled-gen131 ( declare ( salience ( + 1000 ( calc-defeasible-priority 2 [rule11] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen41 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery "public" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ( object ( name ?gen34 ) ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ( negative-support $?gen37 ) ( negative-overruled $?gen38 & : ( not ( subseq-pos ( create$ rule11-overruled $?gen37 $$$ $?gen38 ) ) ) ) ( positive-defeated $?gen36 & : ( not ( member$ rule11 $?gen36 ) ) ) ) ( test ( eq ( class ?gen34 ) is_high_category_weapon_in_public ) ) ( test ( and ( neq ?Defendant (create$) ) ( neq ?Defendant nil ) ( neq $?gen37 (create$) ) ) ) ( not ( object ( name ?gen34 ) ( is-a is_high_category_weapon_in_public ) ( negative-overruled $?gen39 & : ( eq $?gen39 ( create$ rule11-overruled $?gen37 $?gen38 ) ) ) ) ) ( test ( instance-existp ?gen34 ) ) => ( bind $?gen39 ( create$ rule11-overruled $?gen37 $?gen38 ) ) ( message-modify-instance ?gen34 ( negative-overruled $?gen39 ) ) )
( defrule rule11-support-gen133 ( declare ( salience ( + 1000 ( calc-defeasible-priority 5 [rule11] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen33 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery "public" ) ) ( object ( name ?gen34 ) ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ( positive-support $?gen36 & : ( not ( subseq-pos ( create$ rule11 ?gen33 $$$ $?gen36 ) ) ) ) ) ( test ( eq ( class ?gen34 ) is_high_category_weapon_in_public ) ) ( test ( and ( neq ?Defendant (create$) ) ( neq ?Defendant nil ) ) ) ( not ( object ( name ?gen34 ) ( is-a is_high_category_weapon_in_public ) ( positive-support $?gen39 & : ( eq $?gen39 ( create$ rule11 ?gen33 $?gen36 ) ) ) ) ) ( test ( instance-existp ?gen34 ) ) => ( bind $?gen39 ( create$ rule11 ?gen33 $?gen36 ) ) ( message-modify-instance ?gen34 ( positive-support $?gen39 ) ) )
( defrule rule10-defeasibly-dot-gen135 ( declare ( salience ( + 1000 ( calc-defeasible-priority -1 [rule10] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen25 ) ( is-a recommend_increased_penalty ) ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule10 $? ) ) ( test ( eq ( class ?gen25 ) recommend_increased_penalty ) ) ( not ( and ( object ( name ?gen32 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:previously_convicted "yes" ) ( positive ?gen31 & : ( >= ?gen31 1 ) ) ) ( object ( name ?gen25 ) ( is-a recommend_increased_penalty ) ( negative ~ 2 ) ( positive-overruled $?gen27 & : ( not ( member$ rule10 $?gen27 ) ) ) ) ) ) ( test ( neq ?Defendant nil ) ) ( not ( object ( name ?gen25 ) ( is-a recommend_increased_penalty ) ( positive 0 ) ) ) ( test ( instance-existp ?gen25 ) ) => ( message-modify-instance ?gen25 ( positive 0 ) ) )
( defrule rule10-defeasibly-gen137 ( declare ( salience ( + 1000 ( calc-defeasible-priority 1 [rule10] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen32 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:previously_convicted "yes" ) ( positive ?gen31 & : ( >= ?gen31 1 ) ) ) ( object ( name ?gen25 ) ( is-a recommend_increased_penalty ) ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen27 & : ( not ( member$ rule10 $?gen27 ) ) ) ) ( test ( eq ( class ?gen25 ) recommend_increased_penalty ) ) ( test ( and ( neq ?Defendant (create$) ) ( neq ?Defendant nil ) ) ) ( not ( object ( name ?gen25 ) ( is-a recommend_increased_penalty ) ( positive 1 ) ( positive-derivator rule10 ?gen32 ) ) ) ( test ( instance-existp ?gen25 ) ) => ( message-modify-instance ?gen25 ( positive 1 ) ( positive-derivator rule10 ?gen32 ) ) )
( defrule rule10-overruled-dot-gen139 ( declare ( salience ( + 1000 ( calc-defeasible-priority -2 [rule10] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen25 ) ( is-a recommend_increased_penalty ) ( defendant ?Defendant ) ( negative-support $?gen28 ) ( negative-overruled $?gen29 & : ( subseq-pos ( create$ rule10-overruled $?gen28 $$$ $?gen29 ) ) ) ) ( test ( eq ( class ?gen25 ) recommend_increased_penalty ) ) ( not ( and ( object ( name ?gen32 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:previously_convicted "yes" ) ( positive ?gen31 & : ( >= ?gen31 1 ) ) ) ( object ( name ?gen25 ) ( is-a recommend_increased_penalty ) ( positive-defeated $?gen27 & : ( not ( member$ rule10 $?gen27 ) ) ) ) ) ) ( test ( and ( neq ?Defendant nil ) ( neq $?gen28 (create$) ) ) ) ( not ( object ( name ?gen25 ) ( is-a recommend_increased_penalty ) ( negative-overruled $?gen30 & : ( eq $?gen30 ( delete-member$ $?gen29 ( create$ rule10-overruled $?gen28 ) ) ) ) ) ) ( test ( instance-existp ?gen25 ) ) => ( bind $?gen30 ( delete-member$ $?gen29 ( create$ rule10-overruled $?gen28 ) ) ) ( message-modify-instance ?gen25 ( negative-overruled $?gen30 ) ) )
( defrule rule10-overruled-gen141 ( declare ( salience ( + 1000 ( calc-defeasible-priority 2 [rule10] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen32 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:previously_convicted "yes" ) ( positive ?gen31 & : ( >= ?gen31 1 ) ) ) ( object ( name ?gen25 ) ( is-a recommend_increased_penalty ) ( defendant ?Defendant ) ( negative-support $?gen28 ) ( negative-overruled $?gen29 & : ( not ( subseq-pos ( create$ rule10-overruled $?gen28 $$$ $?gen29 ) ) ) ) ( positive-defeated $?gen27 & : ( not ( member$ rule10 $?gen27 ) ) ) ) ( test ( eq ( class ?gen25 ) recommend_increased_penalty ) ) ( test ( and ( neq ?Defendant (create$) ) ( neq ?Defendant nil ) ( neq $?gen28 (create$) ) ) ) ( not ( object ( name ?gen25 ) ( is-a recommend_increased_penalty ) ( negative-overruled $?gen30 & : ( eq $?gen30 ( create$ rule10-overruled $?gen28 $?gen29 ) ) ) ) ) ( test ( instance-existp ?gen25 ) ) => ( bind $?gen30 ( create$ rule10-overruled $?gen28 $?gen29 ) ) ( message-modify-instance ?gen25 ( negative-overruled $?gen30 ) ) )
( defrule rule10-support-gen143 ( declare ( salience ( + 1000 ( calc-defeasible-priority 5 [rule10] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen24 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:previously_convicted "yes" ) ) ( object ( name ?gen25 ) ( is-a recommend_increased_penalty ) ( defendant ?Defendant ) ( positive-support $?gen27 & : ( not ( subseq-pos ( create$ rule10 ?gen24 $$$ $?gen27 ) ) ) ) ) ( test ( eq ( class ?gen25 ) recommend_increased_penalty ) ) ( test ( and ( neq ?Defendant (create$) ) ( neq ?Defendant nil ) ) ) ( not ( object ( name ?gen25 ) ( is-a recommend_increased_penalty ) ( positive-support $?gen30 & : ( eq $?gen30 ( create$ rule10 ?gen24 $?gen27 ) ) ) ) ) ( test ( instance-existp ?gen25 ) ) => ( bind $?gen30 ( create$ rule10 ?gen24 $?gen27 ) ) ( message-modify-instance ?gen25 ( positive-support $?gen30 ) ) )
( defrule rule9-defeasibly-dot-gen145 ( declare ( salience ( + 1000 ( calc-defeasible-priority -1 [rule9] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen16 ) ( is-a recommend_fine_reduction ) ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule9 $? ) ) ( test ( eq ( class ?gen16 ) recommend_fine_reduction ) ) ( not ( and ( object ( name ?gen23 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:low_income "yes" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ( object ( name ?gen16 ) ( is-a recommend_fine_reduction ) ( negative ~ 2 ) ( positive-overruled $?gen18 & : ( not ( member$ rule9 $?gen18 ) ) ) ) ) ) ( test ( neq ?Defendant nil ) ) ( not ( object ( name ?gen16 ) ( is-a recommend_fine_reduction ) ( positive 0 ) ) ) ( test ( instance-existp ?gen16 ) ) => ( message-modify-instance ?gen16 ( positive 0 ) ) )
( defrule rule9-defeasibly-gen147 ( declare ( salience ( + 1000 ( calc-defeasible-priority 1 [rule9] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen23 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:low_income "yes" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ( object ( name ?gen16 ) ( is-a recommend_fine_reduction ) ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen18 & : ( not ( member$ rule9 $?gen18 ) ) ) ) ( test ( eq ( class ?gen16 ) recommend_fine_reduction ) ) ( test ( and ( neq ?Defendant (create$) ) ( neq ?Defendant nil ) ) ) ( not ( object ( name ?gen16 ) ( is-a recommend_fine_reduction ) ( positive 1 ) ( positive-derivator rule9 ?gen23 ) ) ) ( test ( instance-existp ?gen16 ) ) => ( message-modify-instance ?gen16 ( positive 1 ) ( positive-derivator rule9 ?gen23 ) ) )
( defrule rule9-overruled-dot-gen149 ( declare ( salience ( + 1000 ( calc-defeasible-priority -2 [rule9] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen16 ) ( is-a recommend_fine_reduction ) ( defendant ?Defendant ) ( negative-support $?gen19 ) ( negative-overruled $?gen20 & : ( subseq-pos ( create$ rule9-overruled $?gen19 $$$ $?gen20 ) ) ) ) ( test ( eq ( class ?gen16 ) recommend_fine_reduction ) ) ( not ( and ( object ( name ?gen23 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:low_income "yes" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ( object ( name ?gen16 ) ( is-a recommend_fine_reduction ) ( positive-defeated $?gen18 & : ( not ( member$ rule9 $?gen18 ) ) ) ) ) ) ( test ( and ( neq ?Defendant nil ) ( neq $?gen19 (create$) ) ) ) ( not ( object ( name ?gen16 ) ( is-a recommend_fine_reduction ) ( negative-overruled $?gen21 & : ( eq $?gen21 ( delete-member$ $?gen20 ( create$ rule9-overruled $?gen19 ) ) ) ) ) ) ( test ( instance-existp ?gen16 ) ) => ( bind $?gen21 ( delete-member$ $?gen20 ( create$ rule9-overruled $?gen19 ) ) ) ( message-modify-instance ?gen16 ( negative-overruled $?gen21 ) ) )
( defrule rule9-overruled-gen151 ( declare ( salience ( + 1000 ( calc-defeasible-priority 2 [rule9] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen23 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:low_income "yes" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ( object ( name ?gen16 ) ( is-a recommend_fine_reduction ) ( defendant ?Defendant ) ( negative-support $?gen19 ) ( negative-overruled $?gen20 & : ( not ( subseq-pos ( create$ rule9-overruled $?gen19 $$$ $?gen20 ) ) ) ) ( positive-defeated $?gen18 & : ( not ( member$ rule9 $?gen18 ) ) ) ) ( test ( eq ( class ?gen16 ) recommend_fine_reduction ) ) ( test ( and ( neq ?Defendant (create$) ) ( neq ?Defendant nil ) ( neq $?gen19 (create$) ) ) ) ( not ( object ( name ?gen16 ) ( is-a recommend_fine_reduction ) ( negative-overruled $?gen21 & : ( eq $?gen21 ( create$ rule9-overruled $?gen19 $?gen20 ) ) ) ) ) ( test ( instance-existp ?gen16 ) ) => ( bind $?gen21 ( create$ rule9-overruled $?gen19 $?gen20 ) ) ( message-modify-instance ?gen16 ( negative-overruled $?gen21 ) ) )
( defrule rule9-support-gen153 ( declare ( salience ( + 1000 ( calc-defeasible-priority 5 [rule9] ) ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:low_income "yes" ) ) ( object ( name ?gen16 ) ( is-a recommend_fine_reduction ) ( defendant ?Defendant ) ( positive-support $?gen18 & : ( not ( subseq-pos ( create$ rule9 ?gen15 $$$ $?gen18 ) ) ) ) ) ( test ( eq ( class ?gen16 ) recommend_fine_reduction ) ) ( test ( and ( neq ?Defendant (create$) ) ( neq ?Defendant nil ) ) ) ( not ( object ( name ?gen16 ) ( is-a recommend_fine_reduction ) ( positive-support $?gen21 & : ( eq $?gen21 ( create$ rule9 ?gen15 $?gen18 ) ) ) ) ) ( test ( instance-existp ?gen16 ) ) => ( bind $?gen21 ( create$ rule9 ?gen15 $?gen18 ) ) ( message-modify-instance ?gen16 ( positive-support $?gen21 ) ) )
( defrule pen13-deductive-gen84 ( declare ( salience ( calc-salience to_pay_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen69 ) ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min ) ( value 30 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min 30 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min 30 ) ) ) ( make-instance ?oid of to_pay_min ( value 30 ) ) )
( defrule pen12-deductive-gen83 ( declare ( salience ( calc-salience to_pay_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen60 ) ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max ) ( value 500 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max 500 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max 500 ) ) ) ( make-instance ?oid of to_pay_max ( value 500 ) ) )
( defrule pen11-deductive-gen82 ( declare ( salience ( calc-salience to_increase_penalty ) ) ) ( run-deductive-rules ) ( object ( name ?gen51 ) ( is-a recommend_increased_penalty ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_increase_penalty ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_increase_penalty 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_increase_penalty 1 ) ) ) ( make-instance ?oid of to_increase_penalty ( value 1 ) ) )
( defrule pen10-deductive-gen81 ( declare ( salience ( calc-salience to_pay_less ) ) ) ( run-deductive-rules ) ( object ( name ?gen42 ) ( is-a recommend_fine_reduction ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_less ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_less 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_less 1 ) ) ) ( make-instance ?oid of to_pay_less ( value 1 ) ) )
( defrule rule11-deductive-gen80 ( declare ( salience ( calc-salience is_high_category_weapon_in_public ) ) ) ( run-deductive-rules ) ( object ( name ?gen33 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:method_of_weapon_discovery "public" ) ) ( not ( object ( is-a is_high_category_weapon_in_public ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_high_category_weapon_in_public ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_high_category_weapon_in_public ?Defendant ) ) ) ( make-instance ?oid of is_high_category_weapon_in_public ( defendant ?Defendant ) ) )
( defrule rule10-deductive-gen79 ( declare ( salience ( calc-salience recommend_increased_penalty ) ) ) ( run-deductive-rules ) ( object ( name ?gen24 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:previously_convicted "yes" ) ) ( not ( object ( is-a recommend_increased_penalty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat recommend_increased_penalty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat recommend_increased_penalty ?Defendant ) ) ) ( make-instance ?oid of recommend_increased_penalty ( defendant ?Defendant ) ) )
( defrule rule9-deductive-gen78 ( declare ( salience ( calc-salience recommend_fine_reduction ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:low_income "yes" ) ) ( not ( object ( is-a recommend_fine_reduction ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat recommend_fine_reduction ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat recommend_fine_reduction ?Defendant ) ) ) ( make-instance ?oid of recommend_fine_reduction ( defendant ?Defendant ) ) )
