execute @a[tag=iniciar_bp] ~~~ tag @a[tag=!iniciar_bp] add iniciar_bp
execute @a[tag=!iniciar_bp, c=1] ~~~ summon andriel:backpack_tester principal ~~7~
tag @a[tag=!iniciar_bp] add iniciar_bp