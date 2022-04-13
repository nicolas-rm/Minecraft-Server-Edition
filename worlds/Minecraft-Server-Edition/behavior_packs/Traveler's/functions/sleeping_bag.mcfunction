execute @e[type=andriel:sleeping_anim, name=sleeping_bag, tag=sleep1] ~~~ tp ^^-0.05^0.1 180
execute @e[type=andriel:sleeping_anim, name=sleeping_bag, tag=sleep2] ~~~ tp ^^-0.05^0.1 0
execute @e[type=andriel:sleeping_anim, name=sleeping_bag, tag=sleep3] ~~~ tp ^^-0.05^0.1 90
execute @e[type=andriel:sleeping_anim, name=sleeping_bag, tag=sleep4] ~~~ tp ^^-0.05^0.1 -90
execute @e[type=andriel:sleeping_anim, name=sleep] ~~~ tp @p ~~~ facing @e[type=andriel:sleeping_anim, name=sleeping_bag]
scoreboard players add @e[type=andriel:sleeping_anim, name=sleep] sleeping 1
execute @e[type=andriel:sleeping_anim, name=sleep, scores={sleeping=5}] ~~~ titleraw @p title {"rawtext":[{"translate": "good_night.sleeping_bag"}]}
execute @e[type=andriel:sleeping_anim, name=sleep, scores={sleeping=230..}] ~~~ time set 0
execute @e[type=andriel:sleeping_anim, name=sleep, scores={sleeping=230..}] ~~~ weather clear
execute @e[type=andriel:sleeping_anim, name=sleep, scores={sleeping=230..}] ~~~ tag @e[type=andriel:sleeping_anim, name=sleeping_bag] add sumir
execute @e[type=andriel:sleeping_anim, name=sleep, scores={sleeping=230..}] ~~~ tag @e[type=andriel:sleeping_anim, name=sleep] add sumir
execute @e[type=andriel:sleeping_anim, name=sleep, scores={sleeping=230..}] ~~~ tp @p ~~1~
execute @e[type=andriel:sleeping_anim, name=sleep, scores={sleeping=240..}] ~~~ kill @e[type=andriel:sleeping_anim]