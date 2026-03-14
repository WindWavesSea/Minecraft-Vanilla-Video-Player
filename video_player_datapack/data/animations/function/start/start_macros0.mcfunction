#设置TPS，用于定义帧率
#此功能只限多人模式使用
#$tick rate $(frame_rate)

$item replace entity @s armor.head with paper[minecraft:equippable={camera_overlay:"$(path)$(name)$(frame_zero)$(frame)",slot:"head"},item_model="animation:material"]

#$say $(path)$(name)$(frame_zero)$(frame)

#开始执行播放tick
scoreboard players set @s video_play_execute 1

