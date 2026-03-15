$execute unless score @s video_frame_player matches 0 run return run item modify entity @s armor.head {function:"minecraft:set_components",components:{"minecraft:equippable":{slot:"head",asset_id:"video:material",camera_overlay:"$(path)$(blender_name)$(frame_zero)$(frame)",equip_sound:{sound_id:"",range:0}}}}

$execute if score @s video_frame_player matches 0 run item modify entity @s armor.head {function:"minecraft:set_components",components:{"minecraft:equippable":{slot:"head",asset_id:"video:material",camera_overlay:"$(path)$(blender_name)$(frame_zero)1",equip_sound:{sound_id:"",range:0}}}}

#$execute if score @s video_frame_player matches 0 run say $(path)$(blender_name)$(frame_zero)1
#execute unless score @s video_frame_player matches 0 run say $(path)$(blender_name)$(frame_zero)$(frame)