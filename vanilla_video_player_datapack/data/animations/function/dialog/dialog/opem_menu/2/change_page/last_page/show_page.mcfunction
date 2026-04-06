dialog show @s {\
    "type": "notice",\
    "title": [{"text":"\u0001","font":"dialog:space"},{"translate": "vanilla_video_player.dialog.video_list.title","font": "minecraft:default"}],\
    "can_close_with_escape": false,\
    "pause": false,\
    "after_action": "none",\
    "body": [\
        {\
            "type": "plain_message",\
            "contents": {"translate": "vanilla_video_player.dialog.video_list.page_change_next_no"}\
        }\
    ],\
    "action": {\
        "label": {"translate": "windwaves_sea.dialog.return"},\
        "tooltip": {"translate": "windwaves_sea.dialog.return.display"},\
        "width": 150,\
        "action": {\
            "type": "run_command",\
            "command": "trigger vvp.dialog.video_list.last_or_first_page set 1"\
        }\
    }\
}