execute unless data entity @s Health run return 0
execute if entity @s[nbt={NoAI:1b}] run return 0
execute if entity @s[tag=no_weak] run return 0
execute if entity @s[type=player] run return 0

summon bee ~ ~ ~ {Silent:1b,Invulnerable:1b,PortalCooldown:199999980,CannotEnterHiveTicks:24000,AngerTime:24000,Tags:["weak_base_1_temp"],equipment:{head:{id:"minecraft:polished_blackstone_button",count:1,components:{"minecraft:enchantments":{"ench_plus:status/weak_point":1}}}},active_effects:[{id:"minecraft:invisibility",amplifier:-1,duration:300,show_particles:0b,show_icon:0b,hidden_effect:{id:"minecraft:invisibility",duration:-1,show_icon:0b,amplifier:-2b,show_particles:0b}}],attributes:[{id:"minecraft:attack_damage",base:-500},{id:"minecraft:scale",base:0.01}]}
ride @n[tag=weak_base_1_temp,type=minecraft:bee,distance=..2] mount @s
tag @n[tag=weak_base_1_temp,type=minecraft:bee,distance=..2] remove weak_base_1_temp

summon area_effect_cloud ~ ~ ~ {CustomNameVisible:1b,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:300,Tags:["weak_base_2_temp"],CustomName:{"font":"ench_status","text":"\uE003"}}
ride @n[tag=weak_base_2_temp,type=minecraft:area_effect_cloud,distance=..2] mount @s
tag @n[tag=weak_base_2_temp,type=minecraft:area_effect_cloud,distance=..2] remove weak_base_2_temp