tellraw @a {"rawtext":[{"translate": "exceeded_limit.info"}]}
tellraw @a {"rawtext":[{"translate": "exceeded_limit.models"}]}
execute @e[type=andriel:backpack_tester, name=principal, tag=!bpsd20] ~~~ tellraw @a {"rawtext":[{"translate": "exceeded_limit.standard"}]}
execute @e[type=andriel:backpack_tester, name=principal, tag=!bppig20] ~~~ tellraw @a {"rawtext":[{"translate": "exceeded_limit.pig"}]}
execute @e[type=andriel:backpack_tester, name=principal, tag=!bpfox20] ~~~ tellraw @a {"rawtext":[{"translate": "exceeded_limit.fox"}]}
execute @e[type=andriel:backpack_tester, name=principal, tag=!bpag3] ~~~ tellraw @a {"rawtext":[{"translate": "exceeded_limit.andriel"}]}
execute @e[type=andriel:backpack_tester, name=principal, tag=bpsd20, tag=bppig20, tag=bpfox20, tag=bpag3] ~~~ tellraw @a {"rawtext":[{"translate": "exceeded_limit.null"}]}
fill ~~~ ~~~ air 0 destroy
execute @e[type=andriel:backpack_tester, r=1] ~~~ tag @s add sumir
execute @e[type=andriel:backpack_inventory, r=1] ~~~ tag @s add sumir