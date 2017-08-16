# Helicopter Game
* Low res game for https://itch.io/jam/lowrezjam2017
* Uses pico-8 - https://www.lexaloffle.com/pico-8.php

## Versions
We're using sematic versioning - http://semver.org/

### 0.0.16
* collision performance improvement
* score position tweak
* more directions for random tanks
### 0.0.15
* buildings return to map on reset
### 0.0.14
* dynamic building enting
* ring buffer for buildings
### 0.0.13
* Fixed Twitchy sprites
* Added rocket turret sprite
* More level art
* Tweaked missile speed
* HUD Cleanup

### 0.0.12 rocket tanks
* added rocket tanks
* added heat mechanic
### 0.0.11 boats
* boats
* bug fixes
* variable speed bullets
### 0.0.10 Items
* spawn items on the map
* items can be picked up
* occasionally spawn items when tanks explode
### 0.0.9 Rough Gameplay
* Arted 70% of island
* Player Health\Enemy Health
* Respawn when killed
* Spawning of enemies around flags (tanks only)
* fixed bug with missiles colliding with wrong entities (abs on dist2 checks)
* Still seems buggy... there are explosions off screen

### 0.0.8 spawning tanks at flags
* added flags
* spawn a tank at each flag
### 0.0.7 refactoring projectile code
* merged rockets and bullets into projectiles
### 0.0.6 Explosions and Terrain Updates
* Reordered rocket tiles to match rest of sprite orders
* Added Explosions
* Don't explode and catch fire if missiles hit water
* Added some more roads\rivers
* Added Tent Sprite
* Added Grass Sprites and extra road pieces
### 0.0.5 direction and entity code
* refactored direction code
* added turret drawing
* added direction test code
* TODO: switch rocket sprites to tank orientation order
### 0.0.4 Tweaks to animations
* added explosion sprites, fire sprites, crows nest
* removed unused tiles
* reorganised rotorblade and removed blank sprites (if we want to slow the blades later we can do so in code)
### 0.0.3 abznak - major refactoring
* refactoring
### 0.0.2 abznak - added readme
* added readme
### 0.0.1 gorebang - basic graphics and user movement
* basic island map
* helicopter moves and sprite displays in 8 directions
* bullets and missles fire
* limited bullets and missles
