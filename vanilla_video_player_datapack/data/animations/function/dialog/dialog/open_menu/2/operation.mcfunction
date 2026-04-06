$scoreboard players operation #a temp.dialog.video_list_play.player.$(number) = max_value video_list

$scoreboard players operation max_value temp.dialog.video_list_play.player.$(number) = max_value video_list

#$tellraw @s [{score:{name:"#a",objective:"temp.dialog.video_list_play.player.$(number)"}}]

$scoreboard players set #d temp.dialog.video_list_play.player.$(number) 20

#$tellraw @s [{score:{name:"#d",objective:"temp.dialog.video_list_play.player.$(number)"}}]

$scoreboard players operation #b temp.dialog.video_list_play.player.$(number) = #a temp.dialog.video_list_play.player.$(number)

#$tellraw @s [{score:{name:"#b",objective:"temp.dialog.video_list_play.player.$(number)"}}]

$scoreboard players operation #b temp.dialog.video_list_play.player.$(number) %= #d temp.dialog.video_list_play.player.$(number)

#$tellraw @s [{score:{name:"#b",objective:"temp.dialog.video_list_play.player.$(number)"}}]

$scoreboard players operation #a temp.dialog.video_list_play.player.$(number) /= #d temp.dialog.video_list_play.player.$(number)

#$tellraw @s [{score:{name:"#a",objective:"temp.dialog.video_list_play.player.$(number)"}}]

$scoreboard players operation #page_number temp.dialog.video_list_play.player.$(number) = #a temp.dialog.video_list_play.player.$(number)
  
#$tellraw @s [{score:{name:"#page_number",objective:"temp.dialog.video_list_play.player.$(number)"}}]

$function animations:dialog/dialog/open_menu/2/operation1 {number:"$(number)"}