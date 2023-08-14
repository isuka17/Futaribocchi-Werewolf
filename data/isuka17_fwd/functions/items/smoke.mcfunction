# 煙玉
execute at @e[type=area_effect_cloud,nbt={Effects:[{Id:33,Duration:1,ShowParticles:false}]}] run playsound entity.generic.explode master @a ~ ~ ~ 2 1.2
execute at @e[type=area_effect_cloud,nbt={Effects:[{Id:33,Duration:1,ShowParticles:false}]}] run summon area_effect_cloud ~ ~ ~ {Tags:["fwd_smoke"],Duration:200}
kill @e[type=area_effect_cloud,nbt={Effects:[{Id:33,Duration:1,ShowParticles:false}]}]
execute at @e[type=area_effect_cloud,tag=fwd_smoke] run particle minecraft:large_smoke ~ ~0.5 ~ 1.5 0.2 1.5 0 50 force @a