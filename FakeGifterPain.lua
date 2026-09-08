-- FAKE GIFTER — PAIN FRUIT VERSION
-- EXACT SAME STYLE AS DRAGON!

getgenv().robux = getgenv().robux or 184736

local TweenService = game:GetService("TweenService")
local StarterGui = game:GetService("StarterGui")

local function FormatNumber(n)
    return tostring(math.floor(n)):reverse():gsub("(%d%d%d)","%1,"):reverse():gsub("^,","")
end

local FRUIT_NAME = "Pain"
local FRUIT_PRICE = 2200

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

local Popup = Instance.new("Frame")
Popup.Name = "BuyItemPopup"
Popup.Parent = ScreenGui
Popup.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
Popup.Size = UDim2.fromOffset(420, 260)
Popup.Position = UDim2.fromScale(0.5, 0.5)
Popup.AnchorPoint = Vector2.new(0.5, 0.5)
Popup.CornerRadius = UDim.new(0, 14)

local Title = Instance.new("TextLabel")
Title.Parent = Popup
Title.BackgroundTransparency = 1
Title.Font = Enum.Font.GothamBold
Title.Text = "Buy item"
Title.TextColor3 = Color3.fromRGB(255,255,255)
Title.TextSize = 22
Title.Position = UDim2.new(0.05,0,0,8)
Title.Size = UDim2.new(0.60,0,0,30)

local BalanceLabel = Instance.new("TextLabel")
BalanceLabel.Parent = Popup
BalanceLabel.BackgroundTransparency = 1
BalanceLabel.Font = Enum.Font.GothamBold
BalanceLabel.Text = "💎 " .. FormatNumber(getgenv().robux)
BalanceLabel.TextColor3 = Color3.fromRGB(255,255,255)
BalanceLabel.TextSize = 18
BalanceLabel.TextXAlignment = Enum.TextXAlignment.Right
BalanceLabel.Position = UDim2.new(0.60,0,0,10)
BalanceLabel.Size = UDim2.new(0.30,0,0,28)

local CloseBtn = Instance.new("TextButton")
CloseBtn.Parent = Popup
CloseBtn.BackgroundTransparency = 1
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.Text = "✕"
CloseBtn.TextColor3 = Color3.fromRGB(170,170,170)
CloseBtn.TextSize = 20
CloseBtn.Position = UDim2.new(0.92,0,0,8)
CloseBtn.Size = UDim2.new(0.07,0,0,30)
CloseBtn.MouseButton1Click:Connect(function() Popup:Destroy() end)

local FruitLabel = Instance.new("TextLabel")
FruitLabel.Parent = Popup
FruitLabel.BackgroundTransparency = 1
FruitLabel.Font = Enum.Font.GothamBold
FruitLabel.Text = FRUIT_NAME
FruitLabel.TextColor3 = Color3.fromRGB(255,255,255)
FruitLabel.TextSize = 24
FruitLabel.TextXAlignment = Enum.TextXAlignment.Left
FruitLabel.Position = UDim2.new(0,35,0,55)
FruitLabel.Size = UDim2.new(1,-70,0,32)

local PriceLabel = Instance.new("TextLabel")
PriceLabel.Parent = Popup
PriceLabel.BackgroundTransparency = 1
PriceLabel.Font = Enum.Font.Gotham
PriceLabel.Text = "💎 " .. FormatNumber(FRUIT_PRICE)
PriceLabel.TextColor3 = Color3.fromRGB(200,200,200)
PriceLabel.TextSize = 20
PriceLabel.TextXAlignment = Enum.TextXAlignment.Left
PriceLabel.Position = UDim2.new(0,35,0,90)
PriceLabel.Size = UDim2.new(1,-70,0,26)

local BuyBtn = Instance.new("TextButton")
BuyBtn.Parent = Popup
BuyBtn.BackgroundColor3 = Color3.fromRGB(52, 131, 250)
BuyBtn.Font = Enum.Font.GothamBold
BuyBtn.Text = "Buy"
BuyBtn.TextColor3 = Color3.fromRGB(255,255,255)
BuyBtn.TextSize = 20
BuyBtn.Position = UDim2.new(0,35,0,130)
BuyBtn.Size = UDim2.new(1,-70,0,45)
BuyBtn.CornerRadius = UDim.new(0,10)

