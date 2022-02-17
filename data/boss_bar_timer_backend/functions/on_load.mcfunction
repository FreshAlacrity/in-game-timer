# set up the scoreboard by adding pom.time if it doesn't exist
scoreboard objectives add pom.time dummy
scoreboard objectives add pom.rewards dummy
scoreboard objectives add pom.collecting_reward trigger
scoreboard objectives add pom.no_dinging trigger
scoreboard objectives add pom.no_bossbar trigger
scoreboard objectives add pom.hears_ticking trigger
scoreboard objectives add pom.sees_splash trigger
scoreboard objectives add pom.pomodoro_club trigger

# put this in its own function
# if a maximum value hasn't bet set or isn't valid, set it to 25 minutes
execute unless score max pom.time matches 5000..180000 run scoreboard players set max pom.time 30000
execute unless score sounds_rate pom.time matches 5..200 run scoreboard players set sounds_rate pom.time 21
execute unless score sounds_rate pom.time matches 0..10 run scoreboard players set dings_num pom.time 3

# add some UI gloss
bossbar add pom:time "Pomodoro Timer"
bossbar set pom:time color green


function pom:options
