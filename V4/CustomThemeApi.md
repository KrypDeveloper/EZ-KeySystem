# EZKeySystem API

## DiscordInvite(OPTIONAL)
```lua
tabela.Discord
```
## PandaAuth(OPTIONAL)
```lua
local PandaAuth = tabela.PandaAuth
```
## HubName(REQUIRED)
```lua
tabela.HubName
```
## HubService(REQUIRED)
```lua
tabela.Service
```
## CustomTextBoxMessage(OPTIONAL)
```lua
tabela.CustomTextBoxMessage
```
# KEYLESS SETTINGS
## Loop Keyless
```lua
while tabela.KeylessSettings.LoopKeyless.Active do
--USE CHECK KEY HERE
end
```
## Interval
```lua
wait(tabela.KeylessSettings.LoopKeyless.Interval)
```
## CorrectHWID Message(OPTIONAL)
```lua
print(tabela.KeylessSettings.CorrectHWID)
```
## IncorrectHWID message(OPTIONAL)
```lua
print(tabela.KeylessSettings.IncorrectHWID)
```
## PremiumEnabled(OPTIONAL)
```lua
if tabela.KeylessSettings.PremiumEnabled == true then
--Premium Script Logic Here
end
```
## Save Premium Key
```lua
if tabela.KeylessSettings.SavePremium == true then
  writefile(tabela.HubName.. " KeySystem", KeyHere)
```
## Execute NormalScript
```lua
tabela.NormalScript()
```
## Execute PremiumScript
```lua
if tabela.KeylessSettings.PremiumEnabled == true then
  tabela.PremiumScript()
  if tabela.KeylessSettings.SavePremium == true then
  writefile(tabela.HubName.. " KeySystem.txt")
  end
end
```
