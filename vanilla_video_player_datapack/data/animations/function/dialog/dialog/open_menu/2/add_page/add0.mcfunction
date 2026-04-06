$data merge storage video:dialog.$(player_number) \
{\
"video_list_play":\
{\
"temp":{\
"video":{\
"body":{\
            "type": "minecraft:plain_message",\
            "contents": [{\
                "text": "\u0001","font":"dialog:text_field",\
                "click_event": {"action": "run_command","command": "trigger vvp.dialog.video.id set $(video_id)"}\
            },{\
                "text": "$(video_name)",\
                "font":"minecraft:default",\
                "click_event": {"action": "run_command","command": "trigger vvp.dialog.video.id set $(video_id)"}\
            }\
            ]\
        }\
        }\
    }\
 }\
}\
        
$function animations:dialog/dialog/open_menu/2/add_page/player_dialog_add with storage video:dialog.$(player_number) video_list_play.temp.video

$data remove storage video:dialog.$(player_number) video_list_play.temp.video.body

#say add_page.add0