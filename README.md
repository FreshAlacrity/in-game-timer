# in-game-timer
This datapack adds a global pomodoro timer to your Minecraft game. Pomodoro timers are a 25 minute focus sessions, with breaks in between that help with maintaining focus and concentration over time and keep activities from getting draining. Based loosely on [the Pomodoro Technique by Francesco Cirillo](https://francescocirillo.com/pages/pomodoro-technique), but also generally just to have a reminder to stand up and move around/refill water etc.

The pack includes an easy per-player settings menu available to all users (even non-OP players) about whether they would like to see/hear/be notified of timer events. There's also a small XP reward given to players for participating in a focus session when it completes that can be stockpiled and then claimed when you want it.

Note: This datapack may not work correctly if another pack (or actual boss battle) is using the boss bar while a timer is ongoing.

This pack has an MIT License - feel free to remix and such, I'd be happy to hear about what you make!

Todo:
- add a break timer with a different colored bar (magenta?)
- make a way for non-op people running the pack on their own to start a timer (trigger start_requests?)
- make an option to broadcast an invitation for other players to join your pom, like `[invite]`
- make it more visible in all the options menu settions what the current settings are/have those be more responsive
  - breaking up each line of the settings into a separate helper function would make this easier, so that first!
- set all OP function buttons to say they require OP in the hover text
  - alternatively, make it so no settings require OP
- add in a conditional execution to handle the case when a player goes to start a pomodoro and isn't part of the club and there's already a timer running (let them, know they're in the club now and there's a timer running, but that they can now press start again to reset the clock)
- move this readme up with the pack.mcmeta and update the mcmeta file
- collect up any other stray todos to move here or the list below
- fix the gamerule sendCommandFeedback thing so it's not always false
- optionally broadcast when a pom starts and include a [join] option
- almost finished text should have options [cancel] [restart] [[more]]? at least different from what it is now

*Let me know if you have any feedback! You can reach me by email at inserviceofinsight@gmail.com*

Things I'm considering adding if people want:
- tracking the number of poms completed and making the rewards better as that goes up
- second timer duration for breaks
- options for different ticking sounds (and playing them when they are selected)
- options and/or example code for different types of rewards
- more anti-griefing protections/being able to set who can end/restart the timer
  - for example, only OP or only the person who started the session or only people who meet a score condition
- having rewards decay over time so afk players don't accumulate lots of them
- add a scoreboard value for the number of minutes per pom
- scoreboard option to run once vs continually
- separate Operator Options
  - setting for making the timer longer or shorter
  - setting for continuous running vs needing to be reset
  - show/hide debug scoreboard
  - options to show the scoreboards for rewards etc.
  - tips on how to set who can edit the timer once it's started (and whether that's an allow or don't allow list)
    - for example, allow editing by everyone by default or only person who starts by default, with OP powers to change the score values of other people manually