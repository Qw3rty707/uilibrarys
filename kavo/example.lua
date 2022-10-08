local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("TITLE", "DarkTheme") -- LightTheme, DarkTheme, GrapeTheme, BloodTheme, Ocean, Midnight, Sentinel, Synapse
 local Tab = Window:NewTab("Combat")
local Section = Tab:NewSection("Aimbot") 
Section:NewLabel("Hello") 
Section:NewButton("ButtonText", "ButtonInfo", function() 
    print("Clicked")
end) 

Section:("ToggleText", "ToggleInfo", function(bool) 
    if bool then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)
Section:NewToggle("SliderText", "SliderInfo", 500, 0, function(bool) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = bool
end)

Section:NewTextBox("TextboxText", "TextboxInfo", function(bool)
	print(bool)
end)

Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
	print("You just clicked the bind")
end)

Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)

Section:NewDropdown("DropdownText", "DropdownInf", {"Option 1", "Option 2", "Option 3"}, function(currentOption)
    print(currentOption)
end)

Section:NewColorPicker("Color Text", "Color Info", Color3.fromRGB(0,0,0), function(color)
    print(color)
    -- Second argument is the default color
end)

--other  stuff below 

--[[ updating a toggle  getgenv().Toggled = false

local toggle = Section:NewToggle("Toggle", "Info", (state)
    getgenv().Toggled = state
end)

game:GetService("RunService").RenderStepped:Connect(function()
	if getgenv().Toggled then
		toggle:UpdateToggle("Toggle On")
	else
		toggle:UpdateToggle("Toggle Off")
	end
end)

 update buttons button:UpdateButton("New Text")

  updating a section Section:UpdateSection("Section New Title")


updating dropdowns 
local oldList = {
  "2019",
  "2020"
}
local newList = {
  "2021",
  "2022"
}
local dropdown = Section:NewDropdown("Dropdown","Info", oldList, function()

end)
Section:NewButton("Update Dropdown", "Refreshes Dropdown", function()
  dropdown:Refresh(newList)
end)
add a custom color to your menu 
local colors = {
    SchemeColor = Color3.fromRGB(0,255,255),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}

local Window = Library.CreateLib("TITLE", colors)

makes your menu customizable 
for theme, color in pairs(themes) do
    Section:NewColorPicker(theme, "Change your "..theme, color, function(color3)
        Library:ChangeColor(theme, color3)
    end)
end

--]] 
