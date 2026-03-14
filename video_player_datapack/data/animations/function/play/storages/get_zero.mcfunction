##获取此时应该有几个0
execute if score @s max_video_frame_player matches 0..9 run return run function animations:play/storages/add_zero {frame_zero:""}

##100以内的帧数逻辑
execute \
if score @s max_video_frame_player matches 10..99 \
run return run function animations:play/storages/zero_execute/0_99

##1000以内的帧数逻辑
execute \
if score @s max_video_frame_player matches 100..999 \
run return run function animations:play/storages/zero_execute/100_999

##10000以内的帧数逻辑
execute \
if score @s max_video_frame_player matches 1000..9999 \
run return run function animations:play/storages/zero_execute/1000_9999

##1x10*5以内的帧数逻辑
execute \
if score @s max_video_frame_player matches 10000..99999 \
run return run function animations:play/storages/zero_execute/10000_99999

##1x10*6以内的帧数逻辑
execute \
if score @s max_video_frame_player matches 100000..999999 \
run return run function animations:play/storages/zero_execute/100000_999999

##1x10*7以内的帧数逻辑
execute \
if score @s max_video_frame_player matches 1000000..9999999 \
run return run function animations:play/storages/zero_execute/1000000_9999999

##1x10*8以内的帧数逻辑
execute \
if score @s max_video_frame_player matches 10000000..99999999 \
run return run function animations:play/storages/zero_execute/10000000_99999999

##1x10*8以内的帧数逻辑
execute \
if score @s max_video_frame_player matches 100000000..999999999 \
run return run function animations:play/storages/zero_execute/100000000_999999999

##2147483647及以内的帧数逻辑
execute \
if score @s max_video_frame_player matches 1000000000..2147483647 \
run return run function animations:play/storages/zero_execute/1000000000_2147483647