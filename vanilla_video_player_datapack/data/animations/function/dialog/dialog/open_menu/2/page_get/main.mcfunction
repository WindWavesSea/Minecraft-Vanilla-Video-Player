execute if score #debug video_setting matches 3 run tellraw @s [{text:"----------------page_get_main----------------"}]
execute store result storage video:dialog page_get.player_number int 1 run scoreboard players get @s video_uuid_storages

#获取视频是否改变
execute if score @s vvp.dialog.video_list.page_change matches 1.. run function animations:dialog/dialog/open_menu/2/page_get/change_main with storage video:dialog page_get

##获取data
#player_number 玩家ID player_language_id 玩家语言ID
function animations:dialog/dialog/open_menu/2/page_get/get_data with storage video:dialog page_get

#判断目前页数(初始化计算计分板)
function animations:dialog/dialog/open_menu/2/page_get/execute_page with storage video:dialog page_get

#设置tick为1
function animations:dialog/dialog/open_menu/2/page_get/run with storage video:dialog page_get

data remove storage video:dialog page_get
execute if score #debug video_setting matches 3 run tellraw @s [{text:"----------------page_get_main_end----------------"}]