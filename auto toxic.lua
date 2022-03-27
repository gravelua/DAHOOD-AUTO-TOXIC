local words = {
    'Imagine having bad aim',
    'ur dog',
    'aim left faster then your dad',
    'my grandma is better then you',
    'son get better',
    'NO- THAT OUTFIT LOL ITS SO TRASH',
}
local player = game.Players.LocalPlayer
local keybind = 'v'

local event = game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest

player:GetMouse().KeyDown:connect(function(key)
    if key == keybind then
        event:FireServer(words[math.random(#words)], "All")
    end
end)
