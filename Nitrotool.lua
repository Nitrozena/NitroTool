local DiscordLib =
    loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()

local win = DiscordLib:Window("NitroTool -V1")
local serv = win:Server("Main", "")
local btns = serv:Channel("Main")

btns:Button(
    "Credits",
    function()
        print("Load Credits")
        DiscordLib:Notification("Credits:", "Scripting: Nitrozena#9263                                  Gui: dawid#7205", "Thanks!")
    end
)

btns:Seperator()

btns:Button(
    "Join Discord",
    function()
          syn.request({
   Url = "http://127.0.0.1:6463/rpc?v=1",
   Method = "POST",
   Headers = {
       ["Content-Type"] = "application/json",
       ["Origin"] = "https://discord.com"
   },
   Body = game:GetService("HttpService"):JSONEncode({
       cmd = "INVITE_BROWSER",
       args = {
           code = "kzs35uE8V2"
       },
       nonce = game:GetService("HttpService"):GenerateGUID(false)
   }),
})
    end
)

btns:Seperator()


local tgls = serv:Channel("PVP")

tgls:Button(
    "Mod Gun",
    function()
        while true do 
            local plr = game.Players.LocalPlayer
            print(plr.Name.."Aircraft")
            local A_1 = true
            local Event = game:GetService("Workspace")[plr.Name.."Aircraft"].Gun.Input
            Event:FireServer(A_1)            
            wait()    
        end   
    end
)

tgls:Button(
    "Mod Fireworks (small lag)",
    function()
        while true do
        local plr = game.Players.LocalPlayer
        local plra = Aircraft
        print(plr.Name.."Aircraft")
        local A_1 = game:GetService("Workspace")[plr.Name.."Aircraft"].Fireworks
        local A_2 = 1672687277
        local Event = game:GetService("ReplicatedStorage").Remotes.spawnrocket
        Event:FireServer(A_1, A_2)
        wait()
        end
end
)

tgls:Seperator()

tgls:Button(
    "Unnamed ESP",
    function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua',true))()
end
)

tgls:Button(
    "Radar",
    function()
        print()
        _G.RadarSettings = {
            RADAR_LINES = true;
            RADAR_LINE_DISTANCE = 50; 
            RADAR_SCALE = 0.1;
            RADAR_RADIUS = 125;
            RADAR_ROTATION = true;
            SMOOTH_ROT = true;
            SMOOTH_ROT_AMNT = 30; 
            CARDINAL_DISPLAY = true;
            DISPLAY_OFFSCREEN = true; 
            DISPLAY_TEAMMATES = true;
            DISPLAY_TEAM_COLORS = true;
            DISPLAY_FRIEND_COLORS = true; 
            DISPLAY_RGB_COLORS = false;
            MARKER_SCALE_BASE = 1.25;
            MARKER_SCALE_MAX = 1.25; 
            MARKER_SCALE_MIN = 0.75; 
            MARKER_FALLOFF = true; 
            MARKER_FALLOFF_AMNT = 125;
            OFFSCREEN_TRANSPARENCY = 0.3; 
            USE_FALLBACK = false; 
            USE_QUADS = true; 
            USE_TEAM_COLORS = false; 
            VISIBLITY_CHECK = false; 
            RADAR_THEME = {
                Outline = Color3.fromRGB(35, 35, 45);
                Background = Color3.fromRGB(25, 25, 35);
                DragHandle = Color3.fromRGB(50, 50, 255);
                Cardinal_Lines = Color3.fromRGB(110, 110, 120);
                Distance_Lines = Color3.fromRGB(65, 65, 75);
                Generic_Marker = Color3.fromRGB(255, 25, 115);
                Local_Marker = Color3.fromRGB(115, 25, 255);
                Team_Marker = Color3.fromRGB(25, 115, 255);
                Friend_Marker = Color3.fromRGB(25, 255, 115);
            };
        }
        
        loadstring(game:HttpGet('https://raw.githubusercontent.com/topitbopit/stuff/main/PlayerRadar/source.lua'))()
        
        DiscordLib:Notification("Credits:", "Radar made by topit", "Thanks!")
        end
)

local sldrs = serv:Channel("LocalPlayer")


local sldr =
    sldrs:Slider(
    "WalkSpeed",
    0,
    1000,
    16,
    function(t)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t
        print(t)
    end
)

sldrs:Button(
    "Set WalkSpeed to Default",
    function()
        sldr:Change(16)
    end
)

local sldr =
    sldrs:Slider(
    "JumpPower",
    0,
    1000,
    50,
    function(t)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = t
        print(t)
    end
)

sldrs:Button(
    "Set JumpPower to Default",
    function()
        sldr:Change(50)
    end
)

sldrs:Seperator()

sldrs:Button(
    "Rejoin",
    function()
 local ts = game:GetService("TeleportService")

local p = game:GetService("Players").LocalPlayer

ts:Teleport(game.PlaceId, p)
        DiscordLib:Notification("Notification", "Rejoining...", "Okay!")
    end
)

