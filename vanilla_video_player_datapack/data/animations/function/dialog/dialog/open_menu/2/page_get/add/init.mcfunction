$scoreboard objectives add temp.dialog.get_page.player.$(player_number) dummy

$scoreboard players operation #main.max_video_id temp.dialog.get_page.player.$(player_number) = #max_value video_list

$execute if score #debug video_setting matches 3 run tellraw @s [{text:"#main.max_video_id"},{text:" : "},{score:{name:"#main.max_video_id",objective:"temp.dialog.get_page.player.$(player_number)"}}]

$scoreboard players operation #max_page_number temp.dialog.get_page.player.$(player_number) = @s vvp.dialog.video_list.max_page_number

$execute if score #debug video_setting matches 3 run tellraw @s [{text:"#max_page_number"},{text:" : "},{score:{name:"#max_page_number",objective:"temp.dialog.get_page.player.$(player_number)"}}]

$scoreboard players operation #page_number temp.dialog.get_page.player.$(player_number) = @s vvp.dialog.video_list.page_number

$execute if score #debug video_setting matches 3 run tellraw @s [{text:"#page_number"},{text:" : "},{score:{name:"#page_number",objective:"temp.dialog.get_page.player.$(player_number)"}}]

execute if score #debug video_setting matches 3 run tellraw @s [{text:"init.get_page"}]

#更改页面需要获取的数据
$execute if data storage video:dialog.get_page.$(player_number) {get_data:{change_page:1}} \
run function animations:dialog/dialog/open_menu/2/page_get/add/page_set/last \
with storage video:dialog.get_page.$(player_number) get_data

$execute if data storage video:dialog.get_page.$(player_number) {get_data:{change_page:2}} \
run function animations:dialog/dialog/open_menu/2/page_get/add/page_set/next \
with storage video:dialog.get_page.$(player_number) get_data

#参数解析
#video_id 视频ID
#max_video_id 最大视频ID
#page_number 当前页数
#max_page_number 最大页数
#player_number 玩家ID
#change_page 是否改变页数 0不变 1上一页 2下一页
#temp.dialog.get_page.player.$(player_number) 用于计算的临时计分板，存储玩家的页数等信息
#main.max_video_id 视频总数
#max_page_number = (max_video_id - 1) / 20 + 1
#每页20个视频，页数从1开始
#计算页数和视频ID范围
#上一页：页数-1，视频ID范围：(页数-2)*20+1 ~ (页数-1)*20
#下一页：页数+1，视频ID范围：页数*20+1 ~ (页数+1)*20
#如果页数超过最大页数，设置为最大页数；如果页数小于1，设置为1
#根据视频ID范围获取视频列表并存储在临时数据中
#最后根据视频ID范围获取视频数据，设置tick为1，等待下一tick执行获取视频数据的函数
#注意：如果视频总数是20的倍数，最后一页可能没有20个视频，但计算方法不变，页数超过最大页数时会自动调整
#如果视频总数小于等于20，页数为1，视频ID范围为1~max_video_id
#如果视频总数为0，页数为1，视频ID范围为1~0，此时获取视频列表的函数应该处理这种情况，返回空列表
#如果页数改变了，先清除当前页的视频列表数据，再获取新页的视频列表数据
#如果页数没有改变，直接获取当前页的视频列表数据
#获取视频列表数据时，先根据视频ID范围获取视频ID列表，再根据视频ID列表获取视频数据，最后存储在临时数据中
#获取视频数据时，先根据视频ID列表获取视频数据列表，再存储在临时数据中，最后设置tick为1，等待下一tick执行获取视频数据的函数
#视频数据列表存储在video:list中
#每个视频数据包含视频ID、标题、缩略图URL等信息，具体字段根据实际情况定义
#获取视频列表数据时，先根据视频ID范围获取视频ID列表，再根据视频ID列表获取视频数据，最后存储在临时数据中
