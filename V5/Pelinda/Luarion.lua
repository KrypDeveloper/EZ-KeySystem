local Type = "Key"
local UI = "MaggixV2"
local HubName = "Quasar Hub"
local Service = "quasar";
local KeySys = loadstring(game:HttpGet("https://raw.githubusercontent.com/KrypDeveloper/EZ-KeySystem/main/V5/UIS/" .. Type .. "/" .. UI .. ".lua"))()

local LAL = nil
local script = function() warn("Loaded") end

do
	local VersionDirectory = "VASL-Version.lua"
	local SourceDirectory = "VASL.lua"

	local service = setmetatable({}, {
		__index = function(self, key)
			return (cloneref or function(...) return ... end)(game.GetService(game, key))
		end;
	})

	local HttpService = service.HttpService

	local success, ReleaseInfo = pcall(HttpService.JSONDecode, HttpService, game:HttpGet("https://api.github.com/repos/Hosvile/Luarion/releases", false))

	if success and ReleaseInfo and readfile and writefile then
		ReleaseInfo = ReleaseInfo[1]

		local success, result = pcall(readfile, VersionDirectory)
		
		if not (success and tostring(ReleaseInfo.assets[1].updated_at) == result) then
			warn("LOADED FRESH VASL.")

			local Source = game:HttpGet("https://github.com/Hosvile/Luarion/releases/latest/download/release.lua", false)

			LAL = (loadstring or load)(Source, "VASL")(...)(...)

			writefile(VersionDirectory, tostring(ReleaseInfo.assets[1].updated_at))
			writefile(SourceDirectory, tostring(Source))
		else
			local success, result = pcall(readfile, SourceDirectory)

			if success and result then
				warn("LOADED CACHE VASL.")

				LAL = (loadstring or load)(result, "VASL")(...)(...)
			end
		end
	end

	if not LAL then
		LAL = (loadstring or load)(game:HttpGet("https://github.com/Hosvile/Luarion/releases/latest/download/release.lua", false), "VASL")(...)(...)
	end
end

LAL.ConsoleLog = true; -- SET TO FALSE TO GET RID OF LOGS
LAL.Service = Service; -- YOUR SERVICE IDENTIFIER
LAL.HWID = nil; -- CHANGE IF YOU WANT TO USE A DIFFERENT HWID
LAL.Status = {} -- CONSTANT DO NOT CHANGE
LAL.StatusObject = {} -- CONSTANT DO NOT CHANGE

