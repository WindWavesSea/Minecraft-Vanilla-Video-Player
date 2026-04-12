$item modify entity @s armor.$(slot) {function:"minecraft:set_components",components:{"minecraft:equippable":{slot:"$(slot)",asset_id:"video:material",camera_overlay:"$(path)3_2/$(name)$(frame_zero)$(frame)",equip_sound:{sound_id:"",range:0}}}}
$execute if score #debug video_setting matches 3 run tellraw @s [{text:"$(path)$(name)$(frame_zero)$(frame)"}]
