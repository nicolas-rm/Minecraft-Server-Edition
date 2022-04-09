scoreboard players remove @a[scores={tick=20..}] thistcooldown 1
scoreboard players remove @a[scores={thistcooldown=..0},m=!c,tag=!isunderwater] thirst 2
scoreboard players remove @a[scores={thistcooldown=..0},m=!c,tag=!isunderwater,tag=issprinting] thirst 2
scoreboard players add @a[scores={thistcooldown=..0},m=!c,tag=!isunderwater,tag=isfreezing] thirst 1
scoreboard players add @a[scores={thistcooldown=..0},m=!c,tag=!isunderwater,tag=iscold] thirst 1
scoreboard players remove @a[scores={thistcooldown=..0},m=!c,tag=!isunderwater,tag=iswarm] thirst 1
scoreboard players remove @a[scores={thistcooldown=..0},m=!c,tag=!isunderwater,tag=isburning] thirst 3
scoreboard players remove @a[scores={thistcooldown=..0,humidity=0..3},m=!c,tag=!isunderwater] thirst 1
scoreboard players remove @a[scores={thistcooldown=..0,humidity=0..7},m=!c,tag=!isunderwater] thirst 1
scoreboard players add @a[scores={thistcooldown=..0,humidity=13..20},m=!c,tag=!isunderwater] thirst 1
scoreboard players add @a[scores={thistcooldown=..0,humidity=17..20},m=!c,tag=!isunderwater] thirst 1
scoreboard players remove @a[scores={thistcooldown=..0},m=!c,tag=!isunderwater,tag=thirst] thirst 5
scoreboard players set @a[scores={thistcooldown=..0}] thistcooldown 6

title @a[tag=thirst,m=!c,scores={thirst=0}] actionbar 
title @a[tag=thirst,m=!c,scores={thirst=1..3}] actionbar 
title @a[tag=thirst,m=!c,scores={thirst=4..6}] actionbar 
title @a[tag=thirst,m=!c,scores={thirst=7..10}] actionbar 
title @a[tag=thirst,m=!c,scores={thirst=11..15}] actionbar 
title @a[tag=thirst,m=!c,scores={thirst=16..20}] actionbar 
title @a[tag=thirst,m=!c,scores={thirst=21..25}] actionbar 
title @a[tag=thirst,m=!c,scores={thirst=26..30}] actionbar 
title @a[tag=thirst,m=!c,scores={thirst=31..35}] actionbar 
title @a[tag=thirst,m=!c,scores={thirst=36..40}] actionbar 
title @a[tag=thirst,m=!c,scores={thirst=41..45}] actionbar 
title @a[tag=thirst,m=!c,scores={thirst=46..50}] actionbar 
title @a[tag=thirst,m=!c,scores={thirst=51..55}] actionbar 
title @a[tag=thirst,m=!c,scores={thirst=56..60}] actionbar 
title @a[tag=thirst,m=!c,scores={thirst=61..65}] actionbar 
title @a[tag=thirst,m=!c,scores={thirst=66..70}] actionbar 
title @a[tag=thirst,m=!c,scores={thirst=71..75}] actionbar 
title @a[tag=thirst,m=!c,scores={thirst=76..80}] actionbar 
title @a[tag=thirst,m=!c,scores={thirst=81..85}] actionbar 
title @a[tag=thirst,m=!c,scores={thirst=86..90}] actionbar 
title @a[tag=thirst,m=!c,scores={thirst=91..100}] actionbar 

title @a[tag=!thirst,m=!c,scores={thirst=0}] actionbar 
title @a[tag=!thirst,m=!c,scores={thirst=1..3}] actionbar 
title @a[tag=!thirst,m=!c,scores={thirst=4..6}] actionbar 
title @a[tag=!thirst,m=!c,scores={thirst=7..10}] actionbar 
title @a[tag=!thirst,m=!c,scores={thirst=11..15}] actionbar 
title @a[tag=!thirst,m=!c,scores={thirst=16..20}] actionbar 
title @a[tag=!thirst,m=!c,scores={thirst=21..25}] actionbar 
title @a[tag=!thirst,m=!c,scores={thirst=26..30}] actionbar 
title @a[tag=!thirst,m=!c,scores={thirst=31..35}] actionbar 
title @a[tag=!thirst,m=!c,scores={thirst=36..40}] actionbar 
title @a[tag=!thirst,m=!c,scores={thirst=41..45}] actionbar 
title @a[tag=!thirst,m=!c,scores={thirst=46..50}] actionbar 
title @a[tag=!thirst,m=!c,scores={thirst=51..55}] actionbar 
title @a[tag=!thirst,m=!c,scores={thirst=56..60}] actionbar 
title @a[tag=!thirst,m=!c,scores={thirst=61..65}] actionbar 
title @a[tag=!thirst,m=!c,scores={thirst=66..70}] actionbar 
title @a[tag=!thirst,m=!c,scores={thirst=71..75}] actionbar 
title @a[tag=!thirst,m=!c,scores={thirst=76..80}] actionbar 
title @a[tag=!thirst,m=!c,scores={thirst=81..85}] actionbar 
title @a[tag=!thirst,m=!c,scores={thirst=86..90}] actionbar 
title @a[tag=!thirst,m=!c,scores={thirst=91..100}] actionbar 

title @a[m=c] actionbar 

scoreboard players set @a[scores={thirst=..-1}] thirst 0
scoreboard players set @a[scores={thirst=100..}] thirst 100
