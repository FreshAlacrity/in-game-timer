# if the person who started the timer wasn't part of the session, auto-join them
scoreboard players set @p[limit=1,sort=nearest] pom.pomodoro_club 1

# begin the timer
function boss_bar_timer_backend:begin_timer

# give the player some basic options
tellraw @a[scores={pom.pomodoro_club=1}] [{"text":"New Pomodoro Started!  ", "color":"green"}, {"text":"[pause] ", "color":"yellow", "hoverEvent":{"action":"show_text","value":[{"text":"Pause the current pomodoro unit","color":"yellow"}]}, "clickEvent":{"action":"run_command", "value":"/function pom:pause"}}, {"text":"[end] ", "color":"red", "hoverEvent":{"action":"show_text","value":[{"text":"End your pomodoro unit here","color":"red"}]}, "clickEvent":{"action":"run_command", "value":"/function pom:end"}}, {"text":"[[more options]] ", "color":"gray", "hoverEvent":{"action":"show_text","value":[{"text":"Player specific settings options for sound and display","color":"white"}]}, "clickEvent":{"action":"run_command", "value":"/function pom:more_options"}}]

#todo add config option to run once vs continually