local function Validate(key)
	local Status, StatusObject, Validate, Message = LAL:Validate(key)
	
	local Metatable = getmetatable(StatusObject) -- REQUIRED FOR THE IF STATEMENT
	
	if (Metatable ~= false) and (Status and StatusObject) and pcall(function() 
		if(Status and StatusObject)and(Validate==LAL.Validate and Metatable==getmetatable(StatusObject)and Status and StatusObject and not(StatusObject[-1]==Metatable)and not(LAL.Status==Status)and(StatusObject[-1]==Metatable)and not(LAL.StatusObject==StatusObject)and(StatusObject[-1]==StatusObject)and(StatusObject[-1]==nil)and(StatusObject==StatusObject)and(Status==StatusObject)and not(StatusObject==StatusObject)and StatusObject[-1]==Status.Key and not(#StatusObject==#StatusObject)and not(StatusObject[-1]==LAL)and not(Status==StatusObject)and not(StatusObject[-1]==LAL)and rawequal(StatusObject[-1],LAL)and not(StatusObject[-1]==LAL)and StatusObject(Status)and not(getmetatable(Status))and StatusObject[-1](Status)and(StatusObject==Status)and StatusObject[-1]==Status.UserId*47 and Status(Status)and not StatusObject[-0]and(StatusObject==Status)and(StatusObject[-0]==LAL.Validate)and not(Metatable==StatusObject[-1])and(StatusObject==Status)and not StatusObject[-0]and Status(Status)and not(Metatable==StatusObject[-1])and not(StatusObject==Status)and StatusObject(Status)and(StatusObject[-1]~=Status.UserId*24)and(Status==StatusObject)and StatusObject(Status)and not(getmetatable(Status))and StatusObject[-1](Status)and Status(Status)and(StatusObject[-1]==LAL.Service)and not(StatusObject==StatusObject)and not(StatusObject[-1]==nil)and Metatable~=getmetatable(StatusObject)and(StatusObject==Status)and(StatusObject[-0]==StatusObject.UserId and StatusObject[-1]==StatusObject.UserId*33)and not(Status==StatusObject and StatusObject[-1]==StatusObject.UserId)and not(StatusObject.Key==StatusObject.UserId*22)and not rawequal(StatusObject,Status)and not(getmetatable(LAL)==Status or StatusObject==nil)and(StatusObject[-1]==Status.UserId*33)and not(StatusObject==Status.UserId*50)and not rawequal(StatusObject[-1],StatusObject.Key)and(StatusObject==Status)and not(StatusObject.Key==Status.UserId)and not(rawequal(getmetatable(StatusObject),Metatable)and StatusObject[-1]~=nil)and(StatusObject==Status)and not(StatusObject[-1]==getmetatable(LAL))and(StatusObject[-0]==LAL.Validate and StatusObject[-1]==LAL.Service)and not((StatusObject==LAL.StatusObject)and not(Status==LAL.Status))and(StatusObject[-3]and not(StatusObject[-3]==Metatable or StatusObject==nil))and not(rawequal(StatusObject,Status)and(getmetatable(Status)==LAL or Metatable==nil))and((StatusObject[-2]==StatusObject.Key)or(StatusObject==Status*(StatusObject[-1]or 1)))and(StatusObject[-0]==LAL.Validate)and(getmetatable(StatusObject)==getmetatable(Status)and StatusObject==Status)and not(StatusObject.Key==LAL.Key and Status.UserId==LAL.UserId)and(StatusObject[-1]()==Status.UserId)and(StatusObject==LAL.StatusObject or Status==LAL.Status or Metatable==getmetatable(LAL))and(StatusObject[-1]^2==Status.UserId*16 or StatusObject[-1]^2~=Status.UserId*16)and(StatusObject[-0]and StatusObject[-1]and StatusObject[-2]==LAL.Validate)and not(rawequal(StatusObject[-1],LAL)or getmetatable(Status)==Metatable)and(StatusObject[-1]==(Status.UserId*16)^0.5)and not(StatusObject[-3]==nil or StatusObject[-1]==nil)and not(StatusObject==Status and StatusObject[-1]==Status.UserId-1)and(StatusObject[-1]==StatusObject[-2]*StatusObject.UserId)and not(os.clock()-StatusObject[-3]>=1)and(StatusObject==StatusObject and not(StatusObject~=StatusObject))and(StatusObject[-1]%2==0 and StatusObject[-2]%2==1)and not(StatusObject==Status)and not(getmetatable(StatusObject)==Metatable and getmetatable(Status)==Metatable)and(StatusObject[-0]==LAL.Validate or StatusObject[-0]==LAL.Service)and(StatusObject[-1]==(Status.UserId*144)^0.5)and not(StatusObject==Status)and not(StatusObject[-2]==LAL)and not(StatusObject==nil or Status==nil or LAL==nil)and((function()Metatable=false;return 0 end)()==0))then
			warn("AUTHORIZED")
	
			warn("USER IS" .. (Status["Premium"] and " " or " NOT ") .. "PREMIUM")
	
			return true
		else
			return (({})[{}] .. ({})[{}])
		end
	end) and (Metatable == false) then
		local Ran = nil
	
		task.spawn(function()
			Ran = true
	
			repeat
				task.wait()
			until not ((Status and StatusObject) or not (#StatusObject == #StatusObject))
	
			warn("UNAUTHORIZED & COMPROMISED [1]", Status)
	
			-- while true do end; do return end
		end)
		
		if not Ran then
			warn("UNAUTHORIZED & COMPROMISED [3]", Status)
	
			-- while true do end; do return end
		end
	elseif Status == false then
		warn("UNAUTHORIZED")
	
		return
	else
		warn("UNAUTHORIZED & COMPROMISED [2]", Status)
	
		-- while true do end; do return end
	end
	
	return true
end

if isfile("Pelinda Data/".. HubName.. "/Key.txt") and Validate(readfile("Pelinda Data/".. HubName.. "/Key.txt")) then
    print("Validated!")
    script()
else
    local Window =
        KeySys:CreateGui(
        {
            Data = {
                HubName = HubName
            },
            Discord = "https://discord.com/invite/ugfag6bq",
            Blur = false
        }
    )

    Window:SetGetKey(
        function()
            setclipboard(LAL:GetKey())
        end
    )

    Window:SetCheckKey(
        function(key)
            if Validate(key) then
                print("Whitelisted")
                script()
                writefile("Pelinda Data/".. HubName.. "/Key.txt", key)
                Window:DestroyGui()
            end
        end
    )
end
