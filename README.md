
![Airdrop](https://user-images.githubusercontent.com/99494967/234674119-17976c16-517c-481a-ba35-4e92b297aa99.png)


This is a fairly simple script, you use one out of three phone items and a plane will fly over your position and drop a crate with whatever loot you've set in the Config. This is originally cad-gundrop (linked below), but has been edited, for a server I'm working on, to fully sync the crate amongst all players, include a Global Cooldown (so airdrops can't be spammed) and Polyzone creation around the drop area, to notify people of the Redzone when entering. 

If you want to support me and what I do, you can check me out @ https://discord.gg/samueldev / https://fivem.samueldev.shop

# Dependencies:
* qb-core (latest)
* qb-target
* PolyZone

# How to Install
- Add the images in the folder to your inventory
- Add the below items to qb-core/shared/items.lua

```lua
["goldenphone"]  = {["name"] = "goldenphone", ["label"] = "Golden Satellite Phone",	 ["weight"] = 200, 		["type"] = "item", 		["image"] = "goldenphone.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A communication device used to contact russian mafia."},

["redphone"]     = {["name"] = "redphone",    ["label"] = "Red Satellite Phone",	 ["weight"] = 200, 		["type"] = "item", 		["image"] = "redphone.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A communication device used to contact russian mafia."},

["greenphone"] 	 = {["name"] = "greenphone",  ["label"] = "Green Satellite Phone",	 ["weight"] = 200, 		["type"] = "item", 		["image"] = "greenphone.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A communication device used to contact russian mafia."},
```

# Credits
(Original Author) cadburry6969 - https://github.com/cadburry6969/cad-gundrop
