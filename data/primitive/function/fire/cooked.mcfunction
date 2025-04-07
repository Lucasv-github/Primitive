execute at @s[nbt={Item:{id:"minecraft:beef",count:1}}] run summon item ~ ~ ~ {Item:{id:cooked_beef,count:1,components:{}},NoGravity:1b}
execute at @s[nbt={Item:{id:"minecraft:porkchop",count:1}}] run summon item ~ ~ ~ {Item:{id:cooked_porkchop,count:1,components:{}},NoGravity:1b}
execute at @s[nbt={Item:{id:"minecraft:mutton",count:1}}] run summon item ~ ~ ~ {Item:{id:cooked_mutton,count:1,components:{}},NoGravity:1b}
execute at @s[nbt={Item:{id:"minecraft:chicken",count:1}}] run summon item ~ ~ ~ {Item:{id:cooked_chicken,count:1,components:{}},NoGravity:1b}
execute at @s[nbt={Item:{id:"minecraft:rabbit",count:1}}] run summon item ~ ~ ~ {Item:{id:cooked_rabbit,count:1,components:{}},NoGravity:1b}
execute at @s[nbt={Item:{id:"minecraft:salmon",count:1}}] run summon item ~ ~ ~ {Item:{id:cooked_salmon,count:1,components:{}},NoGravity:1b}
execute at @s[nbt={Item:{id:"minecraft:cod",count:1}}] run summon item ~ ~ ~ {Item:{id:cooked_cod,count:1,components:{}},NoGravity:1b}

execute at @s[nbt={Item:{id:"minecraft:stick",count:1}}] run summon item ~ ~ ~ {Item:{id:torch,count:1,components:{custom_data:{hot:1b},custom_name:{"text":"Burning stick","italic":false}}},NoGravity:1b}

execute at @s[nbt={Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{cured_pot:1}}}}] run summon item ~ ~ ~ {Tags:["pot_broken"],Item:{id:bat_spawn_egg,count:1,components:{entity_data:{id:armor_stand,ShowArms:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Silent:1b,Tags:[placed_fired_pot]},item_model:"minecraft:decorated_pot",item_model:"minecraft:decorated_pot",custom_name:["",{"text":"Fired pot","italic":false}],custom_data:{fired_pot:1}}}}

kill @s