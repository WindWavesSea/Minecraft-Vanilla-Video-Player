execute \
if score @s video_frame_player matches 0..9 \
run return run \
function animations:play/storages/add_zero \
{frame_zero:"00000000"}

execute \
if score @s video_frame_player matches 10..99 \
run return run \
function animations:play/storages/add_zero \
{frame_zero:"0000000"}

execute \
if score @s video_frame_player matches 100..999 \
run return run \
function animations:play/storages/add_zero \
{frame_zero:"000000"}

execute \
if score @s video_frame_player matches 1000..9999 \
run return run \
function animations:play/storages/add_zero \
{frame_zero:"00000"}

execute \
if score @s video_frame_player matches 10000..99999 \
run return run \
function animations:play/storages/add_zero \
{frame_zero:"0000"}

execute \
if score @s video_frame_player matches 100000..999999 \
run return run \
function animations:play/storages/add_zero \
{frame_zero:"000"}

execute \
if score @s video_frame_player matches 1000000..9999999 \
run return run \
function animations:play/storages/add_zero \
{frame_zero:"00"}

execute \
if score @s video_frame_player matches 10000000..99999999 \
run return run \
function animations:play/storages/add_zero \
{frame_zero:"0"}

execute \
if score @s video_frame_player matches 100000000..999999999 \
run return run \
function animations:play/storages/add_zero \
{frame_zero:""}