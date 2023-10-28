execute if score @s voteshop matches 1 run scoreboard players add @s kekevote_credits 0

execute if score @s voteshop matches 1 run tellraw @s ["",{"text":"Vote shop: ","color":"gold", "bold":true},{"text":"You currently have ","color":"yellow"},{"score":{"name":"@s","objective":"kevote_credits"},"color":"aqua"},{"text":" credits","color":"yellow"}]

execute if score @s voteshop matches 1 if score @s kevote_credits matches 2.. run tellraw @s [{"text":"[1] ","color":"yellow"},{"text":"1 Diamond","color":"gold"},{"text":" [Buy for 2 credits]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger voteshop set -1"}}]
execute if score @s voteshop matches 1 if score @s kevote_credits matches ..1 run tellraw @s [{"text":"[1] ","color":"yellow"},{"text":"1 Diamond","color":"gold"},{"text":" [Buy for 2 credits]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]
execute if score @s voteshop matches -1 if score @s kevote_credits matches 2.. run give @s minecraft:diamond 1
execute if score @s voteshop matches -1 if score @s kevote_credits matches 2.. run tellraw @s [{"text":"Purchased ", "color":"yellow"}, {"text":"1 Diamond","color":"gold"}, {"text":" from the vote shop!", "color":"yellow"}]
execute if score @s voteshop matches -1 if score @s kevote_credits matches ..1 run tellraw @s [{"text":"You don't have enough vote credits to purchase ","color":"red"},{"text":"1 Diamond","color":"gold"},{"text":"!","color":"red"}]
execute if score @s voteshop matches -1 if score @s kevote_credits matches 2.. run scoreboard players remove @s kevote_credits 2

execute if score @s voteshop matches 1 if score @s kevote_credits matches 2.. run tellraw @s [{"text":"[2] ","color":"yellow"},{"text":"4 Sponges","color":"gold"},{"text":" [Buy for 2 credits]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger voteshop set -2"}}]
execute if score @s voteshop matches 1 if score @s kevote_credits matches ..1 run tellraw @s [{"text":"[2] ","color":"yellow"},{"text":"4 Sponges","color":"gold"},{"text":" [Buy for 2 credits]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]
execute if score @s voteshop matches -2 if score @s kevote_credits matches 2.. run give @s minecraft:sponge 4
execute if score @s voteshop matches -2 if score @s kevote_credits matches 2.. run tellraw @s [{"text":"Purchased ", "color":"yellow"}, {"text":"4 Sponges","color":"gold"}, {"text":" from the vote shop!", "color":"yellow"}]
execute if score @s voteshop matches -2 if score @s kevote_credits matches ..1 run tellraw @s [{"text":"You don't have enough vote credits to purchase ","color":"red"},{"text":"4 Sponges","color":"gold"},{"text":"!","color":"red"}]
execute if score @s voteshop matches -2 if score @s kevote_credits matches 2.. run scoreboard players remove @s kevote_credits 2

execute if score @s voteshop matches 1 if score @s kevote_credits matches 1.. run tellraw @s [{"text":"[3] ","color":"yellow"},{"text":"5 Experience Bottles","color":"gold"},{"text":" [Buy for 1 credit]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger voteshop set -3"}}]
execute if score @s voteshop matches 1 if score @s kevote_credits matches ..0 run tellraw @s [{"text":"[3] ","color":"yellow"},{"text":"5 Experience Bottles","color":"gold"},{"text":" [Buy for 1 credit]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]
execute if score @s voteshop matches -3 if score @s kevote_credits matches 1.. run give @s minecraft:experience_bottle 5
execute if score @s voteshop matches -3 if score @s kevote_credits matches 1.. run tellraw @s [{"text":"Purchased ", "color":"yellow"}, {"text":"5 Experience Bottles","color":"gold"}, {"text":" from the vote shop!", "color":"yellow"}]
execute if score @s voteshop matches -3 if score @s kevote_credits matches ..0 run tellraw @s [{"text":"You don't have enough vote credits to purchase ","color":"red"},{"text":"5 Experience Bottles","color":"gold"},{"text":"!","color":"red"}]
execute if score @s voteshop matches -3 if score @s kevote_credits matches 1.. run scoreboard players remove @s kevote_credits 1

execute if score @s voteshop matches 1 if score @s kevote_credits matches 25.. run tellraw @s [{"text":"[4] ","color":"yellow"},{"text":"1 Mending Book","color":"gold"},{"text":" [Buy for 25 credits]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger voteshop set -4"}}]
execute if score @s voteshop matches 1 if score @s kevote_credits matches ..24 run tellraw @s [{"text":"[4] ","color":"yellow"},{"text":"1 Mending Book","color":"gold"},{"text":" [Buy for 25 credits]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]
execute if score @s voteshop matches -4 if score @s kevote_credits matches 25.. run give @s minecraft:enchanted_book{StoredEnchantments:[{id:"minecraft:mending",lvl:1}]} 1
execute if score @s voteshop matches -4 if score @s kevote_credits matches 25.. run tellraw @s [{"text":"Purchased ", "color":"yellow"}, {"text":"1 Mending Book","color":"gold"}, {"text":" from the vote shop!", "color":"yellow"}]
execute if score @s voteshop matches -4 if score @s kevote_credits matches ..24 run tellraw @s [{"text":"You don't have enough vote credits to purchase ","color":"red"},{"text":"1 Mending Book","color":"gold"},{"text":"!","color":"red"}]
execute if score @s voteshop matches -4 if score @s kevote_credits matches 25.. run scoreboard players remove @s kevote_credits 25

execute if score @s voteshop matches 1 if score @s kevote_credits matches 1.. run tellraw @s [{"text":"[5] ","color":"yellow"},{"text":"8 Cooked Beefs","color":"gold"},{"text":" [Buy for 1 credit]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger voteshop set -5"}}]
execute if score @s voteshop matches 1 if score @s kevote_credits matches ..0 run tellraw @s [{"text":"[5] ","color":"yellow"},{"text":"8 Cooked Beefs","color":"gold"},{"text":" [Buy for 1 credit]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]
execute if score @s voteshop matches -5 if score @s kevote_credits matches 1.. run give @s minecraft:cooked_beef 8
execute if score @s voteshop matches -5 if score @s kevote_credits matches 1.. run tellraw @s [{"text":"Purchased ", "color":"yellow"}, {"text":"8 Cooked Beefs","color":"gold"}, {"text":" from the vote shop!", "color":"yellow"}]
execute if score @s voteshop matches -5 if score @s kevote_credits matches ..0 run tellraw @s [{"text":"You don't have enough vote credits to purchase ","color":"red"},{"text":"8 Cooked Beefs","color":"gold"},{"text":"!","color":"red"}]
execute if score @s voteshop matches -5 if score @s kevote_credits matches 1.. run scoreboard players remove @s kevote_credits 1

execute if score @s voteshop matches 1 if score @s kevote_credits matches 8.. run tellraw @s [{"text":"[6] ","color":"yellow"},{"text":"1 Heart Of The Sea","color":"gold"},{"text":" [Buy for 8 credits]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger voteshop set -6"}}]
execute if score @s voteshop matches 1 if score @s kevote_credits matches ..7 run tellraw @s [{"text":"[6] ","color":"yellow"},{"text":"1 Heart Of The Sea","color":"gold"},{"text":" [Buy for 8 credits]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]
execute if score @s voteshop matches -6 if score @s kevote_credits matches 8.. run give @s minecraft:heart_of_the_sea 1
execute if score @s voteshop matches -6 if score @s kevote_credits matches 8.. run tellraw @s [{"text":"Purchased ", "color":"yellow"}, {"text":"1 Heart Of The Sea","color":"gold"}, {"text":" from the vote shop!", "color":"yellow"}]
execute if score @s voteshop matches -6 if score @s kevote_credits matches ..7 run tellraw @s [{"text":"You don't have enough vote credits to purchase ","color":"red"},{"text":"1 Heart Of The Sea","color":"gold"},{"text":"!","color":"red"}]
execute if score @s voteshop matches -6 if score @s kevote_credits matches 8.. run scoreboard players remove @s kevote_credits 8

execute if score @s voteshop matches 1 if score @s kevote_credits matches 4.. run tellraw @s [{"text":"[7] ","color":"yellow"},{"text":"Invisible Item Frame","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"Can only be placed once","color":"gray"}}},{"text":" [Buy for 4 credits]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger voteshop set -7"}}]
execute if score @s voteshop matches 1 if score @s kevote_credits matches ..3 run tellraw @s [{"text":"[7] ","color":"yellow"},{"text":"Invisible Item Frame","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"Can only be placed once","color":"gray"}}},{"text":" [Buy for 4 credits]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]
execute if score @s voteshop matches -7 if score @s kevote_credits matches 4.. run give @s minecraft:glow_item_frame{Enchantments:[{}],EntityTag:{Invisible:1b}} 1
execute if score @s voteshop matches -7 if score @s kevote_credits matches 4.. run tellraw @s [{"text":"Purchased ", "color":"yellow"}, {"text":"Invisible Item Frame","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"Can only be placed once","color":"gray"}}}, {"text":" from the vote shop!", "color":"yellow"}]
execute if score @s voteshop matches -7 if score @s kevote_credits matches ..3 run tellraw @s [{"text":"You don't have enough vote credits to purchase ","color":"red"},{"text":"Invisible Item Frame","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"Can only be placed once","color":"gray"}}},{"text":"!","color":"red"}]
execute if score @s voteshop matches -7 if score @s kevote_credits matches 4.. run scoreboard players remove @s kevote_credits 4

execute if score @s voteshop matches 1 if score @s kevote_credits matches 1.. run tellraw @s [{"text":"[8] ","color":"yellow"},{"text":"50 Claim Blocks","color":"gold"},{"text":" [Buy for 1 credit]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger voteshop set -8"}}]
execute if score @s voteshop matches 1 if score @s kevote_credits matches ..0 run tellraw @s [{"text":"[8] ","color":"yellow"},{"text":"50 Claim Blocks","color":"gold"},{"text":" [Buy for 1 credit]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]
execute if score @s voteshop matches -8 if score @s kevote_credits matches 1.. at @s run claim blocks add @p 50
execute if score @s voteshop matches -8 if score @s kevote_credits matches 1.. run tellraw @s [{"text":"Purchased ", "color":"yellow"}, {"text":"50 Claim Blocks","color":"gold"}, {"text":" from the vote shop!", "color":"yellow"}]
execute if score @s voteshop matches -8 if score @s kevote_credits matches ..0 run tellraw @s [{"text":"You don't have enough vote credits to purchase ","color":"red"},{"text":"50 Claim Blocks","color":"gold"},{"text":"!","color":"red"}]
execute if score @s voteshop matches -8 if score @s kevote_credits matches 1.. run scoreboard players remove @s kevote_credits 1

execute if score @s voteshop matches 1 if score @s kevote_credits matches 2.. run tellraw @s [{"text":"[9] ","color":"yellow"},{"text":"1 RTP","color":"gold"},{"text":" [Buy for 2 credits]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger voteshop set -9"}}]
execute if score @s voteshop matches 1 if score @s kevote_credits matches ..1 run tellraw @s [{"text":"[9] ","color":"yellow"},{"text":"1 RTP","color":"gold"},{"text":" [Buy for 2 credits]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]
execute if score @s voteshop matches -9 if score @s kevote_credits matches 2.. at @s run wild add @p 1
execute if score @s voteshop matches -9 if score @s kevote_credits matches 2.. run tellraw @s [{"text":"Purchased ", "color":"yellow"}, {"text":"1 RTP","color":"gold"}, {"text":" from the vote shop!", "color":"yellow"}]
execute if score @s voteshop matches -9 if score @s kevote_credits matches ..1 run tellraw @s [{"text":"You don't have enough vote credits to purchase ","color":"red"},{"text":"1 RTP","color":"gold"},{"text":"!","color":"red"}]
execute if score @s voteshop matches -9 if score @s kevote_credits matches 2.. run scoreboard players remove @s kevote_credits 2

execute if score @s voteshop matches 1 if score @s kevote_credits matches 6.. run tellraw @s [{"text":"[10] ","color":"yellow"},{"text":"Summon an Allay","color":"gold"},{"text":" [Buy for 6 credits]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger voteshop set -10"}}]
execute if score @s voteshop matches 1 if score @s kevote_credits matches ..5 run tellraw @s [{"text":"[10] ","color":"yellow"},{"text":"Summon an Allay","color":"gold"},{"text":" [Buy for 6 credits]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]
execute if score @s voteshop matches -10 if score @s kevote_credits matches 6.. run execute at @s run summon minecraft:allay
execute if score @s voteshop matches -10 if score @s kevote_credits matches 6.. run tellraw @s [{"text":"Purchased ", "color":"yellow"}, {"text":"Summon an Allay","color":"gold"}, {"text":" from the vote shop!", "color":"yellow"}]
execute if score @s voteshop matches -10 if score @s kevote_credits matches ..5 run tellraw @s [{"text":"You don't have enough vote credits to purchase ","color":"red"},{"text":"Summon an Allay","color":"gold"},{"text":"!","color":"red"}]
execute if score @s voteshop matches -10 if score @s kevote_credits matches 6.. run scoreboard players remove @s kevote_credits 6

execute if score @s voteshop matches 1 if score @s kevote_credits matches 4.. run tellraw @s [{"text":"[11] ","color":"yellow"},{"text":"1 Suspicious Sand","color":"gold"},{"text":" [Buy for 4 credits]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger voteshop set -11"}}]
execute if score @s voteshop matches 1 if score @s kevote_credits matches ..3 run tellraw @s [{"text":"[11] ","color":"yellow"},{"text":"1 Suspicious Sand","color":"gold"},{"text":" [Buy for 4 credits]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]
execute if score @s voteshop matches -11 if score @s kevote_credits matches 4.. run give @s minecraft:suspicious_sand{BlockEntityTag:{LootTable:"kilocraft:sus_blocks"}}
execute if score @s voteshop matches -11 if score @s kevote_credits matches 4.. run tellraw @s [{"text":"Purchased ", "color":"yellow"}, {"text":"1 Suspicious Sand","color":"gold"}, {"text":" from the vote shop!", "color":"yellow"}]
execute if score @s voteshop matches -11 if score @s kevote_credits matches ..3 run tellraw @s [{"text":"You don't have enough vote credits to purchase ","color":"red"},{"text":"1 Suspicious Sand","color":"gold"},{"text":"!","color":"red"}]
execute if score @s voteshop matches -11 if score @s kevote_credits matches 4.. run scoreboard players remove @s kevote_credits 4

execute if score @s voteshop matches 1 if score @s kevote_credits matches 4.. run tellraw @s [{"text":"[12] ","color":"yellow"},{"text":"1 Suspicious Gravel","color":"gold"},{"text":" [Buy for 4 credits]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger voteshop set -12"}}]
execute if score @s voteshop matches 1 if score @s kevote_credits matches ..3 run tellraw @s [{"text":"[12] ","color":"yellow"},{"text":"1 Suspicious Gravel","color":"gold"},{"text":" [Buy for 4 credits]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]
execute if score @s voteshop matches -12 if score @s kevote_credits matches 4.. run give @s minecraft:suspicious_gravel{BlockEntityTag:{LootTable:"kilocraft:sus_blocks"}}
execute if score @s voteshop matches -12 if score @s kevote_credits matches 4.. run tellraw @s [{"text":"Purchased ", "color":"yellow"}, {"text":"1 Suspicious Gravel","color":"gold"}, {"text":" from the vote shop!", "color":"yellow"}]
execute if score @s voteshop matches -12 if score @s kevote_credits matches ..3 run tellraw @s [{"text":"You don't have enough vote credits to purchase ","color":"red"},{"text":"1 Suspicious Gravel","color":"gold"},{"text":"!","color":"red"}]
execute if score @s voteshop matches -12 if score @s kevote_credits matches 4.. run scoreboard players remove @s kevote_credits 4

scoreboard players reset @s voteshop
scoreboard players enable @s voteshop