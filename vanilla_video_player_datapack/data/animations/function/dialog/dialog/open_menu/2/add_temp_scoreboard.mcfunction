$scoreboard objectives add temp.dialog.video_list_play.player.$(number) dummy

$execute if score #debug video_setting matches 3 run tellraw @s [{text:"add_$(number)_temp_scoreboard"}]