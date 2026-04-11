$dialog show @s {\
    "type": "multi_action",\
    "title": [\
        {"text": "\u0001","font": "dialog:space"},\
        {"translate": "vanilla_video_player.dialog.video_list.title","font": "minecraft:default"}\
    ],\
    "pause": false,\
    "can_close_with_escape": false,\
    "columns": 2,\
    "after_action": "none",\
    "body": $(body),\
    "actions": [\
        {\
            "label": {"translate": "vanilla_video_player.dialog.video_list.action.last_page.label"},\
            "tooltip": {"translate": "vanilla_video_player.dialog.video_list.action.last_page.tooltip"},\
            "width": 150,\
            "action": {\
                "type": "minecraft:run_command",\
                "command": "trigger vvp.dialog.video_list.page_change set 1"\
            }\
        },\
        {\
            "label": {"translate": "vanilla_video_player.dialog.video_list.action.next_page.label"},\
            "tooltip": {"translate": "vanilla_video_player.dialog.video_list.action.next_page.tooltip"},\
            "width": 150,\
            "action": {\
                "type": "minecraft:run_command",\
                "command": "trigger vvp.dialog.video_list.page_change set 2"\
            }\
        }\
    ],\
    "exit_action": {\
    "label": {"translate": "windwaves_sea.dialog.return"},\
    "tooltip": {"translate": "windwaves_sea.dialog.return.display"},\
    "action": {\
        "type": "run_command",\
        "command": "trigger vvp.dialog.video_list.return set 1"\
    }\
}\
}
