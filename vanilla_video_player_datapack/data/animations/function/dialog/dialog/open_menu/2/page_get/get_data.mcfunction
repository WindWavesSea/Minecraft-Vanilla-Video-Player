$data merge storage video:dialog.get_page.$(player_number) {get_data:{player_number:$(player_number)}}

$execute store result storage video:dialog.get_page.$(player_number) get_data.player_language_id int 1 \
run scoreboard players get @s windwaves_sea.dialog.language
