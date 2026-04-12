#设置TPS，用于定义帧率
#此功能只限多人模式使用
#$tick rate $(frame_rate)

$item replace entity @s armor.$(slot) with paper[minecraft:equippable={camera_overlay:"$(path)$(name)$(frame_zero)$(frame)",slot:"$(slot)"},item_model="minecraft:air"]

$execute if score #debug video_setting matches 3 run tellraw @s [{text:"$(path)$(name)$(frame_zero)$(frame)"}]

