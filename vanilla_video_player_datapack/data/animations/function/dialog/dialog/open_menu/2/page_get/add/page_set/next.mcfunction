$scoreboard players operation #temp.page_number temp.dialog.get_page.player.$(player_number) = @s vvp.dialog.video_list.page_number
$scoreboard players set #a temp.dialog.get_page.player.$(player_number) 5
$scoreboard players operation #video_id temp.dialog.get_page.player.$(player_number) = #temp.page_number temp.dialog.get_page.player.$(player_number)
$scoreboard players operation #video_id temp.dialog.get_page.player.$(player_number) *= #a temp.dialog.get_page.player.$(player_number)

$scoreboard players set #max_video_id temp.dialog.get_page.player.$(player_number) 1
$scoreboard players operation #max_video_id temp.dialog.get_page.player.$(player_number) += #temp.page_number temp.dialog.get_page.player.$(player_number)
$scoreboard players operation #max_video_id temp.dialog.get_page.player.$(player_number) *= #a temp.dialog.get_page.player.$(player_number)

$execute if score #debug video_setting matches 3 run tellraw @s [{text:"#max_video_id"},{text:" : "},{score:{name:"#max_video_id",objective:"temp.dialog.get_page.player.$(player_number)"}}]

$scoreboard players reset #temp.page_number temp.dialog.get_page.player.$(player_number)
$execute unless score #page_number temp.dialog.get_page.player.$(player_number) matches 1.. if score #main.max_video_id temp.dialog.get_page.player.$(player_number) matches ..5 run scoreboard players operation #max_video_id temp.dialog.get_page.player.$(player_number) = #main.max_video_id temp.dialog.get_page.player.$(player_number)

$execute \
if score \
#max_video_id temp.dialog.get_page.player.$(player_number) \
> \
main.max_video_id temp.dialog.get_page.player.$(player_number) \
run scoreboard players operation \
#max_video_id temp.dialog.get_page.player.$(player_number) = main.max_video_id temp.dialog.get_page.player.$(player_number)