$data merge storage video:dialog.get_page.$(player_number) \
{\
"get_data":{\
"video_body":{\
            "type": "minecraft:plain_message",\
            "contents": [{\
                "text": "\u0001","font":"dialog:text_field",\
                "click_event": {"action": "run_command","command": "trigger vvp.dialog.video.id set $(video_id)"}\
            },{\
                "text": "$(video_name_text)",\
                "font":"minecraft:default",\
                "click_event": {"action": "run_command","command": "trigger vvp.dialog.video.id set $(video_id)"}\
            }\
        ]\
    }\
}\
}
        
$function animations:dialog/dialog/open_menu/2/page_get/add/player_dialog with storage video:dialog.get_page.$(player_number) get_data

$data remove storage video:dialog.get_page.$(player_number) get_data.video_body

#say add.dialog_video_list
