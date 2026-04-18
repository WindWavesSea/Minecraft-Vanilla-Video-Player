execute if score #debug video_setting matches 3 run tellraw @s [{text:"---------------page_get_tick-----------------"}]

#$execute \
if data storage video:dialog.get_page.$(player_number) {get_data:{change_page:2}} \
if score \
#video_id temp.dialog.get_page.player.$(player_number) \
< \
#max_video_id temp.dialog.get_page.player.$(player_number) run say tick

#写入当前页内容
$execute \
if data storage video:dialog.get_page.$(player_number) {get_data:{change_page:2}} \
if score \
#video_id temp.dialog.get_page.player.$(player_number) \
< \
#max_video_id temp.dialog.get_page.player.$(player_number) run return run \
function animations:dialog/dialog/open_menu/2/page_get/add/add_video_list with storage video:dialog.get_page.$(player_number) get_data

$execute \
if data storage video:dialog.get_page.$(player_number) {get_data:{change_page:1}} \
if score \
#video_id temp.dialog.get_page.player.$(player_number) \
> \
#min_video_id temp.dialog.get_page.player.$(player_number) run return run \
function animations:dialog/dialog/open_menu/2/page_get/add/add_video_list with storage video:dialog.get_page.$(player_number) get_data
#结束tick
$function animations:dialog/dialog/open_menu/2/page_get/tick/end {player_number:$(player_number)}

execute if score #debug video_setting matches 3 run tellraw @s [{text:"---------------page_get_tick_end-----------------"}]
