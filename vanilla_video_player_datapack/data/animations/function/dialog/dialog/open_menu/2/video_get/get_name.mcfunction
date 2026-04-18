$data modify storage video:dialog.get_page.$(player_number) get_data.video_name_text set from storage video:$(video_name) video.language.$(player_language)

data remove storage execute:temp video.video_list_data_get

execute if score #debug video_setting matches 3 run tellraw @s [{text:"get_name.language"}]