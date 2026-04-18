execute if score #debug video_setting matches 3 run tellraw @s [{text:"add_video_list"}]

$execute if data storage video:dialog.get_page.$(player_number) {get_data:{change_page:1}} run \
scoreboard players remove #video_id temp.dialog.get_page.player.$(player_number) 1

$execute if data storage video:dialog.get_page.$(player_number) {get_data:{change_page:2}} run \
scoreboard players add #video_id temp.dialog.get_page.player.$(player_number) 1

$data modify storage video:dialog.get_page.$(player_number) get_data.player_language set from storage windwaves_sea:language_list $(player_language_id)

$execute store result storage video:dialog.get_page.$(player_number) get_data.video_id int 1 run scoreboard players get #video_id temp.dialog.get_page.player.$(player_number)

#获取信息
$function animations:dialog/dialog/open_menu/2/video_get/get with storage video:dialog.get_page.$(player_number) get_data
#获取视频列表显示状态

$function animations:dialog/dialog/open_menu/2/video_get/get_id with storage video:dialog.get_page.$(player_number) get_data
#获取视频列表显示状态

#写入到dialog当中
$function animations:dialog/dialog/open_menu/2/page_get/add/dialog_video_list \
with storage video:dialog.get_page.$(player_number) get_data

data remove storage execute:temp video.video_list_data_get

$data remove storage video:dialog.get_page.$(player_number) get_data.video_id
$data remove storage video:dialog.get_page.$(player_number) get_data.video_name
$data remove storage video:dialog.get_page.$(player_number) get_data.video_name_text