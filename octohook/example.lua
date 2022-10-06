-- thx ride and frosted for the docs and also i reccomend looking into the source cuz im lazy + i probably did everything maybe idk also ignore my tp they're just for testing 
local startTick = tick()


local library =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Qwisaskid/ui-librarys/main/octohook%20ui%20source.lua"))(
    {cheatname = "Qwhub", gamename = "Baseplate"} --
)
library:init()
local utility = library.utility
local signal = library.signal

local menu =
    library.NewWindow({title = library.cheatname .. " - Private | " ..   library.gamename, size = UDim2.new(0, 500, 0.5, 20)}) -- also no Qw hub doesnt exist just a name 

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--> Tabs <-- 
local CombatTab = menu:AddTab("Combat")
local Visualstab = menu:AddTab("Visuals")
local Misctab = menu:AddTab("Misc")

local SettingsTab = library:CreateSettingsTab(menu)
--> sections <-- 
local Aimbotsec = CombatTab:AddSection("Aim-Assist", 1)
local saimsec = CombatTab:AddSection("Bullet-Prioritize", 2)
local miscsec1 = Misctab:AddSection("tp/buy", 1)
local exploitssec = Misctab:AddSection("Exploits", 2)

local aimbottoggle = Aimbotsec:AddToggle(
    {
      
        state = false;
        tooltip = 'this is a tooltip!';
        risky = false,
        text = "Enabled",
        flag = "testflag",
        callback = function(bool)
    end 
    }
)
aimbottoggle:AddBind(
    {
        tooltip = 'this is a tooltip!';
        text = "Aimbot",
         mode = "hold",
          risky = true,
        flag = "Aimbotkeybind",
        nomouse = false,
        noindicator = false,
        bind = Enum.UserInputType.MouseButton2,
        callback = function(bool)
            print(bool)
        end
    }
)
Aimbotsec:AddList(
    {
        text = "Bone",
        flag = "",
         selected = {'HumanoidRootPart', "Head"};
        multi = true,
        values = { 
            "Head",
            "UpperTorso",
            "HumanoidRootPart",
             "LowerTorso", 
             "LeftHand",
             "RightHand",
             "LeftLowerArm",
             "RightLowerArm",
             "LeftUpperArm",
             "RightUpperArm",
             "LeftFoot",
             "LeftLowerLeg",
             "LeftUpperLeg",
             "RightLowerLeg",
              "RightFoot",
             "RightUpperLeg"
        },
    --   
        callback = function(bool)
          print(bool)
        end
    }
)
Aimbotsec:AddSlider(
    {
        text = "Sensetivity",
        flag = '"',
        suffix = "°",
        min = 0,
        max = 100,
        increment = .1,
        callback = function(v)
            
        end
    }
)
local Fovvisualizetoggle = Aimbotsec:AddToggle(
    {
      
        state = false;
        tooltip = "Automaticallu aims when they are in the fov circle!";
        risky = false,
        text = "Visualize fov ",
        flag = "testflag",
        callback = function(bool)
    end 
    }
)
Fovvisualizetoggle:AddColor(
    {
        text = "Color",
          color = Color3.new(1,1,1);
          tooltip = '';
        flag = "",
        callback = function()
        end
    }
)
--ignore this is just my da hood teleports
miscsec1:AddList(
    {
        text = "Teleport",
        flag = "",
        risky = true, 
          open = true;
        selected = "";
      
        values = { 
"Downhill gunz",

"Uphill gunz",
"Bank"
        },
    --   
        callback = function(bool)
          if bool == "Downhill gunz" then 
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-578.4213256835938, 8.286005020141602, -732.426025390625)
elseif bool == "Uphill gunz" then 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(485.7781677246094, 48.04171371459961, -623.5838012695312)
elseif bool == "Bank" then 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-447.1152038574219, 22.976484298706055, -287.2018127441406)
          end 
        end
    }
)




exploitssec:AddSeparator({text = "Goto"})

exploitssec:AddBox(
    {
        text = "insert plr",
        flag = "box",
        input = '';
         focused = true;
        callback = function(text)
            
        end
    }
)
exploitssec:AddButton(
    {
        text = "Goto",
        risky = true,
        confirm = true, 
        callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[library.flags.box].Character.HumanoidRootPart.CFrame 
        end
    }
)
