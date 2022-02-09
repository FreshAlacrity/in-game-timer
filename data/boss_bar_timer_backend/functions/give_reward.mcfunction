#later check if titles can contain clickable functions (like 'collect reward')

#todo see if I can add in a pom.poms_completed score multiplier per-player here to increase rewards
experience add @s 10 points
execute at @a[scores={pom.rewards=1..}] run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 1 2
scoreboard players remove @s pom.rewards 1

execute if score @s pom.rewards matches ..0 run title @s title {"text":"Reward Collected!", "bold":false, "italic":false, "color":"green"}
execute if score @s pom.rewards matches ..0 run scoreboard players set @s pom.collecting_reward 0
#todo say what the reward was as a subtitle
#title @s subtitle {"text":"Experience, woo!", "bold":false, "italic":false, "color":"green"}




