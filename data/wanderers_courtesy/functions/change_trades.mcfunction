# changes the wandering traders trades

## generates numbers
execute store result score .trade -wanderingtrades run random value 1..4


# water = 1
execute as @e[type=minecraft:wandering_trader,tag=!.tradechanged] if score .trade -wanderingtrades matches 1 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:potion",count:1b,tag:{Potion:"minecraft:water"}},sell:{id:"minecraft:emerald",count:1b}}

# pie = 2
execute as @e[type=minecraft:wandering_trader,tag=!.tradechanged] if score .trade -wanderingtrades matches 2 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:pumpkin_pie",count:1},sell:{id:"minecraft:emerald",count:2}}

# haybale = 3
execute as @e[type=minecraft:wandering_trader,tag=!.tradechanged] if score .trade -wanderingtrades matches 3 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:hay_block",count:1},sell:{id:"minecraft:emerald",count:1}}

# milk = 4
execute as @e[type=minecraft:wandering_trader,tag=!.tradechanged] if score .trade -wanderingtrades matches 4 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:milk_bucket",count:1},sell:{id:"minecraft:emerald",count:2}}

## adds tag
execute as @s run tag @s add .tradechanged