sldrs:Button(
    "Reset",
    function()
game.Players.LocalPlayer.Character.Humanoid.Health = 0
      DiscordLib:Notification("Notification", "Reseting...", "Okay!")
    end
)

local fun = serv:Channel("FunFE")

fun:Button(
    "Korblox",
    function()
        local plr = game:GetService("Players").LocalPlayer
        local A_1 = game:GetService("Workspace").LavaParts.LavaPart
        local A_2 = game:GetService("Workspace")[plr.Name]["Left Leg"]
        local Event = game:GetService("ReplicatedStorage").Remotes.FireHandler
        Event:FireServer(A_1, A_2)  
    end
)

fun:Button(
    "Remove limbs",
    function()
        local plr = game:GetService("Players").LocalPlayer
        local A_1 = game:GetService("Workspace").LavaParts.LavaPart
        local A_2 = game:GetService("Workspace")[plr.Name]["Left Leg"]
        local Event = game:GetService("ReplicatedStorage").Remotes.FireHandler
        Event:FireServer(A_1, A_2) 
        wait()
                local plr = game:GetService("Players").LocalPlayer
        local A_1 = game:GetService("Workspace").LavaParts.LavaPart
        local A_2 = game:GetService("Workspace")[plr.Name]["Right Leg"]
        local Event = game:GetService("ReplicatedStorage").Remotes.FireHandler
        Event:FireServer(A_1, A_2) 
                wait()
                local plr = game:GetService("Players").LocalPlayer
        local A_1 = game:GetService("Workspace").LavaParts.LavaPart
        local A_2 = game:GetService("Workspace")[plr.Name]["Right Arm"]
        local Event = game:GetService("ReplicatedStorage").Remotes.FireHandler
        Event:FireServer(A_1, A_2)
                        wait()
                local plr = game:GetService("Players").LocalPlayer
        local A_1 = game:GetService("Workspace").LavaParts.LavaPart
        local A_2 = game:GetService("Workspace")[plr.Name]["Left Arm"]
        local Event = game:GetService("ReplicatedStorage").Remotes.FireHandler
        Event:FireServer(A_1, A_2)
    end
)

fun:Button(
    "Fake Headless",
    function()
        print()
local players = game:GetService("Players")
local starterGui = game:GetService("StarterGui")

local player = players.LocalPlayer
local character = player.Character
local humanoid = character:FindFirstChildWhichIsA("Humanoid")
local head, torso = character:FindFirstChild("Head"), character:FindFirstChild("UpperTorso")
local resetBindable = Instance.new("BindableEvent")

local destroyFunc, resetBindableConnection = character.Destroy, nil

player.Character = nil
player.Character = character
task.wait(players.RespawnTime + .05)

humanoid.BreakJointsOnDeath = false
humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
if humanoid.RigType == Enum.HumanoidRigType.R15 then
   task.defer(destroyFunc, (head.Neck))
end
task.defer(destroyFunc, head)

resetBindableConnection = resetBindable.Event:Connect(function()
   starterGui:SetCore("ResetButtonCallback", true)
   resetBindableConnection:Disconnect()

   if player.Character == character then
       character:Destroy()
       local daModel = Instance.new("Model")
       local _daModelHumanoid = Instance.new("Humanoid")
       _daModelHumanoid.Parent = daModel
       player.Character = daModel

       task.delay(players.RespawnTime, destroyFunc, daModel)
   else
       player.Character:BreakJoints()
   end
end)
starterGui:SetCore("ResetButtonCallback", resetBindable)

        DiscordLib:Notification("Warning!", "You wont be able to see the Build gui, reset to see it again.", "Okay!")
        end
)

local tp = serv:Channel("Teleports")

local drop =
    tp:Dropdown(
    "Teleport to Plot",
    {"Plot1", "Plot2", "Plot3", "Plot4", "Plot5", "Plot6", "Plot7", "Plot8", "Plot9", "Plot10"},
    function(Value)
        print(Value)
        Plot = Value
            if Plot == "Plot1" then
                tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2.5, Enum.EasingStyle.Linear)
                tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-593.999, 52.5476, 1969.39)}):Play()
            else
                if Plot == "Plot2" then
                    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2.5, Enum.EasingStyle.Linear)
                    tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-743.999, 52.5476, 1969.39)}):Play()
                else
                    if Plot == "Plot3" then
                        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2.5, Enum.EasingStyle.Linear)
                        tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-893.999, 52.5476, 1969.39)}):Play()
                    else
                        if Plot == "Plot4" then
                            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2.5, Enum.EasingStyle.Linear)
                            tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-1046, 52.5476, 1969.39)}):Play()
                        else
                            if Plot == "Plot5" then
                                tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2.5, Enum.EasingStyle.Linear)
                                tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-1196.3, 52.5476, 1969.39)}):Play()
                            else
                                if Plot == "Plot6" then
                                    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2.5, Enum.EasingStyle.Linear)
                                    tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-1346.3, 52.5476, 1969.39)}):Play()
                                else
                                    if Plot == "Plot7" then
                                        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2.5, Enum.EasingStyle.Linear)
                                        tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-1496.3, 52.5476, 1969.39)}):Play()
                                    else
                                        if Plot == "Plot8" then
                                            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2.5, Enum.EasingStyle.Linear)
                                            tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-1648.3, 52.5476, 1969.39)}):Play()
                                        else
                                            if Plot == "Plot9" then
                                                tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2.5, Enum.EasingStyle.Linear)
                                                tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-1798.3, 52.5476, 1969.39)}):Play()
                                            else
                                                if Plot == "Plot10" then
                                                    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2.5, Enum.EasingStyle.Linear)
                                                    tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-1948.3, 52.5476, 1969.39)}):Play()
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
end
end
)

