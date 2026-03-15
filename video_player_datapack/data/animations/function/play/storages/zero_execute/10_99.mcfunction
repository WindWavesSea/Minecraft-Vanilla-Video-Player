execute \
if score @s video_frame_player matches 0..9 \
run return run function animations:play/storages/add_zero {frame_zero:"0"}

execute \
if score @s video_frame_player matches 10..99 \
run return run function animations:play/storages/add_zero {frame_zero:""}