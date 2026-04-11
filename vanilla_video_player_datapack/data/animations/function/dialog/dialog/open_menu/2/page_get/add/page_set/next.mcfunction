$scoreboard players operation #temp.page_number temp.dialog.get_page.player.$(player_number) = @s vvp.dialog.video_list.page_number
$scoreboard players set #a temp.dialog.get_page.player.$(player_number) 5
$scoreboard players operation #video_id temp.dialog.get_page.player.$(player_number) = #temp.page_number temp.dialog.get_page.player.$(player_number)
$scoreboard players operation #video_id temp.dialog.get_page.player.$(player_number) *= #a temp.dialog.get_page.player.$(player_number)


$scoreboard players set #max_video_id temp.dialog.get_page.player.$(player_number) 1
$scoreboard players operation #max_video_id temp.dialog.get_page.player.$(player_number) += #temp.page_number temp.dialog.get_page.player.$(player_number)
$scoreboard players operation #max_video_id temp.dialog.get_page.player.$(player_number) *= #a temp.dialog.get_page.player.$(player_number)

$scoreboard players reset #temp.page_number temp.dialog.get_page.player.$(player_number)

$execute \
if score \
#max_video_id temp.dialog.get_page.player.$(player_number) \
> \
main.max_video_id temp.dialog.get_page.player.$(player_number) \
run scoreboard players operation \
#max_video_id temp.dialog.get_page.player.$(player_number) = main.max_video_id temp.dialog.get_page.player.$(player_number)