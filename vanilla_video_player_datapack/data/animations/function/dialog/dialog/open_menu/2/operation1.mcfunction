$execute if score #b temp.dialog.video_list_play.player.$(number) matches 1.. run scoreboard players add #page_number temp.dialog.video_list_play.player.$(number) 1

$execute store result storage video:player_number_$(number)_video_play dialog.video_list.page_number int 1 run scoreboard players get #page_number temp.dialog.video_list_play.player.$(number)

$scoreboard players operation @s vvp.dialog.video_list.max_page_number = #page_number temp.dialog.video_list_play.player.$(number)

#$tellraw @s [{score:{name:"#page_number",objective:"temp.dialog.video_list_play.player.$(number)"}}]

$scoreboard players set @s temp.dialog.video_list_play.player.$(number) 0
$scoreboard players reset #a temp.dialog.video_list_play.player.$(number)
$scoreboard players reset #b temp.dialog.video_list_play.player.$(number)
$scoreboard players reset #d temp.dialog.video_list_play.player.$(number)