scoreboard players set @s kevote_total 0
function trigger:enable

tellraw @a ["",{"selector":"@s","color":"yellow"},{"text":" joined for the first time.","color":"yellow"}]

spawnpoint @s ~ ~ ~

#enable triggers
scoreboard players enable @s keutil_rankinfo
scoreboard players enable @s keutil_rules
scoreboard players enable @s kevote_voteshop
scoreboard players enable @s keutil_claimshop

#tp
clear @s
# tp @s 648 52 -34 150 -20
execute in kilocraft:mighty_highlands run tp @s -220.5 45.00 62.5 180 0
team join guest @s
#we use minecraft:gamemode here, because kiloessentials overrides /gamemode
minecraft:gamemode survival @s

#equip
# item entity @s armor.head minecraft:leather_helmet{display: {Name: "{\"text\":\"Starter Helmet\",\"color\":\"aqua\",\"italic\":\"false\"}"}}
# item entity @s armor.chest minecraft:leather_chestplate{display: {Name: "{\"text\":\"Starter Chestplate\",\"color\":\"aqua\",\"italic\":\"false\"}"}}
# item entity @s armor.legs minecraft:leather_leggings{display: {Name: "{\"text\":\"Starter Leggings\",\"color\":\"aqua\",\"italic\":\"false\"}"}}
# item entity @s armor.feet minecraft:leather_boots{display: {Name: "{\"text\":\"Starter Boots\",\"color\":\"aqua\",\"italic\":\"false\"}"}}
# item entity @s hotbar.0 stone_sword{Damage: 43s,display: {Name: "{\"text\":\"Starter Sword\",\"color\":\"dark_aqua\",\"italic\":\"false\"}"}}
item entity @s hotbar.0 replace stone_sword{display: {Name: '{"text":"Starter Sword","color":"#85D5F4","italic":false}'}}
item entity @s hotbar.1 replace stone_pickaxe{display: {Name: '{"text":"Starter Pickaxe","color":"#85D5F4","italic":false}'}}
item entity @s hotbar.2 replace stone_axe{display: {Name: '{"text":"Starter Axe","color":"#85D5F4","italic":false}'}}
item entity @s hotbar.3 replace stone_shovel{display: {Name: '{"text":"Starter Shovel","color":"#85D5F4","italic":"false"}'}}
item entity @s hotbar.8 replace bread{display: {Name: '{"text":"Starter Food","color":"#85D5F4","italic":"false"}'}} 16
item entity @s hotbar.5 replace minecraft:written_book{pages:['["",{"text":"     Ki","color":"#FF4e4e"},{"text":"loC","color":"#F19556"},{"text":"ra","color":"#D8DA63"},{"text":"ft G","color":"#9DE77E"},{"text":"uid","color":"#A7DADD"},{"text":"e","color":"#A8BDED"},{"text":"         --","color":"#FF4E4E"},{"text":"---","color":"#F19556"},{"text":"---","color":"#D8DA63"},{"text":"---","color":"#9DE77E"},{"text":"--","color":"#A7DADD"},{"text":"--","color":"#A8BDED"},{"text":"                               Hello! Welcome to KiloCraft! We are a snapshot survival server with many unique features.     We hope you enjoy being here ^-^                                                                 Please slide the page to continue        >>>>","color":"gray"}]','["",{"text":"     Content Pages      =-=-=-=-===-=-=-=-=                             ","color":"#909090"},{"text":">>Rules [Page 3]","clickEvent":{"action":"change_page","value":"3"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Go to Rules Page!","color":"#E3F454"}]},"color":"dark_red"},{"text":"        "},{"text":">>Basic Commands [Page 4-7]","clickEvent":{"action":"change_page","value":"4"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Go to Commands Page!","color":"#E3F454"}]},"color":"#7EB975"},{"text":"                                            "},{"text":">>Claiming [Page 8-9] ","clickEvent":{"action":"change_page","value":"8"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Go to Claiming Page!","color":"#E3F454"}]},"color":"#4B78AC"},{"text":">>Ranking Up [Page 10-11]","clickEvent":{"action":"change_page","value":"10"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Go to Ranking Up Page!","color":"#E3F454"}]},"color":"#D073BA"},{"text":"                                                 "},{"text":">>Player Reporting [Page 12-13]","clickEvent":{"action":"change_page","value":"12"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Go to Player Reporting Page!","color":"#E3F454"}]},"color":"#A79521"},{"text":"         "},{"text":">>Help Page [Page 14]","clickEvent":{"action":"change_page","value":"14"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Go to Help Page!","color":"#E3F454"}]},"color":"#79B66C"}]','["",{"text":"          Rules           =-=-=-=-===-=-=-=-=","color":"dark_red"},{"text":"                         Type ","color":"gray"},{"text":"/rules","underlined":"true","clickEvent":{"action":"run_command","value":"/rules"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to Perform!","color":"#E3F454"}]},"color":"dark_red"},{"text":" to list all of the available server rules,","color":"gray"},{"text":" \'I didn\'t know it was against the rules\' ","color":"dark_red"},{"text":"is not an excuse to exile your punishment so please read it for your own sake, and for us ^-^","color":"gray"}]','["",{"text":"    Basic Commands      =-=-=-=-===-=-=-=-=                        ","color":"#7EB975"},{"text":"/warp (name)","underlined":"true","clickEvent":{"action":"suggest_command","value":"/warp "},"color":"#7EB975"},{"text":" -> Teleports you to the directed warp   ","color":"gray"},{"text":"/warps","underlined":"true","clickEvent":{"action":"run_command","value":"/warps"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to Perform!","color":"#E3F454"}]},"color":"#7EB975"},{"text":" -> Lists all the available warps   ","color":"gray"},{"text":"/sethome (name)","underlined":"true","clickEvent":{"action":"suggest_command","value":"/sethome 1"},"color":"#7EB975"},{"text":" -> Sets your home teleport point        ","color":"gray"},{"text":"/home (name)","underlined":"true","clickEvent":{"action":"suggest_command","value":"/home "},"color":"#7EB975"},{"text":" -> Teleports you to your set home","color":"gray"}]','["",{"text":"/homes","underlined":"true","clickEvent":{"action":"run_command","value":"/homes"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to Perform!","color":"#E3F454"}]},"color":"#7EB975"},{"text":" -> Lists all the homes you have set                        ","color":"gray"},{"text":"/vote","underlined":"true","clickEvent":{"action":"run_command","value":"/vote"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to Perform!","color":"#E3F454"}]},"color":"#7EB975"},{"text":" -> Leads you to the links to vote the server       ","color":"gray"},{"text":"/voteshop","underlined":"true","clickEvent":{"action":"run_command","value":"/voteshop"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to Perform!","color":"#E3F454"}]},"color":"#7EB975"},{"text":" -> Opens the list of items sold in voteshop     ","color":"gray"},{"text":"/pwarps","underlined":"true","clickEvent":{"action":"run_command","value":"/pwarps"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to Perform!","color":"#E3F454"}]},"color":"#7EB975"},{"text":" -> Shows all the available playerwarps ingame    ","color":"gray"},{"text":"/pwarp teleport (name)","underlined":"true","clickEvent":{"action":"suggest_command","value":"/pwarp teleport "},"color":"#7EB975"},{"text":" -> Teleports...      ","color":"gray"}]','["",{"text":"you to the directed playerwarp               ","color":"gray"},{"text":"/rtp","underlined":"true","clickEvent":{"action":"run_command","value":"/rtp perform"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to Perform!","color":"#E3F454"}]},"color":"#7EB975"},{"text":" -> Teleports you to a random biome ","color":"gray"},{"text":"/tpa (player}","underlined":"true","clickEvent":{"action":"suggest_command","value":"/tpa "},"color":"#7EB975"},{"text":" -> Sends a teleportation request to a player   ","color":"gray"},{"text":"/discord","underlined":"true","clickEvent":{"action":"run_command","value":"/discord"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to Perform!","color":"#E3F454"}]},"color":"#7EB975"},{"text":" -> Leads you to our discord server link     ","color":"gray"},{"text":"/mobspawning","underlined":"true","clickEvent":{"action":"run_command","value":"/mobspawning"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to Perform!","color":"#E3F454"}]},"color":"#7EB975"},{"text":" -> Shows if the natural hostile mobspawning is turned on or not","color":"gray"}]','["",{"text":"/msg (player)","underlined":"true","clickEvent":{"action":"suggest_command","value":"/msg "},"color":"#7EB975"},{"text":" -> Sends a message to a player in private    ","color":"gray"},{"text":"/store","underlined":"true","clickEvent":{"action":"run_command","value":"/store"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to Perform!","color":"#E3F454"}]},"color":"#7EB975"},{"text":" -> Leads you to the link to our server store","color":"gray"}]','["",{"text":"         Claiming         =-=-=-=-===-=-=-=-=                         ","color":"#4B78AC"},{"text":"Claiming your build will protect your entire build and items from getting griefed and theft.                     ","color":"gray"},{"text":"/claim","underlined":"true","clickEvent":{"action":"run_command","value":"/claim"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to Perform!","color":"#E3F454"}]},"color":"#4B78AC"},{"text":" instructs the full procedure on how to claim your base. Do ","color":"gray"},{"text":"/claim help","underlined":"true","clickEvent":{"action":"run_command","value":"/claim help"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to Perform!","color":"#E3F454"}]},"color":"#4B78AC"},{"text":" for further information about land claiming                                         ","color":"gray"}]','["",{"text":"NOTE : Trust players who you really TRUST, Staffs are not responsible for any stolen goods ingame                                                      Therefore, please only trust those you are really close with, that is all we could ask and we appreciate your understandings","color":"#FF0000"}]','["",{"text":"       Ranking Up         =-=-=-=-===-=-=-=-=                        ","color":"#D073BA"},{"text":"There are numerous kinds of ranks in this server. You can obtain them by increasing your playtime and votes.                              Type ","color":"gray"},{"text":"/rankinfo","underlined":"true","clickEvent":{"action":"run_command","value":"/rankinfo"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to Perform!","color":"#E3F454"}]},"color":"#D073BA"},{"text":" for further details about server ranks","color":"gray"}]','[{"text":"To check your","color":"gray"},{"text":" playtime,","color":"gold"},{"text":" you can open the \'Tab\' list and look over the number besides your ign. That will be your playtime counted in minutes    ","color":"gray"},{"text":"                             As for ","color":"gray"},{"text":"votes,","color":"gold"},{"text":" voting on all 3 websites will give you 3 per day. /votes indicates how many times you have voted the entire time","color":"gray"}]','["",{"text":"  Reporting a Player  =-=-=-=-===-=-=-=-=                            ","color":"#A79521"},{"text":"If you ever see someone suspicious or is disobeying the server rules, you can report them by opening a report ticket on our discord                               To open one; go to our ","color":"gray"},{"text":"discord","underlined":"true","clickEvent":{"action":"run_command","value":"/discord"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to Perform!","color":"#E3F454"}]},"color":"blue"},{"text":" > scroll down...","color":"gray"}]','["",{"text":"the channels and find ","color":"gray"},{"text":"#open-a-ticket","color":"#3865CD"},{"text":" > Click it, then pick the reports one.          Explain everything there, you will be assisted by any available staffs there                              (If you could, try to take as many screenshots as possible as a proof of the player\'s action)","color":"gray"}]','["",{"text":"           Help           =-=-=-=-===-=-=-=-=                             If you ever have any questions to ask, feel free to ask us in #help on our discord, or you can do /helpop if a staff is online! We will gladly answer every questions you ask <3","color":"#79B66C"}]','["",{"text":"                                                                                                                                                                                                                                                                                             Written by scetto, representing all of the KiloCraft staff team (29/06/2020)","color":"#B1B1B1"}]'],title:"KiloCraft Guide",author:Server,display:{Name:'{"text":"KiloCraft Guide","color":"#85D5F4"}',Lore:['{"text":"A way to your fun adventure on KiloCraft :3","color":"blue"}']}} 1
item entity @s hotbar.7 replace golden_shovel{display:{Name:'[{"text":"Shovel of Claiming", "color": "#f5b514", "italic":false}]', Lore:['[{"text":"Left- / Rightclick to claim","color": "yellow", "italic":false}]']}} 1
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder weather @s ~ ~ ~ 1 1
#tellraw @s ["",{"text":"This server is currently running on 21w05b, because old worlds currently aren't compatible with the 21w06a snapshots. Make sure to join our ","color":"red"},{"text":"DISCORD","color":"blue","clickEvent":{"action":"open_url","value":"https://discord.gg/uzuQEe9"},"hoverEvent":{"action":"show_text","contents":{"text":"Click me!","color":"green"}}},{"text":" to get pinged once the new caves generate.","color":"red"}]

tag @s add kemain_hasjoined
