# Docs
## SetGetKey
``SetGetKey defines a function to be fired after player click in get key button inside the ui``
### Example
```lua
Window:SetGetKey(function()
    setclipboard("https://getkeylink.com")
    print("Get key clicked!")
end)
```
## SetCheckKey
``SetCheckKey defines a function with 1 arg, It is fired when someone clicks in Check Key Button and the ui uses function(current key in textbox)``
### Example
```lua
Window:SetCheckKey(function(Key)
    print("Check Key Button fired with the key:".. Key)
end)
```
# PRE-INFO
``when window is created it comes with some informations like HubName and Discord``
## Discord Path
```lua
WindowProperties.Discord
```
### Description
``retuns discord link in the userscript``
# FileSystem/Data
``Data is the manager you use for save instances of the User``
## Setting Up
### Outside the Window(in start of code)
```lua
if not isfolder("Pelinda Data") then
    makefolder("Pelinda Data")
end
```
### Inside the Window
```lua
if not isfolder("Pelinda Data/" .. Properties.Data.HubName) then
    makefolder("Pelinda Data/" .. Properties.Data.HubName)
end
```
## Paths
### Key
```lua
"Pelinda Data/HubName/Key.txt"
```
