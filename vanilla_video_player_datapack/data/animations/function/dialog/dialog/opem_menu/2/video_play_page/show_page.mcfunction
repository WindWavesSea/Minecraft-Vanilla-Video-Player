$dialog show @s {\
    "type": "confirmation",\
    "title": {"translate": "vanilla_video_player.dialog.video_play.title"},\
    "can_close_with_escape": false,\
    "pause":false,\
    "after_action":"none",\
    "body": [\
        {\
            "type": "plain_message",\
            "contents": {"translate": "vanilla_video_player.dialog.video_play.text"}\
        }\
    ],\
    "yes": {\
        "label": {"translate": "vanilla_video_player.dialog.video_play.action.yes.label"},\
        "tooltip": {"translate": "vanilla_video_player.dialog.video_play.action.yes.tooltip"},\
        "width": 150,\
        "action": {\
            "type": "run_command",\
            "command": "trigger vvp.dialog.video.id.run set $(video_id)"\
        }\
    },\
    "no": {\
        "label": {"translate": "vanilla_video_player.dialog.video_play.action.no.label"},\
        "tooltip": {"translate": "vanilla_video_player.dialog.video_play.action.no.tooltip"},\
        "width": 150,\
        "action": {\
            "type": "run_command",\
            "command": "trigger vvp.dialog.video.id.run set -1"\
        }\
    }\
}