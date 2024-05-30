#commands that run every tick
#/data merge entity @e[type=minecraft:wandering_trader,limit=1] {DespawnDelay:1}

execute as @e[type=wandering_trader,tag=!.tradechanged] run function wanderers_courtesy:change_trades

#execute as @e[type=wandering_trader,nbt={DespawnDelay:1}] at @s run summon item ~ ~ ~ {Age:3600,Item:{id:"minecraft:bundle",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:emerald",count:2}]}}}
execute as @e[type=#wanderers_courtesy:trader,nbt={DespawnDelay:1}] at @s run function wanderers_courtesy:gift
