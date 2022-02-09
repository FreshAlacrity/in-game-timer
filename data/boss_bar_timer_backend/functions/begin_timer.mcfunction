# tell the on_tick function to count down ticks
scoreboard players set running pom.time 1

# reset the clock
execute store result score remaining pom.time run scoreboard players get max pom.time

# configure the end dings to do exactly three #todo
scoreboard players add dings_num pom.time 1
scoreboard players operation heads_up_time pom.time = sounds_rate pom.time
scoreboard players operation heads_up_time pom.time *= dings_num pom.time
scoreboard players remove heads_up_time pom.time 2
scoreboard players remove dings_num pom.time 1

# update bossbar max (in case it changed) and show it
execute store result bossbar pom:time max run scoreboard players get max pom.time

# show the bossbar (goes only to players who haven't disabled it)
bossbar set pom:time visible true
