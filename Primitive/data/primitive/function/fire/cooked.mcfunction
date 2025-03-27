execute at @s[nbt={Item:{id:"minecraft:beef",count:1}}] run summon item ~ ~ ~ {Item:{id:cooked_beef,count:1,components:{}},NoGravity:1b}
execute at @s[nbt={Item:{id:"minecraft:porkchop",count:1}}] run summon item ~ ~ ~ {Item:{id:cooked_porkchop,count:1,components:{}},NoGravity:1b}
execute at @s[nbt={Item:{id:"minecraft:mutton",count:1}}] run summon item ~ ~ ~ {Item:{id:cooked_mutton,count:1,components:{}},NoGravity:1b}
execute at @s[nbt={Item:{id:"minecraft:chicken",count:1}}] run summon item ~ ~ ~ {Item:{id:cooked_chicken,count:1,components:{}},NoGravity:1b}
execute at @s[nbt={Item:{id:"minecraft:rabbit",count:1}}] run summon item ~ ~ ~ {Item:{id:cooked_rabbit,count:1,components:{}},NoGravity:1b}
execute at @s[nbt={Item:{id:"minecraft:salmon",count:1}}] run summon item ~ ~ ~ {Item:{id:cooked_salmon,count:1,components:{}},NoGravity:1b}
execute at @s[nbt={Item:{id:"minecraft:cod",count:1}}] run summon item ~ ~ ~ {Item:{id:cooked_cod,count:1,components:{}},NoGravity:1b}

execute at @s[nbt={Item:{id:"minecraft:stick",count:1}}] run summon item ~ ~ ~ {Item:{id:torch,count:1,components:{custom_data:{hot:1b},custom_name:{"text":"Burning stick","italic":false}}},NoGravity:1b}
kill @s