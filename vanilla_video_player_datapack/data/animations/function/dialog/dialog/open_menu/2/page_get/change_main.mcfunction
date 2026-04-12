#execute if score @s vvp.dialog.video_list.page_change matches 1 run say change_page_1
#execute if score @s vvp.dialog.video_list.page_change matches 2 run say change_page_2

$execute store result storage video:dialog.get_page.$(player_number) get_data.change_page int 1 run scoreboard players get @s vvp.dialog.video_list.page_change

execute if score #debug video_setting matches 3 run tellraw @s [{text:"page_change"},{text:" : "},{score:{name:"@s",objective:"vvp.dialog.video_list.page_change"}}]

execute if score #debug video_setting matches 3 run execute if score @s vvp.dialog.video_list.page_change matches 2 run tellraw @s [{text:"change_page_data_set2"}]

execute if score #debug video_setting matches 3 run execute if score @s vvp.dialog.video_list.page_change matches 1 run tellraw @s [{text:"change_page_data_set1"}]

scoreboard players reset @s vvp.dialog.video_list.page_change
scoreboard players enable @s vvp.dialog.video_list.page_change

