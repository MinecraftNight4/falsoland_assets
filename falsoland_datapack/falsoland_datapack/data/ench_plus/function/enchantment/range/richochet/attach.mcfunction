data modify entity @s data.search_mode set from storage lib:team out.yes
data modify entity @s data.search_team set from storage lib:team out.ign
data modify entity @s data.damage_user set from storage lib:getuid_main out



function lib_getuid:generate
data modify entity @s data.damage_last set from storage lib:getuid_main out
tag @s remove ricochet_temp