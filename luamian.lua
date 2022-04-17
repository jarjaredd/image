local player = game:GetService('Players').LocalPlayer

print('ready!')

local global = "_p" --Way too easy tbh
for i,v in pairs(debug.getregistry()) do
if type(v) == 'function' then
for i,v in pairs(debug.getupvalues(v)) do
local ret,tab = pcall(function() return v["NPCChat"] end)
if ret == true and type(tab) == "table" then
global = v
break
end
end
end
end



local boobs = true
game.Workspace:WaitForChild('GaleForest')
for i,v in pairs(game.Workspace.GaleForest:GetChildren()) do
    if boobs == true then
    if game.Workspace.GaleForest:FindFirstChild('Cathorn') then
        global.NPCChat:say('Found a Cathorn!')
boobs = false
end
end
end

local function click(a)
    game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X/2,a.AbsolutePosition.Y+50,0,true,a,1)
    game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X/2,a.AbsolutePosition.Y+50,0,false,a,1)
end

    player.PlayerGui.MainGui:WaitForChild('Frame')
    wait(1)
    for c,d in pairs(player.PlayerGui.MainGui.Frame.BattleGui:GetDescendants()) do
    if d.Name == 'Button' and d.Parent.ImageColor3 == Color3.fromRGB(102, 255, 204) then
click(d)
end
end