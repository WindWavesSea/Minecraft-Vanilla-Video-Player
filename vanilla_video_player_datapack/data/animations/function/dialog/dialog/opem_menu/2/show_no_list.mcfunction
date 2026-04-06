dialog show @s {\
    "type": "multi_action",\
    "title": [{"text": "\u0001","font": "dialog:space"},{"translate": "vanilla_video_player.dialog.video_list.title","font":"minecraft:default"}],\
    "can_close_with_escape": true,\
    "columns": 2,\
    "body": [\
        {\
            "type": "plain_message",\
            "contents": {"translate": "vanilla_video_player.dialog.video_list.text.no"}\
        }\
    ],\
    "exit_action": \
        {\
        "label": {"translate": "windwaves_sea.dialog.return"},\
        "tooltip": {"translate": "windwaves_sea.dialog.return.display"},\
        "width": 150,\
        "action": {\
            "type": "show_dialog",\
            "dialog": "animations:open_menu"\
        }\
    },\
    "actions": [\
                {\
        "label": {"translate": "windwaves_sea.dialog.return"},\
        "tooltip": {"translate": "windwaves_sea.dialog.return.display"},\
        "width": 150,\
        "action": {\
            "type": "show_dialog",\
            "dialog": "animations:open_menu"\
        }\
    }\
]\
}