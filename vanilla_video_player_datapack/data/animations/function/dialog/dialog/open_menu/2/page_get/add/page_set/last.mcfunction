$scoreboard players operation #temp.page_number temp.dialog.get_page.player.$(player_number) = @s vvp.dialog.video_list.page_number
$scoreboard players set #a temp.dialog.get_page.player.$(player_number) 5
$scoreboard players set #b temp.dialog.get_page.player.$(player_number) 1
$scoreboard players operation #video_id temp.dialog.get_page.player.$(player_number) = #temp.page_number temp.dialog.get_page.player.$(player_number)
$scoreboard players operation #video_id temp.dialog.get_page.player.$(player_number) -= #b temp.dialog.get_page.player.$(player_number)
$scoreboard players operation #min_video_id temp.dialog.get_page.player.$(player_number) = @s vvp.dialog.video_list.page_number
$scoreboard players operation #video_id temp.dialog.get_page.player.$(player_number) *= #a temp.dialog.get_page.player.$(player_number)
$scoreboard players add #video_id temp.dialog.get_page.player.$(player_number) 1

$execute if score #debug video_setting matches 3 run tellraw @s [{text:"#video_id"},{text:" : "},{score:{name:"#video_id",objective:"temp.dialog.get_page.player.$(player_number)"}}]

$scoreboard players remove #min_video_id temp.dialog.get_page.player.$(player_number) 2
$scoreboard players operation #min_video_id temp.dialog.get_page.player.$(player_number) *= #a temp.dialog.get_page.player.$(player_number)
$scoreboard players add #min_video_id temp.dialog.get_page.player.$(player_number) 1

$execute if score #debug video_setting matches 3 run tellraw @s [{text:"#min_video_id"},{text:" : "},{score:{name:"#min_video_id",objective:"temp.dialog.get_page.player.$(player_number)"}}]

$scoreboard players reset #temp.page_number temp.dialog.get_page.player.$(player_number)