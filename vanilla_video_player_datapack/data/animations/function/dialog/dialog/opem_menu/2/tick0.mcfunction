$scoreboard players add @s temp.dialog.video_list_play.player.$(player_number) 1

$execute unless score #page_number temp.dialog.video_list_play.player.$(player_number) matches 1.. run scoreboard players add #page_number temp.dialog.video_list_play.player.$(player_number) 1

$execute store result storage video:dialog.$(player_number) video_list_play.temp.video.video_id int 1 run scoreboard players get @s temp.dialog.video_list_play.player.$(player_number)

$execute store result storage video:dialog.$(player_number) video_list_play.temp.video.player_number int 1 run data get storage video:dialog.$(player_number) video_list_play.temp.player_number

#say tick0
#获取视频信息
$function animations:dialog/dialog/opem_menu/2/video_get/get with storage video:dialog.$(player_number) video_list_play.temp.video

##player_number 玩家ID  player_language_id 玩家语言ID player_language玩家语言代码 
#video_id 视频ID name 视频唯一识别名称(data storage) video_name 视频翻译名称/默认名称

#写入到新的nbt当中
$function animations:dialog/dialog/opem_menu/2/add_page/add with storage video:dialog.$(player_number) video_list_play.temp.video