local PlusLabel = Instance.new("TextLabel")
PlusLabel.Parent = Popup
PlusLabel.BackgroundTransparency = 1
PlusLabel.Font = Enum.Font.Gotham
PlusLabel.Text = "Get 10% off with Roblox Plus                          Subscribe"
PlusLabel.TextColor3 = Color3.fromRGB(150,150,150)
PlusLabel.TextSize = 14
PlusLabel.Position = UDim2.new(0,35,0,185)
PlusLabel.Size = UDim2.new(1,-70,0,20)

Popup.Size = UDim2.fromOffset(0,0)
TweenService:Create(Popup, TweenInfo.new(0.2), {Size = UDim2.fromOffset(420,260)}):Play()

BuyBtn.MouseButton1Click:Connect(function()
    Popup:Destroy()
    task.wait(0.3)

    local Completed = Instance.new("Frame")
    Completed.Parent = ScreenGui
    Completed.BackgroundColor3 = Color3.fromRGB(30,30,35)
    Completed.Size = UDim2.fromOffset(340,210)
    Completed.Position = UDim2.fromScale(0.5,0.5)
    Completed.AnchorPoint = Vector2.new(0.5,0.5)
    Completed.CornerRadius = UDim.new(0,14)

    local CheckMark = Instance.new("TextLabel")
    CheckMark.Parent = Completed
    CheckMark.BackgroundTransparency = 1
    CheckMark.Font = Enum.Font.GothamBold
    CheckMark.Text = "✔️"
    CheckMark.TextColor3 = Color3.fromRGB(52,199,89)
    CheckMark.TextSize = 45
    CheckMark.Position = UDim2.new(0.5,-22,0,15)
    CheckMark.Size = UDim2.new(0,44,0,50)

    local CompTitle = Instance.new("TextLabel")
    CompTitle.Parent = Completed
    CompTitle.BackgroundTransparency = 1
    CompTitle.Font = Enum.Font.GothamBold
    CompTitle.Text = "Purchase completed"
    CompTitle.TextColor3 = Color3.fromRGB(255,255,255)
    CompTitle.TextSize = 20
    CompTitle.Position = UDim2.new(0,20,0,75)
    CompTitle.Size = UDim2.new(1,-40,0,28)

    local CompText = Instance.new("TextLabel")
    CompText.Parent = Completed
    CompText.BackgroundTransparency = 1
    CompText.Font = Enum.Font.Gotham
    CompText.Text = 'You have successfully bought\n"' .. FRUIT_NAME .. '".'
    CompText.TextColor3 = Color3.fromRGB(200,200,200)
    CompText.TextSize = 16
    CompText.TextWrapped = true
    CompText.Position = UDim2.new(0,20,0,105)
    CompText.Size = UDim2.new(1,-40,0,45)

    local OkBtn = Instance.new("TextButton")
    OkBtn.Parent = Completed
    OkBtn.BackgroundColor3 = Color3.fromRGB(52,131,250)
    OkBtn.Font = Enum.Font.GothamBold
    OkBtn.Text = "OK"
    OkBtn.TextColor3 = Color3.fromRGB(255,255,255)
    OkBtn.TextSize = 18
    OkBtn.Position = UDim2.new(0,20,0,160)
    OkBtn.Size = UDim2.new(1,-40,0,35)
    OkBtn.CornerRadius = UDim.new(0,10)

    Completed.Size = UDim2.fromOffset(0,0)
    TweenService:Create(Completed, TweenInfo.new(0.2), {Size = UDim2.fromOffset(340,210)}):Play()

    OkBtn.MouseButton1Click:Connect(function()
        Completed:Destroy()
        StarterGui:SetCore("SendNotification", {
            Title = "Sending gift <Permanent " .. FRUIT_NAME .. "> to " .. (getgenv().giftUser or "Friend") .. "...",
            Text = "", Duration = 4
        })
        task.wait(4.5)
        StarterGui:SetCore("SendNotification", {
            Title = "✅ Gift sent successfully to " .. (getgenv().giftUser or "Friend") .. "!",
            Text = "Permanent " .. FRUIT_NAME .. " has been gifted!", Duration = 8
        })
    end)
end)