tp:Textbox(
    "Teleport to player",
    "Username here!",
    true,
    function(t)
        print(t)
        print(game.Players[t].Character.HumanoidRootPart.Position)
        local posotionplr = game.Players[t].Character.HumanoidRootPart.Position
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2.5, Enum.EasingStyle.Linear)
        tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(posotionplr)}):Play()
    end
)

    tp:Button(
        "Airport",
        function()
                tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2.5, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-2157.94140625, 29.24199867248535, -1074.67431640625)}):Play()
            end
)

tp:Seperator()

    tp:Button(
        "Flying Island",
        function()
                tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2.5, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-1133.524658203125, 541.9055786132812, -1212.3629150390625)}):Play()
            end
)

tp:Seperator()

    tp:Button(
        "Dock",
        function()
                tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2.5, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(659.3958129882812, -39.40222930908203, 1426.6185302734375)}):Play()
            end
)

tp:Seperator()

    tp:Button(
        "Rails",
        function()
                tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2.5, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-2702.061767578125, 1.000000238418579, 1386.2222900390625)}):Play()
            end
)
tp:Seperator()

    tp:Button(
        "Oasis",
        function()
                tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2.5, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-249.09764099121094, 128.52748107910156, -1595.3203125)}):Play()
            end
)

local lbls = serv:Channel("Change Log")

lbls:Label("Updates will be posted here")
local serv2 = win:Server("Autobuild", "")
local btns2 = serv2:Channel("ReadMe")

btns2:Button(
    "Tutorial",
    function()
                  DiscordLib:Notification("How to", "Select the Car/Plane etc. you want to build then save it and load it again!", "Okay!")
    end
)
btns2:Seperator()

btns2:Label("Note:")
btns2:Label("There is a small chance that you get kicked.")
btns2:Label("Mostly if the Server is slow.")

local plns = serv2:Channel("Planes")

local drop =
    plns:Dropdown(
    "Autobuild",
    {"Fw190", "PIPERJ-3CUB"},
    function(Value)
        print(Value)
        BuildPlane = Value
        if BuildPlane == "PIPERJ-3CUB" then
            print("BuildPIPERJ-3CUB")
            loadstring(game:HttpGet('https://pastebin.com/raw/SpirFrPC'))()
            wait()
            loadstring(game:HttpGet('https://pastebin.com/raw/Zt4GZWJd'))()
            wait(1)
            local A_1 = Vector3.new(0, 4, 0)
            local Event = game:GetService("ReplicatedStorage").Remotes.MoveAircraft
            Event:InvokeServer(A_1)
            wait(1)
            loadstring(game:HttpGet('https://pastebin.com/raw/gRfC0HGu'))()
            else
            if BuildPlane == "Fw190" then
                print("BuildFw190")
                loadstring(game:HttpGet('https://pastebin.com/raw/yzHdY5VN'))()
                wait()
                loadstring(game:HttpGet('https://pastebin.com/raw/938ju6tj'))()
                wait()
                loadstring(game:HttpGet('https://pastebin.com/raw/mpTZ24Mn'))()
                wait()
                loadstring(game:HttpGet('https://pastebin.com/raw/bABK5D69'))()
                wait(1)
                local A_1 = Vector3.new(0, 2, 0)
                local Event = game:GetService("ReplicatedStorage").Remotes.MoveAircraft
                Event:InvokeServer(A_1)
                wait(1)
                loadstring(game:HttpGet('https://pastebin.com/raw/SqSUn9L1'))()
                wait()
                loadstring(game:HttpGet('https://pastebin.com/raw/j1qezV5X'))()

            
         end
    end
end
)
plns:Label("This function is still under developpement.")
plns:Label("Here are only some of the cars, planes etc. of the old hub.")
plns:Label("More will be added in future.")

local serv3 = win:Server("Copy", "")
local btns3 = serv3:Channel("ReadMe")

btns3:Label("This function is still under developpement")

local btns4 = serv3:Channel("Copy")
local Players = game:GetService("Players")


btns4:Label("This function is still under developpement")
