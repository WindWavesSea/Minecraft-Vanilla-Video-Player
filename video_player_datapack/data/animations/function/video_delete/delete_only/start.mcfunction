#读取上传计算/未计算的值，用于重写id
scoreboard players operation #reset.id.number video_list = #reset.id.last_value video_list

#-1计算，用于重新排序
scoreboard players set #reset.id.calculate_number video_list 1

scoreboard players operation #reset.id.number video_list -= #reset.id.calculate_number video_list

#放入临时data用于function使用
execute store result storage video:video_list reset.id.number int 1 run \
scoreboard players get #reset.id.number video_list
execute store result storage video:video_list reset.id.last_value int 1 run \
scoreboard players get #reset.id.last_value video_list

scoreboard players operation reset.id.execute video_list = #reset.id.max_value video_list

scoreboard players operation reset.id.execute video_list -= #reset.id.number video_list

function animations:video_delete/delete_only/end with storage video:video_list reset.id

execute if score reset.id.execute video_list matches 1 run \
function animations:video_delete/delete_only/delete_last with storage video:video_list reset.id

scoreboard players operation #reset.id.last_value video_list = #reset.id.number video_list

scoreboard players reset #reset.id.number video_list
scoreboard players reset #reset.id.calculate_number video_list

data remove storage video:video_list reset.id.number
data remove storage video:video_list reset.id.last_value