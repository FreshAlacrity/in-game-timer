
# show a big splash message to people who have opted in
title @p[scores={pom.sees_splash=1, pom.pomodoro_club=1}] title {"text":"Pomodoro Complete!", "bold":false, "italic":false, "color":"white"}

# add an available reward for all participating players
scoreboard players add @p[scores={pom.pomodoro_club=1}] pom.rewards 1

# let participating folks know they have a reward they can pick up
tellraw @p[scores={pom.pomodoro_club=1}] [{"text":"Pomodoro Completed!  ", "color":"white"}, {"text":"[collect reward]", "color":"green", "hoverEvent":{"action":"show_text","value":[{"text":"Collect the reward loot for completing a pomodoro unit!","color":"green"}]}, "clickEvent":{"action":"run_command", "value":"/trigger pom.collecting_reward set 1"}}]

# restart the timer but without the start message from pom:start
function boss_bar_timer_backend:begin_timer


#todo check if titles can also contain clickable functions (like 'collect reward') or clearing the title XD