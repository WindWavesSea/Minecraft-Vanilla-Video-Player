$dialog show @s {\
type:"multi_action",\
title:[{"text": "\u0001","font": "dialog:space"},{"translate":"vanilla_video_player.dialog.open_menu.action.1.text","font":"minecraft:default"}],\
can_close_with_escape:true,\
after_action:"none",\
pause:false,\
actions:[\
{\
label:{translate:"vanilla_video_player.dialog.player_setting.text.1",with:[{text:"$(text1):$(text2)"}]},\
tooltip:{translate:"vanilla_video_player.dialog.player_setting.text.1.display"},\
action:{\
type:"run_command",\
command:"trigger vvp.dialog.dialog_player_setting set 1"\
}\
}\
],\
exit_action:\
{\
label:{translate:"windwaves_sea.dialog.return"},\
tooltip:{translate:"windwaves_sea.dialog.return.display"},\
action:{\
type:"show_dialog",\
dialog:"animations:open_menu"\
}\
}\
}