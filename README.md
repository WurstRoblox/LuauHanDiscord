# LuauHanDiscord
LuauHanDiscord is a Luau Handicapped Discord wrapper
## No Secret Documentation
### Setup
To setup the wrapper start your code with:     
```lua
local wrapper = loadstring(game:HttpGet("https://github.com/WurstRoblox/LuauHanDiscord/raw/main/wrapper.lua"))()
```
### Send message
To send a message do this:     
```lua
wrapper:send("channel id", "message", "bot token")
```
## With Secret Documentation
### Setup
To setup the wrapper start your code with:     
```lua
local wrapper = loadstring(game:HttpGet("https://github.com/WurstRoblox/LuauHanDiscord/raw/main/wrapper.lua"))()
wrapper:Connect("token", "your secret")
```      
In this part, you can make your secret key whatever, you will use this later on.     
Make sure your secret is not distributed, as anyone can find your token using your secret.
### Send message
To send a message do this:     
```lua
wrapper:s_send("channel id", "message", "your secret")
```