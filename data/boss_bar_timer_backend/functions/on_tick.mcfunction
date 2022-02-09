#later check if the bossbar has been overridden by something else (like an actual boss fight) and pause if so?

# reduces the remaining duration if the pom is running
execute if score running pom.time matches 1 run scoreboard players remove remaining pom.time 1

# sound timing
execute if score running pom.time matches 1 run scoreboard players add nth pom.time 1
execute if score nth pom.time >= sounds_rate pom.time run function boss_bar_timer_backend:ding
execute if score nth pom.time >= sounds_rate pom.time run scoreboard players set nth pom.time 1

# activate options that may have been used
scoreboard players enable @a pom.no_dinging
scoreboard players enable @a pom.no_bossbar
scoreboard players enable @a pom.hears_ticking
scoreboard players enable @a pom.sees_splash
scoreboard players enable @a pom.collecting_reward
scoreboard players enable @a pom.pomodoro_club

# makes sure the only players seeing the bossbar are the ones who want to
scoreboard players add @a pom.no_bossbar 0
bossbar set pom:time players @a[scores={pom.no_bossbar=0, pom.pomodoro_club=1}]

# displays the duration on the bossbar
execute store result bossbar pom:time value run scoreboard players get remaining pom.time

# displays a heads-up message and sounds for when the pom is ending soon
execute if score remaining pom.time = heads_up_time pom.time run function boss_bar_timer_backend:ending_soon

# ends the pomodoro if the time has elapsed
execute if score remaining pom.time matches ..0 run function boss_bar_timer_backend:completed

#/function boss_bar_timer_backend:reward
execute as @a[scores={pom.rewards=1..,pom.collecting_reward=1}] run function boss_bar_timer_backend:give_reward
