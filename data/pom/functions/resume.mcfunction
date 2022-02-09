# show the bossbar (goes only to players who haven't disabled it)
# this is in case another bossbar was present, I think that might toggle this setting
bossbar set pom:time visible true

# tell the on_tick function to resume counting down ticks
scoreboard players set running pom.time 1