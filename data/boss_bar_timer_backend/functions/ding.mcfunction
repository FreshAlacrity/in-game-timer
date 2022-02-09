# make a cute ding
scoreboard players add @a pom.no_dinging 0
execute if score remaining pom.time < heads_up_time pom.time at @a[scores={pom.no_dinging=0, pom.pomodoro_club=1}] run playsound minecraft:block.amethyst_cluster.break master @p ~ ~ ~ 1 2

execute if score remaining pom.time > heads_up_time pom.time at @a[scores={pom.hears_ticking=1, pom.pomodoro_club=1}] run playsound block.bamboo.break master @p ~ ~ ~ 0.3 0.5

#later have it be configurable who gets dinged/option for players to set score of pom.silent to 1 to prevent dings
