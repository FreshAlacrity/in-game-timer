#show clickable options for start and end and also how to change the pom length, plus maybe a thank you/explanation for how it works and why there's no breaks built in?

#todo change the text to say stop if running and resume if paused
tellraw @p[limit=1,sort=nearest] [{"text":"\nBoss Bar Pomodoro: ", "color":"gray"}, {"text":"[start] ", "color":"green", "hoverEvent":{"action":"show_text","value":[{"text":"Begin a new pomodoro unit!","color":"green"}]}, "clickEvent":{"action":"run_command", "value":"/function pom:start"}}, {"text":"[pause] ", "color":"yellow", "hoverEvent":{"action":"show_text","value":[{"text":"Pause the current pomodoro unit","color":"yellow"}]}, "clickEvent":{"action":"run_command", "value":"/function pom:pause"}}, {"text":"[end] ", "color":"red", "hoverEvent":{"action":"show_text","value":[{"text":"End the current pomodoro unit","color":"green"}]}, "clickEvent":{"action":"run_command", "value":"/function pom:end"}}, {"text":"[[more]] ", "color":"gray", "hoverEvent":{"action":"show_text","value":[{"text":"Player specific settings options for sound and display","color":"white"}]}, "clickEvent":{"action":"run_command", "value":"/function pom:more_options"}}]

#todo add an option for whether the player sees a big visible splash
#todo add a score showing the number of minutes per pom and an option to change it

#add show/hide debug?