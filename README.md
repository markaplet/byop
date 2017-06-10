# Parkour MCFunctions

Functions are brand new to Minecraft 1.12 and replace much of the previous need for command blocks. I created the original Parkour System for MC v1.10 then later 1.11 so naturally I had to update for 1.12 as well. 

I created this module because I like parkour maps, but get annoyed when I have to restart the entire level when I failed to make a jump. I wanted a system that would teleport my player back to the location of last successful jump. 

With so many parkour maps available for download, I decided to make it work with most maps, then added some additional features to make a whole parkour system out of it. 

## Build Your Own Parkour (BYOP) System

This collection of functions does not build a parkour course structure for you. I guess you can say it's a BYOP (Build Your Own Parkour) system. Hence the name... Here is what it does: 

* Provides a multiplayer scoring system
* Adds checkpoint system when players make a successful jump
* Teleportation of player on failed jumps
* Reset level mechanic should players get stuck for any reason
* Uses spawn eggs to mark the start and end points of the map
* Uses spawn eggs to mark effect areas (Jump, Speed, Blindness)
* Optionally apply common player buffs to prevent damage to players or map (regeneration, weakness, etc)
* It works well with most downloadable parkour maps
* Can be used with any parkour map with slight modifications
* Functions to completly uninstall system from world
* No command blocks needed

## Game Setup

It seems that the currently popular trend in parkour is in a void world. While dropping players into the void is fun when it's not you being dropped into the void, it's less fun for players. This parkour system uses the `minecraft:barrier` block as a replacement for the void. When players fall from the course they land on the barrier block where they are teleported back to their last successful jump location. It's quick, it's painless, and more fun than spamming the respawn button.  

### Custom Flat world

Since this system relies on the barrier block, it is recommend that you set up a new flat world with the following preset: **3;minecraft:barrier;127;** This will generate a flat world with only one layer of barrier blocks, thus giving you maximum build height and a foundation for which to build on without much effort.

### Installation

Download the byop functions and drop the `byop` folder into your world save folder under `[worldname]/data/functions/` It is important that the folder name be correct or the commands will not run. 

Some commands will only run for players tagged as an Admin. This prevents all players from receiving messages and course building eggs. To give yourself admin access, type the following command into chat:

`/scoreboard players tag [PlayerName] add Admin`

In your world type the following command into chat. `/reload` to make sure BYOP is recognized by Minecraft.

To install BYOP type `/function byop:start`  into chat. The start function will initialize all the scoreboards needed to track players and start running the main game loop. 

### Function Commands

`/function byop:reset` removes all course markers allowing you to start fresh.

`/function byop:remove` Removes the BYOP parkour system completly from your world and sets gamerules back to the defaults.

`/function byop:help` Displays the in game help

`/function byop:markers_give` Gives the spawn eggs that generate the markers


### Constructing your course

The only rule to building a course is to ensure that any areas that players fall from contain barrier blocks below. Players do not have to fall on the 1 block layer as the floor of the world. You are free to build however you want. A void world is not required. The only requirement is that in order to teleport a player, they must land on a barrier block.

### Set Course Markers

When initialized, the game will give players tagged with *Admin* spawn eggs used for setting the start of the course, the end of the course, as well as a handfull of effects like jump boost, speed, or blindness. Use them at the appropriate locations to set the your course how you want.  


### Carrot on a stick

If for any reason a player wishes to return to the beginnig of the course and start over, for example they may want to improve their score, or they are stuck for any reason, right clicking with the carrot on a stick will return the player to the position marked as the start of the course.

## Updates

My plan for this tool is to update it with additional functionality and bug fixes as time and interest allows. So what is in store for future versions?

* Timer mode. Allows players to race against a clock
* Multi Course Support
* ~~Bonus effects mode~~. Different blocks produce different buffs like speed/jump boost
* ~~Course builder tools~~. Allows map makers to add special effects to blocks like moving platforms, launchers, bouncers, and wall run to name a few popular features requested.

## Known Issues

The following are considered known issues and I am working on solutions. They were not IMO show stopping issues.

* Occasionally players will fall in an endless loop and forced to reset to the start of the course using the carrot on a stick.
* Occasionally the teleportation command will select the incorrect armor stand for the player and their position may be further back than they expected.
* If players render distance is set too short, for the course, they cannot teleport back to the start of the course. This is caused when the armor stand for the start of the course gets unloaded. The solution is to keep the course contained to a reasonable distance from the start of the course.

## Credit

Give credit where credit is due:

* [nigathan](http://www.minecraftforum.net/members/nigathan) - For help with player checkpoint logic.
