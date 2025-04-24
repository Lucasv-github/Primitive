#TODO nogravity here if needed

data merge entity @s[nbt={Item:{id:"minecraft:beef"}}] {Item:{id:cooked_beef,components:{}},NoGravity:1b}
data merge entity @s[nbt={Item:{id:"minecraft:porkchop"}}] {Item:{id:cooked_porkchop,components:{}},NoGravity:1b}
data merge entity @s[nbt={Item:{id:"minecraft:mutton"}}] {Item:{id:cooked_mutton,components:{}},NoGravity:1b}
data merge entity @s[nbt={Item:{id:"minecraft:chicken"}}] {Item:{id:cooked_chicken,components:{}},NoGravity:1b}
data merge entity @s[nbt={Item:{id:"minecraft:rabbit"}}] {Item:{id:cooked_rabbit,components:{}},NoGravity:1b}
data merge entity @s[nbt={Item:{id:"minecraft:salmon"}}] {Item:{id:cooked_salmon,components:{}},NoGravity:1b}
data merge entity @s[nbt={Item:{id:"minecraft:cod"}}] {Item:{id:cooked_cod,components:{}},NoGravity:1b}
data merge entity @s[nbt={Item:{id:"minecraft:potato"}}] {Item:{id:baked_potato,components:{}},NoGravity:1b}
data merge entity @s[nbt={Item:{id:"minecraft:carrot"}}] {Item:{id:carrot,components:{custom_name:[{"text":"Baked carrot","italic":false}],food:{nutrition:5,saturation:4}}}}
data merge entity @s[nbt={Item:{id:"minecraft:beetroot"}}] {Item:{id:beetroot,components:{custom_name:[{"text":"Baked beetroot","italic":false}],food:{nutrition:5,saturation:4}}}}

data merge entity @s[nbt={Item:{id:"minecraft:stick"}}] {Item:{id:bat_spawn_egg,components:{entity_data:{id:armor_stand,ShowArms:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Silent:1b,Tags:[placed_burning_stick]},"minecraft:item_model":"primitive_pack:burning_stick","minecraft:custom_name":["",{"text":"Burning stick","italic":false}],"minecraft:custom_data":{burning_stick:1,hot:1,temperature:100}}}}

data merge entity @s[nbt={Item:{id:"minecraft:raw_copper"}}] {Item:{id:iron_nugget,components:{"minecraft:custom_data":{copper_nugget:1,hot:1,temperature:500},custom_name:{"text":"Copper nugget","italic":false}}},NoGravity:1b}

#Need modify because we need to purge cured_brick
data modify entity @s[nbt={Item:{id:"minecraft:brick",components:{"minecraft:custom_data":{cured_brick:1}}}}] Item set value {id:brick,components:{"minecraft:custom_data":{fired_brick:1},custom_name:{"text":"Fired brick","italic":false}}}

data merge entity @s[nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{cured_pot:1}}}}] {Tags:["pot_broken"],Item:{id:bat_spawn_egg,components:{max_stack_size:1,entity_data:{id:armor_stand,ShowArms:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Silent:1b,Tags:[placed_fired_pot]},"minecraft:item_model":"minecraft:decorated_pot","minecraft:custom_name":["",{"text":"Fired pot","italic":false}],"minecraft:custom_data":{fired_pot:1},"minecraft:attribute_modifiers":[]}},NoGravity:1b}

tag @s add cooked