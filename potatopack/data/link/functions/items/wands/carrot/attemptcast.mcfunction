#Attempts to cast the wand based on the cooldown

#failure condition
scoreboard players set temp temp 1
execute store result score temp temp run clear @s carrot 1
execute unless score temp temp matches 1.. run playsound minecraft:block.note_block.didgeridoo record @s ~ ~ ~ 1 0.5
execute unless score temp temp matches 1.. run title @s actionbar {"text":"Bruh. You need ammo for that.","color":"red","italic":false}

#success condition
execute if score temp temp matches 1.. run function link:items/wands/carrot/cast
