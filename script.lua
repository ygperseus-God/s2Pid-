local players = game:GetService("Players")
local userInputService = game:GetService("UserInputService")
local runService = game:GetService("RunService")
local v1 = game:GetService("Workspace")
local httpService = game:GetService("HttpService")
local textService = game:GetService("TextService")
local lighting = game:GetService("Lighting")
local tweenService = game:GetService("TweenService")
if not game:IsLoaded() then
    game.Loaded:Wait()
end
pcall(function()
    if type(setfpscap) == "function" then
        setfpscap(60)
    end
end
)
local v2, v3 = pcall(function()
    return game:HttpGet("https://raw.githubusercontent.com/masterhubgg/Master-Hub-Status/refs/heads/main/status2.txt?nocache="..tostring(os.time()))
end
)
local f1, f2, f3, v4, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, localPlayer, currentCamera, v5, v6, f25, f26, f27, v7, getPlayers, v8, v9, v10, f28, f29, v11, v12, f30, f31, v13, raycastParams, v14, f32, v15, f33, triggerbotFOV, uiStroke, v16, v17, playerVisualizationTool, fovCircle, uiStroke2, aimToggle, v18, v19, v20, position, position2, mainWindow, tabStrip, v21, position3, position4, scrollingFrame, f34, f35, f36, uiListLayout, f37, v22, v23, v24, f38, f39, f40, v25, v26, f41, f42, v27, fov, uiStroke3, f43, f45, v28, v29, fpsCounter, textLabel, mastersamFPSOverlay, connect, v30, v31, f46, v32, terrain, v33, v34, v35, v36, v37, v38, v39, connect2, connect3, v40, v41, f47, f48, f49, f50, v42, v43, f51, f52, f53, v44, v45, v46, v47, menuReopenButton, v48, v49, position5, position6
if(v2 and v3:gsub("%s+", "") or "offline") ~= "online" then
    local masterHubMaintenance = Instance.new("ScreenGui")
    masterHubMaintenance.Name = "MasterHubMaintenance"
    masterHubMaintenance.ResetOnSpawn =  false
    masterHubMaintenance.IgnoreGuiInset =  true
    masterHubMaintenance.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    masterHubMaintenance.Parent = players.LocalPlayer:WaitForChild("PlayerGui")
    local frame = Instance.new("Frame")
    frame.Size = UDim2.fromScale(1, 1)
    frame.BackgroundColor3 = Color3.fromRGB(8, 9, 13)
    frame.BackgroundTransparency = 0.08
    frame.BorderSizePixel = 0
    frame.Parent = masterHubMaintenance
    local frame2 = Instance.new("Frame")
    frame2.AnchorPoint = Vector2.new(0.5, 0.5)
    frame2.Position = UDim2.fromScale(0.5, 0.5)
    frame2.Size = UDim2.fromOffset(340, 110)
    frame2.BackgroundColor3 = Color3.fromRGB(13, 15, 21)
    frame2.BorderSizePixel = 0
    frame2.Parent = frame
    local uiStroke4 = Instance.new("UIStroke")
    uiStroke4.Color = Color3.fromRGB(255, 92, 190)
    uiStroke4.Thickness = 1
    uiStroke4.Transparency = 0.15
    uiStroke4.Parent = frame2
    local textLabel2 = Instance.new("TextLabel")
    textLabel2.Size = UDim2.new(1, 0, 0, 36)
    textLabel2.Position = UDim2.fromOffset(0, 18)
    textLabel2.BackgroundTransparency = 1
    textLabel2.Text = "🔧  UNDER MAINTENANCE"
    textLabel2.TextColor3 = Color3.fromRGB(255, 92, 190)
    textLabel2.TextSize = 16
    textLabel2.Font = Enum.Font.SciFi
    textLabel2.TextXAlignment = Enum.TextXAlignment.Center
    textLabel2.Parent = frame2
    local textLabel3 = Instance.new("TextLabel")
    textLabel3.Size = UDim2.new(1, 0, 0, 24)
    textLabel3.Position = UDim2.fromOffset(0, 58)
    textLabel3.BackgroundTransparency = 1
    textLabel3.Text = "MasterHub is currently down. Check back soon."
    textLabel3.TextColor3 = Color3.fromRGB(160, 168, 195)
    textLabel3.TextSize = 12
    textLabel3.Font = Enum.Font.Code
    textLabel3.TextXAlignment = Enum.TextXAlignment.Center
    textLabel3.Parent = frame2
    error("[MasterHub] Script is under maintenance.")
    return
else
    localPlayer = players.LocalPlayer
    localPlayer:WaitForChild("PlayerGui")
    Color3.fromRGB(255, 255, 255)
    currentCamera = v1.CurrentCamera
    v5 = {
        TrackingEnabled =  false,
        Smoothness = 0.25,
        AimPart = "Head",
        FOVEnabled =  true,
        FOVSize = 15,
        ShowAimButton =  false,
        ESPEnabled =  false,
        SnapLines =  false,
        SnapLineThickness = 1.5,
        SnapLineColor = Color3.fromRGB(255,
        90,
        170),
        SnapLineTargetColor = Color3.fromRGB(70,
        255,
        150),
        BoxESP =  false,
        NameTags =  false,
        HealthBar =  false,
        Distance =  false,
        BoxColor = Color3.fromRGB(255,
        105,
        190),
        WallCheck =  true,
        TeamCheck =  true,
        BigHead =  false,
        BigHeadSize = 5,
        HitboxExpander =  false,
        HitboxSize = 10,
        TrackingKey = Enum.KeyCode.Z,
        DiscordLink = "MasterHub",
        UsageWebhook = "https://discord.com/api/webhooks/1545688427112964108/O0gPas2VOGtbf-RukQzsK_GHlW9bpANb6DbO3MHzYgclU8PM4Ve4MhMFvObEeOdPHwkM",
        SilentAimHK =  false,
        SA2_TargetPart = "Head",
        SA2_TeamTarget = "Enemies",
        SA2_Wallcheck =  false,
        SA2_Wallbang =  false,
        SA2_BulletTeleport =  false,
        SA2_HitChance = 100,
        SA2_HeadshotChance = 100,
        SA2_FovRadius = 100,
        SA2_FovVisible =  true,
        SA2_FovTransparency = 0.9,
        SA2_FovColor = Color3.fromRGB(255,
        90,
        170),
        SA2_FovTargetColor = Color3.fromRGB(255,
        255,
        255),
        SA2_ThreeSixtyMode =  false,
        SA2_TargetRange = 500,
        SA2_Prediction = 0,
        SA2_GetTarget = "Closest",
        SA2_AimMethods = {
            "Raycast"
        },
        SA2_RemoteNames = {
            "hit",
            "bullet",
            "projectile",
            "hitscan"
        },
        SA2_Key = Enum.KeyCode.R,
        Triggerbot =  false,
        TriggerbotRate = 100,
        TriggerbotInterval = 0.01,
        TriggerbotFOV = 10,
        TriggerbotFOVVisible =  false,
        TriggerbotFOVColor = Color3.fromRGB(255,
        90,
        170),
        TriggerbotFOVTargetColor = Color3.fromRGB(255,
        255,
        255),
        TriggerbotFOVTransparency = 0.9,
    }
    v6 = {
    }
    local v50 = setmetatable({
    }, {
        __mode = "k"
    }
)
    function f1(p1, p2)
        local connect4 = p1:Connect(p2)
        table.insert(v6, connect4)
        return connect4
    end
    function f2(p3)
        if v5.AimPart == "Head" then
            return f25(p3, "Head")
        end
        if v5.AimPart == "Torso" then
            return f25(p3, "UpperTorso") or f25(p3, "Torso") or f25(p3, "HumanoidRootPart")
        end
        return f25(p3, "HumanoidRootPart")
    end
    function f25(p4, p5)
        if not p4 then
            return nil
        else
            local v51 = v50[p4]
            if not v51 then
                v51 = {
                }
                v50[p4] = v51
            end
            local v52 = v51[p5]
            if v52 and v52.Parent == p4 then
                return v52
            else
                local findFirstChild = p4:FindFirstChild(p5)
                v51[p5] = findFirstChild
                return findFirstChild
            end
        end
    end
    function f26(p6)
        if not p6 then
            return nil
        else
            local character = p6.Character
            if not character or not character.Parent then
                return nil
            else
                local v53 = v50[character]
                local humanoid = v53 and v53.__humanoid
                local humanoidRootPart = v53 and v53.HumanoidRootPart
                if not humanoid or humanoid.Parent ~= character then
                    humanoid = character:FindFirstChildOfClass("Humanoid")
                end
                if not humanoid then
                    return nil
                end
                if not humanoidRootPart or humanoidRootPart.Parent ~= character then
                    humanoidRootPart = f25(character, "HumanoidRootPart")
                end
                if humanoid.Health <= 0 or not humanoidRootPart then
                    return nil
                else
                    local v54 = v50[character]
                    v54.__humanoid = humanoid
                    v54.HumanoidRootPart = humanoidRootPart
                    return character, humanoid, humanoidRootPart
                end
            end
        end
    end
    function f27(text)
        local playerGui = localPlayer:FindFirstChildOfClass("PlayerGui")
        local textLabel4
        if not playerGui then
            return
        else
            local playerToolNotifications = playerGui:FindFirstChild("PlayerToolNotifications")
            if not playerToolNotifications then
                return
            else
                textLabel4 = Instance.new("TextLabel")
                textLabel4.Size = UDim2.new(0, 260, 0, 40)
                textLabel4.BackgroundColor3 = Color3.fromRGB(13, 15, 21)
                textLabel4.BackgroundTransparency = 0.05
                textLabel4.BorderSizePixel = 0
                textLabel4.TextColor3 = Color3.fromRGB(240, 243, 250)
                textLabel4.TextSize = 14
                textLabel4.Font = Enum.Font.BuilderSansMedium
                textLabel4.Text = text
                textLabel4.Parent = playerToolNotifications
                local getChildren = playerToolNotifications:GetChildren()
                if # getChildren > 4 then
                    local v55 =  # getChildren - 4
                    local v56 =  false
                    local count = 0
                    while true do
                        count = 1 + count
                        if not(v56 and v55 <= count or not v56 and count <= v55) then
                            break
                        end
                        local v57 = count
                        if getChildren[v57]:IsA("TextLabel") then
                            getChildren[v57]:Destroy()
                        end
                    end
                end
                if playerToolNotifications:FindFirstChildOfClass("UIListLayout") then
                    textLabel4.LayoutOrder = math.floor(os.clock() * 1000)
                end
                task.delay(2, function()
                    if textLabel4.Parent then
                        textLabel4:Destroy()
                    end
                end
)
                return
            end
        end
    end
    v7 = {
    }
    getPlayers = players:GetPlayers()
    f1(players.PlayerAdded, function()
        getPlayers = players:GetPlayers()
    end
)
    f1(players.PlayerRemoving, function()
        task.defer(function()
            getPlayers = players:GetPlayers()
        end
)
    end
)
    v8 =  nil
    v9 =  nil
    v10 = {
        "StageTeamSide",
        "Team",
        "TeamName",
        "TeamColor",
        "TeamId",
        "TeamID",
        "team"
    }
    function f28(p7)
        if not p7 then
            return nil
        end
        for index, value in ipairs(v10) do
            local getAttribute = p7:GetAttribute(value)
            if getAttribute ~=  nil then
                return value.. "="..tostring(getAttribute)
            else
                local findFirstChild2 = p7:FindFirstChild(value)
                if findFirstChild2 and findFirstChild2:IsA("ValueBase") then
                    return value.. "="..tostring(findFirstChild2.Value)
                end
            end
        end
        return nil
    end
    function f29(p8)
        if not p8 then
            return nil
        else
            local v58 = f28(p8) or f28(p8.Character)
            if v58 then
                return v58
            else
                local v59 = f28((p8:FindFirstChild("leaderstats")))
                if v59 then
                    return v59
                end
                if not p8.Neutral then
                    return "TeamColor="..tostring(p8.TeamColor)
                end
                return nil
            end
        end
    end
    v11 = 0
    v12 = 0
    function f30()
        local v60 = os.clock()
        if v60 - v12 > 0.5 then
            local v61 = {
            }
            local count2 = 0
            for index2, value2 in ipairs(players:GetPlayers()) do
                local v62 = f29(value2)
                if v62 and not v61[v62] then
                    v61[v62] =  true
                    count2 = count2 + 1
                end
            end
            v11 = count2
            v12 = v60
        end
        return v11
    end
    function v8(p9)
        if p9 and p9.Team then
            return "team:"..p9.Team.Name
        end
        return f29(p9)
    end
    function f31(p10)
        if not p10 or p10 == localPlayer then
            return false
        end
        if localPlayer.Team or p10.Team then
            return localPlayer.Team ~=  nil and p10.Team ~=  nil and localPlayer.Team == p10.Team
        else
            local v63 = f29(localPlayer)
            local v64 =  not v63
            local v65 = f29(p10)
            if v64 or not v65 then
                return false
            end
            if f30() < 2 then
                return false
            end
            return v63 == v65
        end
    end
    v4 = setmetatable({
    }, {
        __mode = "k"
    }
)
    function f3(p11)
        if not p11 or p11 == localPlayer then
            return false
        end
        if v5.TeamCheck and v9(p11) then
            return false
        end
        return true
    end
    function v9(p12)
        if not p12 or p12 == localPlayer then
            return false
        else
            local v66 = os.clock()
            local v67 = v4[p12]
            if v67 and v66 - v67[1] < 0.5 then
                return v67[2]
            else
                local v68 = f31(p12)
                if v67 then
                    v67[1] = v66
                    v67[2] = v68
                else
                    v4[p12] = {
                        v66,
                        v68
                    }
                end
                return v68
            end
        end
    end
    v13 =  nil
    raycastParams = RaycastParams.new()
    raycastParams.FilterType = Enum.RaycastFilterType.Exclude
    raycastParams.IgnoreWater =  true
    v14 = setmetatable({
    }, {
        __mode = "k"
    }
)
    function v13(p13, p14)
        if not v5.WallCheck then
            return true
        else
            local position7 = currentCamera.CFrame.Position
            local character2 = localPlayer.Character
            local v69 = os.clock()
            local v70 = v14[p13]
            if v70 and v70.character == character2 and v69 - v70.time < 0.08 then
                return v70.visible
            else
                raycastParams.FilterDescendantsInstances = {
                    character2,
                    p13
                }
                local v71 = v1:Raycast(position7, p14.Position - position7, raycastParams) ==  nil
                v14[p13] = {
                    character = character2,
                    time = v69,
                    visible = v71
                }
                return v71
            end
        end
    end
    function f32(p15)
        local v72 = currentCamera
        if not v72 then
            return nil
        else
            local viewportSize = v72.ViewportSize
            local v73 = viewportSize.Y * 0.5
            local v74 = viewportSize.X * 0.5
            local fovSize = p15 or v5.FOVSize
            local v75 = fovSize * fovSize
            local huge = math.huge
            local v76 =  nil
            for index3, value3 in ipairs(getPlayers) do
                local v77, v78, v79 = f26(value3)
                if v77 and f3(value3) then
                    local v80 = f2(v77)
                    if v80 then
                        local v81, v82 = v72:WorldToViewportPoint(v80.Position)
                        if v82 and v81.Z > 0 then
                            local v83 = v81.X - v74
                            local v84 = v81.Y - v73
                            local v85 = v83 * v83 + v84 * v84
                            if v85 <= v75 and v85 < huge and v13(v77, v80) then
                                v76 = value3
                                huge = v85
                            end
                        end
                    end
                end
            end
            return v76
        end
    end
    v15 = 0
    function f33()
        local v86 = os.clock()
        if v86 - v15 < v5.TriggerbotInterval then
            return
        end
        local character3 = localPlayer.Character
        if not character3 then
            return
        end
        local tool = character3:FindFirstChildOfClass("Tool")
        if not tool then
            return
        end
        v15 = v86
        pcall(function()
            tool:Activate()
        end
)
        task.delay(0.03, function()
            if tool and tool.Parent == character3 then
                pcall(function()
                    tool:Deactivate()
                end
)
            end
        end
)
    end
    triggerbotFOV =  nil
    uiStroke =  nil
    v16 = 0
    v17 =  nil
    f1(runService.Heartbeat, function()
        if not v5.Triggerbot then
            v17 =  nil
            if triggerbotFOV then
                triggerbotFOV.Visible =  false
            end
            return
        else
            local v87 = triggerbotFOV
            local v88 = os.clock()
            if v88 - v16 >= 0.083333 then
                v16 = v88
                v17 = f32(v5.TriggerbotFOV)
            end
            local v89 = v17
            if v87 and uiStroke then
                local currentCamera2 = v1.CurrentCamera
                if currentCamera2 and v5.TriggerbotFOVVisible then
                    local viewportSize2 = currentCamera2.ViewportSize
                    triggerbotFOV.Position = UDim2.fromOffset(viewportSize2.X / 2, viewportSize2.Y / 2)
                    triggerbotFOV.Size = UDim2.fromOffset(v5.TriggerbotFOV * 2, v5.TriggerbotFOV * 2)
                    triggerbotFOV.Visible =  true
                    local v90 = uiStroke
                    v90.Color = v89 and v5.TriggerbotFOVTargetColor or v5.TriggerbotFOVColor
                    uiStroke.Transparency = 1 - math.clamp(v5.TriggerbotFOVTransparency, 0, 1)
                else
                    triggerbotFOV.Visible =  false
                end
            end
            if v89 then
                f33()
            end
            return
        end
    end
)
    local playerGui2 = localPlayer:WaitForChild("PlayerGui")
    local playerVisualizationTool2 = playerGui2:FindFirstChild("PlayerVisualizationTool")
    if playerVisualizationTool2 then
        playerVisualizationTool2:Destroy()
    end
    playerVisualizationTool = Instance.new("ScreenGui")
    playerVisualizationTool.Name = "PlayerVisualizationTool"
    playerVisualizationTool.ResetOnSpawn =  false
    playerVisualizationTool.IgnoreGuiInset =  true
    playerVisualizationTool.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    playerVisualizationTool.Enabled =  true
    playerVisualizationTool.Parent = playerGui2
    triggerbotFOV = Instance.new("Frame")
    triggerbotFOV.Name = "TriggerbotFOV"
    triggerbotFOV.AnchorPoint = Vector2.new(0.5, 0.5)
    triggerbotFOV.BackgroundTransparency = 1
    triggerbotFOV.BorderSizePixel = 0
    triggerbotFOV.Size = UDim2.fromOffset(v5.TriggerbotFOV * 2, v5.TriggerbotFOV * 2)
    triggerbotFOV.Visible =  false
    triggerbotFOV.Parent = playerVisualizationTool
    Instance.new("UICorner", triggerbotFOV).CornerRadius = UDim.new(1, 0)
    uiStroke = Instance.new("UIStroke")
    uiStroke.Thickness = 1
    uiStroke.Color = v5.TriggerbotFOVColor
    uiStroke.Transparency = 1 - v5.TriggerbotFOVTransparency
    uiStroke.Parent = triggerbotFOV
    function f44()
        playerVisualizationTool.Enabled =  true
    end
    local playerToolNotifications2 = Instance.new("Frame")
    playerToolNotifications2.Name = "PlayerToolNotifications"
    playerToolNotifications2.AnchorPoint = Vector2.new(1, 1)
    playerToolNotifications2.Position = UDim2.new(1,  - 16, 1,  - 16)
    playerToolNotifications2.Size = UDim2.new(0, 260, 0, 200)
    playerToolNotifications2.BackgroundTransparency = 1
    playerToolNotifications2.Parent = playerVisualizationTool
    local uiListLayout2 = Instance.new("UIListLayout")
    uiListLayout2.VerticalAlignment = Enum.VerticalAlignment.Bottom
    uiListLayout2.HorizontalAlignment = Enum.HorizontalAlignment.Right
    uiListLayout2.Padding = UDim.new(0, 8)
    uiListLayout2.Parent = playerToolNotifications2
    fovCircle = Instance.new("Frame")
    fovCircle.Name = "FOVCircle"
    fovCircle.AnchorPoint = Vector2.new(0.5, 0.5)
    fovCircle.BackgroundTransparency = 1
    fovCircle.Size = UDim2.fromOffset(v5.FOVSize * 2, v5.FOVSize * 2)
    fovCircle.Parent = playerVisualizationTool
    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(1, 0)
    uiCorner.Parent = fovCircle
    uiStroke2 = Instance.new("UIStroke")
    uiStroke2.Thickness = 1.5
    uiStroke2.Color = Color3.fromRGB(255, 90, 170)
    uiStroke2.Transparency = 0.2
    uiStroke2.Parent = fovCircle
    aimToggle = Instance.new("TextButton")
    aimToggle.Name = "AimToggle"
    aimToggle.AnchorPoint = Vector2.new(0, 1)
    aimToggle.Position = UDim2.new(0, 75, 1,  - 15)
    aimToggle.Size = UDim2.fromOffset(48, 48)
    aimToggle.BackgroundColor3 = v5.TrackingEnabled and Color3.fromRGB(70, 255, 150) or Color3.fromRGB(235, 65, 65)
    aimToggle.Text = "AIM"
    aimToggle.TextColor3 = Color3.new(1, 1, 1)
    aimToggle.TextSize = 12
    aimToggle.Font = Enum.Font.BuilderSansBold
    aimToggle.AutoButtonColor =  false
    aimToggle.Visible =  false
    aimToggle.Parent =  nil
    Instance.new("UICorner", aimToggle).CornerRadius = UDim.new(1, 0)
    local uiStroke5 = Instance.new("UIStroke")
    uiStroke5.Color = Color3.fromRGB(255, 255, 255)
    uiStroke5.Thickness = 2
    uiStroke5.Transparency = 0.35
    uiStroke5.Parent = aimToggle
    v18 =  false
    v19 =  false
    v20 =  false
    position =  nil
    position2 =  nil
    f1(aimToggle.InputBegan, function(p16)
        if v18 then
            return
        end
        local connect5 =  nil
        if p16.UserInputType == Enum.UserInputType.MouseButton1 or p16.UserInputType == Enum.UserInputType.Touch then
            v19 =  true
            v20 =  false
            position = p16.Position
            position2 = aimToggle.Position
            connect5 =  nil
            connect5 = p16.Changed:Connect(function()
                if p16.UserInputState == Enum.UserInputState.End then
                    v19 =  false
                    connect5:Disconnect()
                end
            end
)
        end
    end
)
    f1(userInputService.InputChanged, function(p17)
        if not v18 and v19 and(p17.UserInputType == Enum.UserInputType.MouseMovement or p17.UserInputType == Enum.UserInputType.Touch) then
            local v91 = p17.Position - position
            if math.abs(v91.X) > 4 or math.abs(v91.Y) > 4 then
                v20 =  true
            end
            aimToggle.Position = UDim2.new(position2.X.Scale, position2.X.Offset + v91.X, position2.Y.Scale, position2.Y.Offset + v91.Y)
        end
    end
)
    mainWindow = Instance.new("Frame")
    mainWindow.Name = "MainWindow"
    mainWindow.AnchorPoint = Vector2.new(0.5, 0.5)
    mainWindow.Position = UDim2.fromScale(0.5, 0.5)
    mainWindow.Size = UDim2.fromOffset(470, 330)
    mainWindow.BackgroundColor3 = Color3.fromRGB(9, 10, 14)
    mainWindow.BorderSizePixel = 0
    mainWindow.Parent = playerVisualizationTool
    tabStrip =  nil
    v21 =  false
    position3 =  nil
    position4 =  nil
    local color = Color3.fromRGB(9, 10, 14)
    local color2 = Color3.fromRGB(17, 19, 26)
    local color3 = Color3.fromRGB(44, 48, 66)
    local color4 = Color3.fromRGB(232, 236, 246)
    local color5 = Color3.fromRGB(122, 130, 156)
    mainWindow.BackgroundColor3 = color
    local uiCorner2 = Instance.new("UICorner")
    uiCorner2.CornerRadius = UDim.new(0, 8)
    uiCorner2.Parent = mainWindow
    local uiStroke6 = Instance.new("UIStroke")
    uiStroke6.Color = color3
    uiStroke6.Thickness = 1
    uiStroke6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    uiStroke6.Parent = mainWindow
    local header = Instance.new("Frame")
    header.Name = "Header"
    header.Size = UDim2.new(1, 0, 0, 42)
    header.BackgroundTransparency = 1
    header.BorderSizePixel = 0
    header.Active =  true
    header.Parent = mainWindow
    local textLabel5 = Instance.new("TextLabel")
    textLabel5.BackgroundTransparency = 1
    textLabel5.Position = UDim2.fromOffset(16, 4)
    textLabel5.Size = UDim2.new(1,  - 70, 0, 20)
    textLabel5.Font = Enum.Font.GothamBold
    textLabel5.Text = "MASTERSAM"
    textLabel5.TextColor3 = color4
    textLabel5.TextSize = 15
    textLabel5.TextXAlignment = Enum.TextXAlignment.Left
    textLabel5.Parent = header
    local textLabel6 = Instance.new("TextLabel")
    textLabel6.BackgroundTransparency = 1
    textLabel6.Position = UDim2.fromOffset(16, 24)
    textLabel6.Size = UDim2.new(1,  - 70, 0, 12)
    textLabel6.Font = Enum.Font.Gotham
    textLabel6.Text = "Galaxy Hub  •  by GOD MASTER"
    textLabel6.TextColor3 = color5
    textLabel6.TextSize = 10
    textLabel6.TextXAlignment = Enum.TextXAlignment.Left
    textLabel6.Parent = header
    local hideButton = Instance.new("TextButton")
    hideButton.Name = "HideButton"
    hideButton.AnchorPoint = Vector2.new(1, 0.5)
    hideButton.Position = UDim2.new(1,  - 12, 0.5, 0)
    hideButton.Size = UDim2.fromOffset(26, 26)
    hideButton.BackgroundColor3 = color2
    hideButton.BorderSizePixel = 0
    hideButton.Text = "-"
    hideButton.TextColor3 = color4
    hideButton.TextSize = 18
    hideButton.Font = Enum.Font.GothamBold
    hideButton.AutoButtonColor =  false
    hideButton.Active =  true
    hideButton.ZIndex = 20
    hideButton.Parent = header
    local uiCorner3 = Instance.new("UICorner")
    uiCorner3.CornerRadius = UDim.new(0, 6)
    uiCorner3.Parent = hideButton
    local frame3 = Instance.new("Frame")
    frame3.Position = UDim2.fromOffset(0, 41)
    frame3.Size = UDim2.new(1, 0, 0, 1)
    frame3.BackgroundColor3 = color3
    frame3.BorderSizePixel = 0
    frame3.Parent = mainWindow
    tabStrip = Instance.new("Frame")
    tabStrip.Name = "TabStrip"
    tabStrip.Position = UDim2.fromOffset(12, 47)
    tabStrip.Size = UDim2.new(1,  - 24, 0, 28)
    tabStrip.BackgroundTransparency = 1
    tabStrip.BorderSizePixel = 0
    tabStrip.Parent = mainWindow
    local uiListLayout3 = Instance.new("UIListLayout")
    uiListLayout3.FillDirection = Enum.FillDirection.Horizontal
    uiListLayout3.Padding = UDim.new(0, 4)
    uiListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
    uiListLayout3.Parent = tabStrip
    local frame4 = Instance.new("Frame")
    frame4.Position = UDim2.fromOffset(12, 75)
    frame4.Size = UDim2.new(1,  - 24, 0, 1)
    frame4.BackgroundColor3 = color3
    frame4.BorderSizePixel = 0
    frame4.Parent = mainWindow
    f1(header.InputBegan, function(p18)
        local v92 = p18.UserInputType == Enum.UserInputType.MouseButton1 or p18.UserInputType == Enum.UserInputType.Touch
        local connect6
        if v92 then
            v21 =  true
            position3 = p18.Position
            position4 = mainWindow.Position
            connect6 =  nil
            connect6 = p18.Changed:Connect(function()
                if p18.UserInputState == Enum.UserInputState.End then
                    v21 =  false
                    connect6:Disconnect()
                end
            end
)
        end
    end
)
    f1(userInputService.InputChanged, function(p19)
        if v21 and(p19.UserInputType == Enum.UserInputType.MouseMovement or p19.UserInputType == Enum.UserInputType.Touch) then
            local v93 = p19.Position - position3
            mainWindow.Position = UDim2.new(position4.X.Scale, position4.X.Offset + v93.X, position4.Y.Scale, position4.Y.Offset + v93.Y)
        end
    end
)
    scrollingFrame = Instance.new("ScrollingFrame")
    scrollingFrame.Position = UDim2.fromOffset(12, 84)
    scrollingFrame.Size = UDim2.new(1,  - 24, 1,  - 96)
    scrollingFrame.BackgroundColor3 = Color3.fromRGB(8, 5, 18)
    scrollingFrame.BackgroundTransparency = 1
    scrollingFrame.BorderSizePixel = 0
    scrollingFrame.ClipsDescendants =  true
    scrollingFrame.CanvasSize = UDim2.fromOffset(0, 0)
    function f34(text2, p20, v94)
        local v95 = p20 and true or false
        local color6 = Color3.fromRGB(70, 255, 150)
        local color7 = Color3.fromRGB(44, 48, 66)
        local color8 = Color3.fromRGB(122, 130, 156)
        local textButton = Instance.new("TextButton")
        textButton.Size = UDim2.new(1, 0, 0, 36)
        textButton.BackgroundColor3 = Color3.fromRGB(17, 19, 26)
        textButton.BorderSizePixel = 0
        textButton.AutoButtonColor =  false
        textButton.Text = ""
        textButton.Parent = scrollingFrame
        local frame5 = Instance.new("Frame")
        frame5.Size = UDim2.new(0, 2, 1, 0)
        frame5.BackgroundColor3 = v95 and color6 or color7
        frame5.BorderSizePixel = 0
        frame5.Parent = textButton
        local textLabel7 = Instance.new("TextLabel")
        textLabel7.Position = UDim2.fromOffset(14, 0)
        textLabel7.Size = UDim2.new(1,  - 112, 1, 0)
        textLabel7.BackgroundTransparency = 1
        textLabel7.Text = text2
        textLabel7.TextColor3 = Color3.fromRGB(214, 220, 234)
        textLabel7.TextSize = 12
        textLabel7.Font = Enum.Font.Code
        textLabel7.TextXAlignment = Enum.TextXAlignment.Left
        textLabel7.TextTruncate = Enum.TextTruncate.AtEnd
        textLabel7.Parent = textButton
        local textLabel8 = Instance.new("TextLabel")
        textLabel8.AnchorPoint = Vector2.new(1, 0.5)
        textLabel8.Position = UDim2.new(1,  - 58, 0.5, 0)
        textLabel8.Size = UDim2.fromOffset(30, 14)
        textLabel8.BackgroundTransparency = 1
        textLabel8.Text = v95 and "ON" or "OFF"
        textLabel8.TextColor3 = v95 and color6 or color8
        textLabel8.TextSize = 10
        textLabel8.Font = Enum.Font.Code
        textLabel8.TextXAlignment = Enum.TextXAlignment.Right
        textLabel8.Parent = textButton
        local frame6 = Instance.new("Frame")
        frame6.AnchorPoint = Vector2.new(1, 0.5)
        frame6.Position = UDim2.new(1,  - 12, 0.5, 0)
        frame6.Size = UDim2.fromOffset(36, 16)
        frame6.BackgroundColor3 = Color3.fromRGB(9, 10, 14)
        frame6.BorderSizePixel = 0
        frame6.Parent = textButton
        local uiStroke7 = Instance.new("UIStroke")
        uiStroke7.Color = v95 and color6 or color7
        uiStroke7.Thickness = 1
        uiStroke7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        uiStroke7.Parent = frame6
        local frame7 = Instance.new("Frame")
        frame7.AnchorPoint = Vector2.new(0, 0.5)
        frame7.Size = UDim2.fromOffset(10, 10)
        frame7.Position = v95 and UDim2.new(1,  - 13, 0.5, 0) or UDim2.new(0, 3, 0.5, 0)
        frame7.BackgroundColor3 = v95 and color6 or color8
        frame7.BorderSizePixel = 0
        frame7.Parent = frame6
        f1(textButton.MouseButton1Click, function()
            v95 =  not v95
            frame7.Position = v95 and UDim2.new(1,  - 13, 0.5, 0) or UDim2.new(0, 3, 0.5, 0)
            frame7.BackgroundColor3 = v95 and color6 or color8
            uiStroke7.Color = v95 and color6 or color7
            frame5.BackgroundColor3 = v95 and color6 or color7
            textLabel8.Text = v95 and "ON" or "OFF"
            textLabel8.TextColor3 = v95 and color6 or color8
            v94(v95)
        end
)
        return textButton
    end
    scrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
    scrollingFrame.ScrollingDirection = Enum.ScrollingDirection.Y
    scrollingFrame.ScrollBarThickness = 3
    function f35(text3, p21, p22, fn2)
        local v96 = p22
        local textButton2 = Instance.new("TextButton")
        textButton2.Size = UDim2.new(1, 0, 0, 36)
        textButton2.BackgroundColor3 = Color3.fromRGB(17, 19, 26)
        textButton2.BorderSizePixel = 0
        textButton2.AutoButtonColor =  false
        textButton2.Text = ""
        textButton2.Parent = scrollingFrame
        local frame8 = Instance.new("Frame")
        frame8.Size = UDim2.new(0, 2, 1, 0)
        frame8.BackgroundColor3 = Color3.fromRGB(255, 92, 190)
        frame8.BorderSizePixel = 0
        frame8.Parent = textButton2
        local textLabel9 = Instance.new("TextLabel")
        textLabel9.Position = UDim2.fromOffset(14, 0)
        textLabel9.Size = UDim2.new(0.5, 0, 1, 0)
        textLabel9.BackgroundTransparency = 1
        textLabel9.Text = text3
        textLabel9.TextColor3 = Color3.fromRGB(214, 220, 234)
        textLabel9.TextSize = 12
        textLabel9.Font = Enum.Font.Code
        textLabel9.TextXAlignment = Enum.TextXAlignment.Left
        textLabel9.Parent = textButton2
        local textLabel10 = Instance.new("TextLabel")
        textLabel10.Position = UDim2.new(0.4, 0, 0, 0)
        textLabel10.Size = UDim2.new(0.6,  - 32, 1, 0)
        textLabel10.BackgroundTransparency = 1
        textLabel10.Text = v96
        textLabel10.TextColor3 = Color3.fromRGB(70, 255, 150)
        textLabel10.TextSize = 12
        textLabel10.Font = Enum.Font.Code
        textLabel10.TextXAlignment = Enum.TextXAlignment.Right
        textLabel10.Parent = textButton2
        local frame9 = Instance.new("Frame")
        frame9.AnchorPoint = Vector2.new(0.5, 0.5)
        frame9.Position = UDim2.new(1,  - 16, 0.5, 0)
        frame9.Size = UDim2.fromOffset(6, 6)
        frame9.BackgroundColor3 = Color3.fromRGB(255, 92, 190)
        frame9.BorderSizePixel = 0
        frame9.Parent = textButton2
        local v97 =  false
        local frame10
        local function f54()
            if frame10 then
                frame10:Destroy()
                frame10 =  nil
            end
            v97 =  false
        end
        f1(textButton2.MouseButton1Click, function()
            if v97 then
                f54()
                return
            else
                v97 =  true
                frame10 = Instance.new("Frame")
                frame10.ZIndex = 50
                frame10.ClipsDescendants =  true
                frame10.BackgroundColor3 = Color3.fromRGB(13, 15, 21)
                frame10.BorderSizePixel = 0
                frame10.Parent = playerVisualizationTool
                local uiStroke8 = Instance.new("UIStroke")
                uiStroke8.Color = Color3.fromRGB(255, 92, 190)
                uiStroke8.Thickness = 1
                uiStroke8.Transparency = 0.4
                uiStroke8.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                uiStroke8.Parent = frame10
                local absolutePosition = textButton2.AbsolutePosition
                local absoluteSize = textButton2.AbsoluteSize
                frame10.Position = UDim2.fromOffset(absolutePosition.X, absolutePosition.Y + absoluteSize.Y + 4)
                frame10.Size = UDim2.fromOffset(absoluteSize.X, math.min( # p21 * 32, 160))
                Instance.new("UIListLayout").Parent = frame10
                for index4, value4 in ipairs(p21) do
                    local v98 = value4
                    local textButton3 = Instance.new("TextButton")
                    textButton3.Size = UDim2.new(1, 0, 0, 32)
                    textButton3.BackgroundColor3 = Color3.fromRGB(255, 92, 190)
                    textButton3.BackgroundTransparency = 1
                    textButton3.BorderSizePixel = 0
                    textButton3.AutoButtonColor =  false
                    textButton3.Text = v98
                    textButton3.TextColor3 = v98 == v96 and Color3.fromRGB(70, 255, 150) or Color3.fromRGB(220, 225, 235)
                    textButton3.TextSize = 12
                    textButton3.Font = Enum.Font.Code
                    textButton3.TextXAlignment = Enum.TextXAlignment.Left
                    textButton3.ZIndex = 51
                    textButton3.Parent = frame10
                    local uiPadding = Instance.new("UIPadding")
                    uiPadding.PaddingLeft = UDim.new(0, 14)
                    uiPadding.Parent = textButton3
                    f1(textButton3.MouseButton1Click, function()
                        v96 = v98
                        textLabel10.Text = v98
                        fn2(v98)
                        f54()
                    end
)
                end
                return
            end
        end
)
        return textButton2
    end
    scrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(255, 92, 190)
    function f36(p23, p24, p25)
        return f34(p23, p24, p25)
    end
    scrollingFrame.Active =  true
    scrollingFrame.ScrollBarImageTransparency = 0.3
    scrollingFrame.ScrollingEnabled =  true
    scrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
    scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
    scrollingFrame.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
    uiListLayout = scrollingFrame:FindFirstChildOfClass("UIListLayout")
    if uiListLayout then
        uiListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            scrollingFrame.CanvasSize = UDim2.fromOffset(0, uiListLayout.AbsoluteContentSize.Y + 12)
        end
)
    end
    scrollingFrame.Parent = mainWindow
    function f4(text4, p26, p27, p28, p29, fn3, p30)
        local frame11 = Instance.new("Frame")
        frame11.Size = UDim2.new(1, 0, 0, 58)
        frame11.BackgroundColor3 = Color3.fromRGB(17, 19, 26)
        frame11.BorderSizePixel = 0
        frame11.Parent = scrollingFrame
        local frame12 = Instance.new("Frame")
        frame12.Size = UDim2.new(0, 2, 1, 0)
        frame12.BackgroundColor3 = Color3.fromRGB(255, 92, 190)
        frame12.BorderSizePixel = 0
        frame12.Parent = frame11
        local textLabel11 = Instance.new("TextLabel")
        textLabel11.Position = UDim2.fromOffset(14, 6)
        textLabel11.Size = UDim2.new(1,  - 100, 0, 18)
        textLabel11.BackgroundTransparency = 1
        textLabel11.TextColor3 = Color3.fromRGB(214, 220, 234)
        textLabel11.TextSize = 12
        textLabel11.Font = Enum.Font.Code
        textLabel11.TextXAlignment = Enum.TextXAlignment.Left
        textLabel11.Parent = frame11
        local textLabel12 = Instance.new("TextLabel")
        textLabel12.AnchorPoint = Vector2.new(1, 0)
        textLabel12.Position = UDim2.new(1,  - 12, 0, 6)
        textLabel12.Size = UDim2.fromOffset(76, 18)
        textLabel12.BackgroundTransparency = 1
        textLabel12.TextColor3 = Color3.fromRGB(70, 255, 150)
        textLabel12.TextSize = 12
        textLabel12.Font = Enum.Font.Code
        textLabel12.TextXAlignment = Enum.TextXAlignment.Right
        textLabel12.Parent = frame11
        local frame13 = Instance.new("Frame")
        frame13.Position = UDim2.fromOffset(14, 28)
        frame13.Size = UDim2.new(1,  - 28, 0, 22)
        frame13.BackgroundTransparency = 1
        frame13.BorderSizePixel = 0
        frame13.Active =  true
        frame13.Parent = frame11
        local frame14 = Instance.new("Frame")
        frame14.AnchorPoint = Vector2.new(0, 0.5)
        frame14.Position = UDim2.new(0, 0, 0.5, 0)
        frame14.Size = UDim2.new(1, 0, 0, 4)
        frame14.BackgroundColor3 = Color3.fromRGB(34, 38, 54)
        frame14.BorderSizePixel = 0
        frame14.Parent = frame13
        local frame15 = Instance.new("Frame")
        frame15.Size = UDim2.new(0, 0, 1, 0)
        frame15.BackgroundColor3 = Color3.fromRGB(255, 92, 190)
        frame15.BorderSizePixel = 0
        frame15.Parent = frame14
        local frame16 = Instance.new("Frame")
        frame16.AnchorPoint = Vector2.new(0.5, 0.5)
        frame16.Size = UDim2.fromOffset(8, 18)
        frame16.BackgroundColor3 = Color3.fromRGB(232, 236, 246)
        frame16.BorderSizePixel = 0
        frame16.Parent = frame13
        local uiStroke9 = Instance.new("UIStroke")
        uiStroke9.Color = Color3.fromRGB(255, 92, 190)
        uiStroke9.Thickness = 1
        uiStroke9.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        uiStroke9.Parent = frame16
        local v99 =  false
        local function f55(p31)
            if p30 then
                return p30(p31)
            end
            if p28 < 1 then
                return string.format("%.2f", p31)
            end
            return tostring(math.floor(p31 + 0.5))
        end
        local function f56(p32)
            local v100 = math.clamp(p32, p26, p27)
            if p28 > 0 then
                local v101 = math.floor((v100 - p26) / p28 + 0.5)
                v100 = math.clamp(p26 + v101 * p28, p26, p27)
            end
            local v102 = p27 - p26
            local v103 = v102 == 0 and 0 or(v100 - p26) / v102
            frame15.Size = UDim2.new(v103, 0, 1, 0)
            frame16.Position = UDim2.new(v103, 0, 0.5, 0)
            textLabel11.Text = text4
            textLabel12.Text = f55(v100)
            fn3(v100)
        end
        local function f57(p33)
            local v104 = math.max(frame13.AbsoluteSize.X, 1)
            f56(p26 +(p27 - p26) *(math.clamp(p33.Position.X - frame13.AbsolutePosition.X, 0, v104) / v104))
        end
        f1(frame13.InputBegan, function(p34)
            if p34.UserInputType == Enum.UserInputType.MouseButton1 or p34.UserInputType == Enum.UserInputType.Touch then
                v99 =  true
                f57(p34)
            end
        end
)
        f1(userInputService.InputChanged, function(p35)
            if v99 and(p35.UserInputType == Enum.UserInputType.MouseMovement or p35.UserInputType == Enum.UserInputType.Touch) then
                f57(p35)
            end
        end
)
        f1(userInputService.InputEnded, function(p36)
            if p36.UserInputType == Enum.UserInputType.MouseButton1 or p36.UserInputType == Enum.UserInputType.Touch then
                v99 =  false
            end
        end
)
        f56(p29)
        return frame11
    end
    function f5()
        for index5, value5 in ipairs(scrollingFrame:GetChildren()) do
            if not value5:IsA("UICorner") then
                value5:Destroy()
            end
        end
    end
    function f37(p37)
        local v105 = string.upper(p37)
        local v106 =  # v105 * 7
        pcall(function()
            v106 = textService:GetTextSize(v105, 11, Enum.Font.Code, Vector2.new(1000, 20)).X
        end
)
        local frame17 = Instance.new("Frame")
        frame17.Size = UDim2.new(1, 0, 0, 26)
        frame17.BackgroundTransparency = 1
        frame17.BorderSizePixel = 0
        frame17.Parent = scrollingFrame
        local frame18 = Instance.new("Frame")
        frame18.AnchorPoint = Vector2.new(0, 0.5)
        frame18.Position = UDim2.new(0, 3, 0.5, 0)
        frame18.Size = UDim2.fromOffset(6, 6)
        frame18.BackgroundColor3 = Color3.fromRGB(255, 92, 190)
        frame18.BorderSizePixel = 0
        frame18.Parent = frame17
        local textLabel13 = Instance.new("TextLabel")
        textLabel13.Position = UDim2.fromOffset(18, 0)
        textLabel13.Size = UDim2.new(0, v106 + 4, 1, 0)
        textLabel13.BackgroundTransparency = 1
        textLabel13.Text = v105
        textLabel13.TextColor3 = Color3.fromRGB(232, 236, 246)
        textLabel13.TextSize = 11
        textLabel13.Font = Enum.Font.Code
        textLabel13.TextXAlignment = Enum.TextXAlignment.Left
        textLabel13.Parent = frame17
        local frame19 = Instance.new("Frame")
        frame19.Position = UDim2.new(0, 18 + v106 + 14, 0.5, 0)
        frame19.Size = UDim2.new(1,  -(18 + v106 + 14), 0, 1)
        frame19.BackgroundColor3 = Color3.fromRGB(44, 48, 66)
        frame19.BorderSizePixel = 0
        frame19.Parent = frame17
        return frame17
    end
    function f6()
        local uiListLayout4 = Instance.new("UIListLayout")
        uiListLayout4.Padding = UDim.new(0, 6)
        uiListLayout4.SortOrder = Enum.SortOrder.LayoutOrder
        uiListLayout4.Parent = scrollingFrame
        v24(scrollingFrame)
        return uiListLayout4
    end
    v22 = {
    }
    function f7(p38, fn4)
        v23 = p38
        for key, value6 in pairs(v22) do
            local v107 = key == p38
            local label = value6:FindFirstChild("Label")
            local index6 = value6:FindFirstChild("Index")
            local bar = value6:FindFirstChild("Bar")
            if label then
                label.TextColor3 = v107 and Color3.fromRGB(240, 244, 252) or Color3.fromRGB(122, 130, 156)
            end
            if index6 then
                index6.TextColor3 = v107 and Color3.fromRGB(255, 92, 190) or Color3.fromRGB(88, 95, 120)
            end
            if bar then
                bar.Size = v107 and UDim2.new(1, 0, 0, 2) or UDim2.new(0, 0, 0, 2)
            end
            value6.BackgroundTransparency = v107 and 0.92 or 1
        end
        f5()
        scrollingFrame.CanvasPosition = Vector2.new(0, 0)
        fn4()
    end
    v23 =  nil
    local function f58(p39, p40)
        local v108 = 1
        for key2 in pairs(v22) do
            v108 = v108 + 1
        end
        local textButton4 = Instance.new("TextButton")
        textButton4.Size = UDim2.fromOffset(92, 28)
        textButton4.BackgroundColor3 = Color3.fromRGB(255, 92, 190)
        textButton4.BackgroundTransparency = 1
        textButton4.BorderSizePixel = 0
        textButton4.AutoButtonColor =  false
        textButton4.Text = ""
        textButton4.LayoutOrder = v108
        textButton4.Parent = tabStrip
        local index7 = Instance.new("TextLabel")
        index7.Name = "Index"
        index7.Position = UDim2.fromOffset(8, 0)
        index7.Size = UDim2.fromOffset(16, 28)
        index7.BackgroundTransparency = 1
        index7.Text = string.format("%02d", v108)
        index7.TextColor3 = Color3.fromRGB(88, 95, 120)
        index7.TextSize = 9
        index7.Font = Enum.Font.Code
        index7.TextXAlignment = Enum.TextXAlignment.Left
        index7.Parent = textButton4
        local label2 = Instance.new("TextLabel")
        label2.Name = "Label"
        label2.Position = UDim2.fromOffset(28, 0)
        label2.Size = UDim2.new(1,  - 32, 1, 0)
        label2.BackgroundTransparency = 1
        label2.Text = string.upper(p39)
        label2.TextColor3 = Color3.fromRGB(122, 130, 156)
        label2.TextSize = 12
        label2.Font = Enum.Font.Code
        label2.TextXAlignment = Enum.TextXAlignment.Left
        label2.Parent = textButton4
        local bar2 = Instance.new("Frame")
        bar2.Name = "Bar"
        bar2.AnchorPoint = Vector2.new(0.5, 1)
        bar2.Position = UDim2.new(0.5, 0, 1, 0)
        bar2.Size = UDim2.new(0, 0, 0, 2)
        bar2.BackgroundColor3 = Color3.fromRGB(255, 92, 190)
        bar2.BorderSizePixel = 0
        bar2.Parent = textButton4
        v22[p39] = textButton4
        return textButton4
    end
    v24 =  nil
    function v24(parent)
        local uiPadding2 = Instance.new("UIPadding")
        uiPadding2.PaddingTop = UDim.new(0, 2)
        uiPadding2.PaddingBottom = UDim.new(0, 12)
        uiPadding2.PaddingLeft = UDim.new(0, 0)
        uiPadding2.PaddingRight = UDim.new(0, 8)
        uiPadding2.Parent = parent
    end
    local v109 = f58("Main", "crosshair")
    local v110 = f58("ESP", "eye")
    local v111 = f58("Mics", "globe")
    local v112 = f58("About", "info")
    function f38(p41)
        v5.TrackingEnabled = p41
        if p41 then
            aimToggle.Text = "AIM"
            aimToggle.BackgroundColor3 = Color3.fromRGB(70, 255, 150)
            f27("Aimbot ON")
        else
            aimToggle.Text = "OFF"
            aimToggle.BackgroundColor3 = Color3.fromRGB(235, 65, 65)
            task.delay(0.3, function()
                if not v5.TrackingEnabled then
                    aimToggle.Text = "AIM"
                end
            end
)
            f27("Aimbot OFF")
        end
        fovCircle.Visible = p41 and v5.FOVEnabled
    end
    function f39(p42)
        local v113 = tonumber(p42) or 100
        if v113 >= 100 then
            return true
        end
        if v113 <= 0 then
            return false
        end
        return math.random(1, 100) <= v113
    end
    function f40(p43)
        if not p43 or p43 == localPlayer then
            return false
        elseif v5.SA2_TeamTarget == "All" then
            return true
        else
            if v5.SA2_TeamTarget == "Teams" then
                return v9(p43)
            end
            return not v9(p43)
        end
    end
    function f8(p44)
        if typeof(p44) ~= "Instance" then
            return false
        end
        if not(p44:IsA("RemoteEvent") or p44:IsA("RemoteFunction") or p44:IsA("UnreliableRemoteEvent")) then
            return false
        else
            local v114 = string.lower(p44.Name)
            for index8, value7 in ipairs(v5.SA2_RemoteNames or {
            }
) do
                if string.find(v114, string.lower(tostring(value7)), 1,  true) then
                    return true
                end
            end
            return false
        end
    end
    function f9(p45)
        local v115, v116, v117 = f26(p45)
        return v115 ~=  nil and v116 ~=  nil and v116.Health > 0 and v117 ~=  nil
    end
    v25 = {
        targetPart =  nil,
        targetPlayer =  nil,
        namecallOld =  nil,
        indexOld =  nil,
        mouseHookActive =  false,
        hookActive =  false,
        fovCircle =  nil,
        fovStroke =  nil,
    }
    function f10(p46)
        local v118 =  not p46 or not p46.Parent
        local zero
        if v118 then
            return nil
        else
            local v119 = tonumber(v5.SA2_Prediction)
            local v120 = math.clamp(v119 or 0, 0, 0.5)
            if v120 <= 0 then
                return p46.Position
            end
            zero = Vector3.zero
            pcall(function()
                zero = p46.AssemblyLinearVelocity
            end
)
            return p46.Position + zero * v120
        end
    end
    function f11()
        if v25.namecallOld and hookmetamethod then
            pcall(function()
                hookmetamethod(game, "__namecall", v25.namecallOld)
            end
)
            v25.namecallOld =  nil
        end
        if v25.indexOld and hookmetamethod then
            pcall(function()
                hookmetamethod(game, "__index", v25.indexOld)
            end
)
            v25.indexOld =  nil
        end
        v25.hookActive =  false
        v25.mouseHookActive =  false
    end
    function f12(p47)
        local v121 = v26(p47)
        if not v121 then
            return nil
        elseif v5.SA2_TargetPart == "Random" then
            if f39(v5.SA2_HeadshotChance) then
                return f25(v121, "Head") or f25(v121, "HumanoidRootPart")
            end
            return f25(v121, "HumanoidRootPart") or f25(v121, "Head")
        else
            return f25(v121, v5.SA2_TargetPart) or f25(v121, "Head") or f25(v121, "HumanoidRootPart")
        end
    end
    v26 =  nil
    function f13(p48, p49)
        if not v5.SA2_Wallcheck then
            return true
        end
        if not p48 or not p49 then
            return false
        else
            local currentCamera3 = v1.CurrentCamera
            if not currentCamera3 then
                return false
            else
                local position8 = currentCamera3.CFrame.Position
                local position9 = p49.Position
                local rayParams = v25.rayParams
                if not rayParams then
                    rayParams = RaycastParams.new()
                    rayParams.FilterType = Enum.RaycastFilterType.Exclude
                    rayParams.IgnoreWater =  true
                    v25.rayParams = rayParams
                end
                local character4 = localPlayer.Character
                local v122 = os.clock()
                local visibilityCache = v25.visibilityCache
                if not visibilityCache then
                    visibilityCache = setmetatable({
                    }, {
                        __mode = "k"
                    }
)
                    v25.visibilityCache = visibilityCache
                end
                local v123 = visibilityCache[p48]
                if v123 and v123.character == character4 and v122 - v123.time < 0.08 then
                    return v123.visible
                else
                    rayParams.FilterDescendantsInstances = {
                        character4,
                        p48
                    }
                    local v124 = v1:Raycast(position8, position9 - position8, rayParams) ==  nil
                    visibilityCache[p48] = {
                        character = character4,
                        time = v122,
                        visible = v124
                    }
                    return v124
                end
            end
        end
    end
    function v26(p50)
        if not p50 then
            return nil
        elseif typeof(p50) == "Instance" then
            if p50:IsA("Player") then
                return p50.Character
            end
            if p50:IsA("Model") then
                return p50
            end
            return nil
        else
            return nil
        end
    end
    function f14()
        if not v5.SilentAimHK then
            v25.targetPlayer =  nil
            v25.targetPart =  nil
            return
        else
            local targetPlayer, targetPart = f41()
            v25.targetPlayer = targetPlayer
            v25.targetPart = targetPart
            return
        end
    end
    function f41()
        local health
        if not v5.SilentAimHK then
            return nil,  nil
        else
            local currentCamera4 = v1.CurrentCamera
            if not currentCamera4 then
                return nil,  nil
            else
                local vector = Vector2.new(currentCamera4.ViewportSize.X / 2, currentCamera4.ViewportSize.Y / 2)
                local v125 =  nil
                local v126 =  nil
                local huge2 = math.huge
                local v127 =(tonumber(v5.SA2_FovRadius) or 100) ^ 2
                local v128 = tonumber(v5.SA2_TargetRange) or 500
                local character5 = localPlayer.Character
                local humanoidRootPart2 = character5 and character5:FindFirstChild("HumanoidRootPart")
                if not humanoidRootPart2 then
                    return nil,  nil
                else
                    local position10 = humanoidRootPart2.Position
                    local v129 = v128 * v128
                    for index9, value8 in ipairs(getPlayers) do
                        if f40(value8) and f9(value8) then
                            local character6 = value8.Character
                            local v130 = f12(value8)
                            if character6 and v130 then
                                local v131 = v130.Position - position10
                                local v132 = v131.X * v131.X + v131.Y * v131.Y + v131.Z * v131.Z
                                if v132 <= v129 then
                                    local v133, v134 = currentCamera4:WorldToViewportPoint(v130.Position)
                                    local v135 =  false
                                    local huge3 = math.huge
                                    if v5.SA2_ThreeSixtyMode then
                                        v135 =  true
                                    elseif v134 and v133.Z > 0 then
                                        local v136 = v133.X - vector.X
                                        local v137 = v133.Y - vector.Y
                                        huge3 = v136 * v136 + v137 * v137
                                        v135 = huge3 <= v127
                                    end
                                    if v135 and f13(character6, v130) then
                                        if v5.SA2_GetTarget == "Lowest Health" then
                                            local humanoid2 = character6:FindFirstChildOfClass("Humanoid")
                                            health = humanoid2 and humanoid2.Health or math.huge
                                        else
                                            health = v5.SA2_ThreeSixtyMode and v132 or huge3
                                        end
                                        if health < huge2 then
                                            v126 = v130
                                            huge2 = health
                                            v125 = value8
                                        end
                                    end
                                end
                            end
                        end
                    end
                    return v125, v126
                end
            end
        end
    end
    function f42(p51, p52, p53, p54)
        local v138 = typeof(p51)
        local v139 =  type(p52) == "string" and string.lower(p52) or ""
        if v138 == "Vector3" then
            if v139 == "direction" or v139 == "lookvector" or v139 == "dir" or v139 == "aimdirection" then
                local v140 = p53 - p51
                return v140.Magnitude > 0 and v140.Unit or p51
            end
            if v139 == "hitposition" or v139 == "hitpos" or v139 == "endposition" or v139 == "endpos" or v139 == "targetposition" then
                return p53
            end
            if v5.SA2_BulletTeleport and(v139 == "origin" or v139 == "start" or v139 == "startpos" or v139 == "startposition" or v139 == "muzzleposition") then
                local v141 = p53 - p51
                return v141.Magnitude > 0 and p53 - v141.Unit * 2 or p51
            end
            return p51
        elseif v138 == "CFrame" then
            if v139 == "direction" or v139 == "lookvector" or v139 == "dir" then
                return CFrame.lookAt(p51.Position, p53)
            end
            if v139 == "origin" or v139 == "start" or v139 == "startpos" or v139 == "startposition" then
                if v5.SA2_BulletTeleport then
                    local v142 = p53 - p51.Position
                    if v142.Magnitude > 0 then
                        return CFrame.new(p53 - v142.Unit * 2)
                    end
                    return p51
                end
                return p51
            end
            return p51
        elseif v138 == "Ray" then
            local origin = p51.Origin
            if v5.SA2_BulletTeleport then
                local v143 = p53 - origin
                if v143.Magnitude > 0 then
                    origin = p53 - v143.Unit * 2
                end
            end
            local v144 = p53 - origin
            return v144.Magnitude > 0 and Ray.new(origin, v144.Unit * 1000) or p51
        else
            if v138 == "table" then
                local v145 =  false
                local v146 = {
                }
                local v147 =  false
                local v148 =  false
                for key3, value9 in pairs(p51) do
                    local v149 =  type(key3) == "string" and string.lower(key3) or ""
                    v146[key3] = f42(value9, v149, p53, p54)
                    if v149 == "direction" or v149 == "lookvector" or v149 == "dir" then
                        v147 =  true
                    elseif v149 == "hitposition" or v149 == "hitpos" or v149 == "endposition" or v149 == "endpos" then
                        v148 =  true
                    elseif v149 == "hitpart" or v149 == "target" then
                        v145 =  true
                    end
                end
                if v147 and not v148 then
                    v146.hitPosition = p53
                end
                if v147 and not v145 then
                    v146.hitPart = p54
                end
                if v5.SA2_Wallbang then
                    for key4 in pairs(v146) do
                        local v150 =  type(key4) == "string" and string.lower(key4) or ""
                        if v150 == "hitthroughwall" or v150 == "ignorewalls" or v150 == "wallbang" or v150 == "penetrate" then
                            v146[key4] =  true
                        end
                    end
                end
                return v146
            end
            return p51
        end
    end
    function f15(p55, p56, p57)
        local v151 = table.clone(p55)
        for index10, value10 in ipairs(v151) do
            local v152 = typeof(value10)
            if v152 == "table" then
                v151[index10] = f42(value10,  nil, p56, p57)
            elseif v152 == "Vector3" then
                local v153 = p56 - value10
                if v153.Magnitude > 0 then
                    v151[index10] = v153.Unit * math.max(v153.Magnitude, 1)
                end
            elseif v152 == "CFrame" then
                v151[index10] = CFrame.lookAt(value10.Position, p56)
            elseif v152 == "Ray" then
                v151[index10] = f42(value10,  nil, p56, p57)
            end
        end
        return v151
    end
    function f16(p58)
        v5.SilentAimHK = p58
        if p58 then
            v27()
            f27("Silent Aim ON")
        else
            v25.targetPlayer =  nil
            v25.targetPart =  nil
            f11()
            f27("Silent Aim OFF")
        end
    end
    v27 =  nil
    function v27()
        if v25.hookActive then
            return
        end
        if type(hookmetamethod) ~= "function" or type(newcclosure) ~= "function" or type(getnamecallmethod) ~= "function" or type(checkcaller) ~= "function" then
            return
        end
        local v154 = {
        }
        local v155 =  nil
        local v156 =  - 1
        local v157 =  false
        local getMouse =  nil
        local f59
        function f59()
            local sa2AimMethods = v5.SA2_AimMethods or {
            }
            if sa2AimMethods == v155 and # sa2AimMethods == v156 then
                return
            end
            v155 = sa2AimMethods
            v156 =  # sa2AimMethods
            v154 = {
            }
            v157 =  false
            for index11, value11 in ipairs(sa2AimMethods) do
                v154[value11] =  true
                if value11 == "Mouse.Hit" then
                    v157 =  true
                end
            end
        end
        local f60
        function f60()
            getMouse = localPlayer:GetMouse()
            return getMouse
        end
        f59()
        local v158 =  nil
        v158 = hookmetamethod(game, "__namecall", newcclosure(function(...)
            if not v5.SilentAimHK then
                return v158(...)
            elseif v5._SA2HookBusy then
                return v158(...)
            elseif checkcaller() then
                return v158(...)
            else
                local v159 = getnamecallmethod()
                local v160 = v159 == "Raycast"
                local v161 =  not v160
                local v162 = v159 == "FireServer"
                local v163 = v159 == "InvokeServer"
                if v161 and not v162 and not v163 then
                    return v158(...)
                else
                    f59()
                    local v164 = v154
                    if v160 and not v164.Raycast then
                        return v158(...)
                    end
                    if v162 and not v164.FireServer then
                        return v158(...)
                    end
                    if v163 and not v164.InvokeServer then
                        return v158(...)
                    else
                        local v165 = {
...
                        }
                        if(v162 or v163) and not f8(v165[1]) then
                            return v158(...)
                        end
                        if not v5.SA2_ThreeSixtyMode and not f39(v5.SA2_HitChance) then
                            return v158(...)
                        else
                            local targetPart2 = v25.targetPart
                            if not targetPart2 or not targetPart2.Parent then
                                return v158(...)
                            else
                                local v166 = f10(targetPart2)
                                if not v166 then
                                    return v158(...)
                                elseif v160 then
                                    local v167 = v165[2]
                                    local v168 = v165[3]
                                    if typeof(v167) ~= "Vector3" or typeof(v168) ~= "Vector3" then
                                        return v158(...)
                                    elseif v5.SA2_BulletTeleport then
                                        local v169 = v166 - v167
                                        if v169.Magnitude > 0 then
                                            local unit = v169.Unit
                                            v165[2] = v166 - unit * 2
                                            v165[3] = unit *(v169.Magnitude + 2)
                                        end
                                        return v158(unpack(v165))
                                    elseif v5.SA2_Wallbang then
                                        return {
                                            Instance = targetPart2,
                                            Position = v166,
                                            Normal =(v166 - v167).Magnitude > 0 and(v166 - v167).Unit or Vector3.new(0,
                                            1,
                                            0),
                                            Material = targetPart2.Material,
                                            Distance =(v166 - v167).Magnitude,
                                        }
                                    else
                                        local v170 = v166 - v167
                                        if v170.Magnitude > 0 then
                                            v165[3] = v170.Unit * v168.Magnitude
                                        end
                                        return v158(unpack(v165))
                                    end
                                else
                                    return v158(unpack((f15(v165, v166, targetPart2))))
                                end
                            end
                        end
                    end
                end
            end
        end
))
        v25.namecallOld = v158
        v25.hookActive =  true
        local v171
        if not v25.indexOld and v157 then
            v171 =  nil
            v171 = hookmetamethod(game, "__index", newcclosure(function(p59, p60)
                if not v5.SilentAimHK or v5._SA2HookBusy or checkcaller() then
                    return v171(p59, p60)
                end
                f59()
                if not v157 then
                    return v171(p59, p60)
                end
                if p59 ~= (getMouse or f60()) then
                    return v171(p59, p60)
                else
                    local targetPart3 = v25.targetPart
                    if not targetPart3 or not targetPart3.Parent then
                        return v171(p59, p60)
                    else
                        local currentCamera5 = v1.CurrentCamera
                        local v172 =  not currentCamera5
                        local v173 = f10(targetPart3)
                        if v172 or not v173 then
                            return v171(p59, p60)
                        elseif p60 == "Hit" then
                            local v174 = v173 - currentCamera5.CFrame.Position
                            if v174.Magnitude > 0 then
                                return CFrame.lookAt(v173, v173 + v174.Unit)
                            end
                            return v171(p59, p60)
                        elseif p60 == "Target" then
                            return targetPart3
                        elseif p60 == "TargetFilter" then
                            return nil
                        elseif p60 == "UnitRay" then
                            local v175 = v173 - currentCamera5.CFrame.Position
                            if v175.Magnitude > 0 then
                                return Ray.new(currentCamera5.CFrame.Position, v175.Unit *(v175.Magnitude + 5))
                            end
                            return v171(p59, p60)
                        elseif p60 == "X" then
                            return currentCamera5:WorldToViewportPoint(v173).X
                        else
                            if p60 == "Y" then
                                return currentCamera5:WorldToViewportPoint(v173).Y
                            end
                            return v171(p59, p60)
                        end
                    end
                end
            end
))
            v25.indexOld = v171
            v25.mouseHookActive =  true
        end
    end
    f1(runService.Heartbeat, function()
        if not v5.SilentAimHK then
            return
        else
            local v176 = os.clock()
            if v176 -(v25.lastScan or 0) < 0.066667 then
                return
            end
            v25.lastScan = v176
            f14()
            return
        end
    end
)
    local mastersamSilentAimFOV = Instance.new("ScreenGui")
    mastersamSilentAimFOV.Name = "MASTERSAMSilentAimFOV"
    mastersamSilentAimFOV.ResetOnSpawn =  false
    mastersamSilentAimFOV.IgnoreGuiInset =  true
    mastersamSilentAimFOV.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    mastersamSilentAimFOV.Parent = localPlayer:WaitForChild("PlayerGui")
    fov = Instance.new("Frame")
    fov.Name = "FOV"
    fov.AnchorPoint = Vector2.new(0.5, 0.5)
    fov.BackgroundTransparency = 1
    fov.BorderSizePixel = 0
    fov.Visible =  false
    fov.Parent = mastersamSilentAimFOV
    Instance.new("UICorner", fov).CornerRadius = UDim.new(1, 0)
    uiStroke3 = Instance.new("UIStroke")
    uiStroke3.Thickness = 1
    uiStroke3.Parent = fov
    v25.fovCircle = fov
    v25.fovStroke = uiStroke3
    f1(runService.Heartbeat, function()
        if not v5.SilentAimHK then
            if fov.Visible then
                fov.Visible =  false
            end
            return
        else
            local v177 = os.clock()
            if v177 -(v25.lastFovUpdate or 0) < 0.25 then
                return
            else
                v25.lastFovUpdate = v177
                local currentCamera6 = v1.CurrentCamera
                if not currentCamera6 then
                    return
                else
                    local sa2FovVisible = v5.SilentAimHK and v5.SA2_FovVisible and not v5.SA2_ThreeSixtyMode
                    fov.Visible = sa2FovVisible
                    if sa2FovVisible then
                        local viewportSize3 = currentCamera6.ViewportSize
                        fov.Position = UDim2.fromOffset(viewportSize3.X / 2, viewportSize3.Y / 2)
                        fov.Size = UDim2.fromOffset(math.max(2, v5.SA2_FovRadius * 2), math.max(2, v5.SA2_FovRadius * 2))
                        uiStroke3.Color = v25.targetPart and v5.SA2_FovTargetColor or v5.SA2_FovColor
                        uiStroke3.Transparency = 1 - math.clamp(v5.SA2_FovTransparency, 0, 1)
                    end
                    return
                end
            end
        end
    end
)
    f1(userInputService.InputBegan, function(p61, p62)
        if p62 then
            return
        end
        if p61.KeyCode == v5.SA2_Key then
            f16( not v5.SilentAimHK)
        end
    end
)
    if Window and type(Window.OnDestroy) == "function" then
        pcall(function()
            Window:OnDestroy(function()
                pcall(function()
                    f11()
                end
)
            end
)
        end
)
    end
    function f43()
        f6()
        f37("Visual Overlay")
        f36("Enable ESP", v5.ESPEnabled, function(espEnabled)
            v5.ESPEnabled = espEnabled
        end
)
        f36("Box ESP", v5.BoxESP, function(boxESP)
            v5.BoxESP = boxESP
        end
)
        f36("Name Tags", v5.NameTags, function(nameTags)
            v5.NameTags = nameTags
        end
)
        f36("Distance", v5.Distance, function(distance)
            v5.Distance = distance
        end
)
    end
    function f45()
        f6()
        f37("Silent Aim & Aimbot & Triggerbot")
        f34("Silent aim", v5.SilentAimHK, function(p63)
            f16(p63)
            task.defer(function()
                f7("Main", f45)
            end
)
        end
)
        if v5.SilentAimHK then
            f34("Wall Check", v5.SA2_Wallcheck, function(sa2Wallcheck)
                v5.SA2_Wallcheck = sa2Wallcheck
            end
)
            f34("Show FOV", v5.SA2_FovVisible, function(sa2FovVisible2)
                v5.SA2_FovVisible = sa2FovVisible2
            end
)
            f4("FOV", 10, 500, 5, v5.SA2_FovRadius, function(sa2FovRadius)
                v5.SA2_FovRadius = sa2FovRadius
            end
)
        end
        f34("Aimbot", v5.TrackingEnabled, function(p64)
            f38(p64)
            task.defer(function()
                f7("Main", f45)
            end
)
        end
)
        if v5.TrackingEnabled then
            f37("Aim Settings")
            f4("Smoothness", 0.1, 0.9, 0.05, v5.Smoothness, function(smoothness)
                v5.Smoothness = smoothness
            end
, function(p65)
                return string.format("%.2f", p65)
            end
)
            f4("FOV Size", 10, 500, 5, v5.FOVSize, function(p66)
                v5.FOVSize = p66
                fovCircle.Size = UDim2.fromOffset(p66 * 2, p66 * 2)
            end
)
            f34("Wall Check", v5.WallCheck, function(wallCheck)
                v5.WallCheck = wallCheck
            end
)
            f34("Team Check", v5.TeamCheck, function(p67)
                v5.TeamCheck = p67
                f27("Team Check "..(p67 and "ON" or "OFF").. "  •  You: "..tostring(v8(localPlayer) or "not detected"))
                local count3 = 0
                for index12, value12 in ipairs(players:GetPlayers()) do
                    if value12 ~= localPlayer and count3 < 3 then
                        count3 = count3 + 1
                        f27(string.sub(value12.Name, 1, 10).. ": "..tostring(v8(value12) or "not detected")..(v9(value12) and " (mate)" or " (enemy)"))
                    end
                end
            end
)
            f35("Aim Part", {
                "Head",
                "Torso",
                "(Soon)"
            }, v5.AimPart, function(aimPart)
                v5.AimPart = aimPart
            end
)
            f34("Hide FOV Circle",  not v5.FOVEnabled, function(p68)
                v5.FOVEnabled =  not p68
                fovCircle.Visible = v5.FOVEnabled and v5.TrackingEnabled
            end
)
        end
        f34("Triggerbot", v5.Triggerbot, function(p69)
            v5.Triggerbot = p69
            if triggerbotFOV then
                local v178 = triggerbotFOV
                v178.Visible = p69 and v5.TriggerbotFOVVisible
            end
            f27(p69 and "Triggerbot ON" or "Triggerbot OFF")
            task.defer(function()
                if v23 == "Main" then
                    f7("Main", f45)
                end
            end
)
        end
)
        if v5.Triggerbot then
            v5.TriggerbotRate = 100
            v5.TriggerbotInterval = 0.01
            f34("Show FOV", v5.TriggerbotFOVVisible, function(p70)
                v5.TriggerbotFOVVisible = p70
                if triggerbotFOV then
                    local v179 = triggerbotFOV
                    v179.Visible = v5.Triggerbot and p70
                end
            end
)
            f4("FOV", 10, 500, 5, v5.TriggerbotFOV, function(p71)
                v5.TriggerbotFOV = p71
                if triggerbotFOV then
                    triggerbotFOV.Size = UDim2.fromOffset(p71 * 2, p71 * 2)
                end
            end
)
        end
    end
    v28 =  nil
    v29 =  false
    fpsCounter =  nil
    textLabel =  nil
    mastersamFPSOverlay =  nil
    connect =  nil
    function f17()
        if connect then
            connect:Disconnect()
            connect =  nil
        end
        if fpsCounter then
            fpsCounter:Destroy()
            fpsCounter =  nil
            textLabel =  nil
        end
        if mastersamFPSOverlay then
            mastersamFPSOverlay:Destroy()
            mastersamFPSOverlay =  nil
        end
        v30 = 0
        v31 = 0
    end
    v30 = 0
    v31 = 0
    function f46()
        f17()
        mastersamFPSOverlay = Instance.new("ScreenGui")
        mastersamFPSOverlay.Name = "MastersamFPSOverlay"
        mastersamFPSOverlay.ResetOnSpawn =  false
        mastersamFPSOverlay.IgnoreGuiInset =  true
        mastersamFPSOverlay.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        mastersamFPSOverlay.DisplayOrder = 9999
        mastersamFPSOverlay.Parent = localPlayer:WaitForChild("PlayerGui")
        fpsCounter = Instance.new("Frame")
        fpsCounter.Name = "FPSCounter"
        fpsCounter.AnchorPoint = Vector2.new(1, 0)
        fpsCounter.Position = UDim2.new(1,  - 14, 0, 14)
        fpsCounter.Size = UDim2.fromOffset(82, 28)
        fpsCounter.BackgroundColor3 = Color3.fromRGB(17, 19, 26)
        fpsCounter.BackgroundTransparency = 0.12
        fpsCounter.BorderSizePixel = 0
        fpsCounter.ZIndex = 100
        fpsCounter.Parent = mastersamFPSOverlay
        local textLabel14 = Instance.new("TextLabel")
        textLabel14.Position = UDim2.fromOffset(8, 4)
        textLabel14.Size = UDim2.new(0.38, 0, 0, 20)
        textLabel14.BackgroundTransparency = 1
        textLabel14.Text = "FPS"
        textLabel14.TextColor3 = Color3.fromRGB(255, 170, 205)
        textLabel14.TextSize = 10
        textLabel14.Font = Enum.Font.BuilderSansBold
        textLabel14.TextXAlignment = Enum.TextXAlignment.Left
        textLabel14.ZIndex = 101
        textLabel14.Parent = fpsCounter
        textLabel = Instance.new("TextLabel")
        textLabel.Position = UDim2.new(0.38, 0, 0, 4)
        textLabel.Size = UDim2.new(0.62,  - 8, 0, 20)
        textLabel.BackgroundTransparency = 1
        textLabel.Text = "-- FPS"
        textLabel.TextColor3 = Color3.fromRGB(80, 230, 140)
        textLabel.TextSize = 10
        textLabel.Font = Enum.Font.BuilderSansBold
        textLabel.TextXAlignment = Enum.TextXAlignment.Right
        textLabel.ZIndex = 101
        textLabel.Parent = fpsCounter
        local textLabel15 = Instance.new("TextLabel")
        textLabel15.Position = UDim2.fromOffset(0, 0)
        textLabel15.Size = UDim2.fromOffset(0, 0)
        textLabel15.BackgroundTransparency = 1
        textLabel15.Text = ""
        textLabel15.TextColor3 = Color3.fromRGB(150, 160, 180)
        textLabel15.TextSize = 1
        textLabel15.Font = Enum.Font.BuilderSansMedium
        textLabel15.TextXAlignment = Enum.TextXAlignment.Left
        textLabel15.ZIndex = 101
        textLabel15.Parent = fpsCounter
        connect = runService.RenderStepped:Connect(function(delta)
            if not v29 or not textLabel then
                return
            end
            if delta > 0 then
                v30 = v30 + delta
                v31 = v31 + 1
            end
            if v30 >= 1 then
                textLabel.Text = tostring((math.floor(v31 / v30 + 0.5))).. " FPS"
                v30 = 0
                v31 = 0
            end
        end
)
    end
    v32 = {
    }
    terrain = workspace.Terrain
    v33 = 0.004
    v34 =  false
    v35 = 0
    v36 = {
        quality =  nil,
        meshDetail =  nil,
        lighting = {
        },
        terrain = {
        },
        instances = setmetatable({
        },
        {
            __mode = "k"
        }
),
    }
    v37 = {
    }
    v38 = 0
    v39 =  false
    connect2 =  nil
    connect3 =  nil
    v40 = {
        GlobalShadows =  false,
        FogStart = 9000000000,
        FogEnd = 9000000000,
        Brightness = 0.5,
        Ambient = Color3.fromRGB(180,
        180,
        180),
        OutdoorAmbient = Color3.fromRGB(180,
        180,
        180),
        ShadowSoftness = 0,
        EnvironmentDiffuseScale = 0,
        EnvironmentSpecularScale = 0,
        ExposureCompensation = 0,
    }
    v41 = {
        WaterWaveSize = 0,
        WaterWaveSpeed = 0,
        WaterReflectance = 0,
        WaterTransparency = 0,
        Decoration =  false,
    }
    function f47(p72, p73)
        return p72[p73]
    end
    function f22(p74, p75, p76)
        p74[p75] = p76
    end
    function f18(p77, p78)
        for key5, value13 in pairs(p78) do
            pcall(f22, p77, key5, value13)
            p78[key5] =  nil
        end
    end
    function f48(p79, p80, p81)
        for key6, value14 in pairs(p81) do
            local v180, v181 = pcall(f47, p79, key6)
            if v180 then
                if p80[key6] ==  nil then
                    p80[key6] = v181
                end
                pcall(f22, p79, key6, value14)
            end
        end
    end
    function f19(p82)
        while v34 and v35 == p82 do
            task.wait()
            if v35 ~= p82 then
                break
            else
                local v182 = os.clock()
                while v38 > 0 do
                    v37[v38] =  nil
                    v38 = v38 - 1
                    if os.clock() - v182 > v33 then
                        break
                    end
                end
                if v38 == 0 then
                    break
                end
            end
        end
        if v35 == p82 then
            v39 =  false
        end
    end
    function f49(p83)
        v38 = v38 + 1
        v37[v38] = p83
        if not v39 then
            v39 =  true
            task.spawn(f19, v35)
        end
    end
    function v32.IsEnabled()
        return v34
    end
    function v32.Enable()
        if v34 then
            return
        end
        v34 =  true
        v35 = v35 + 1
        local rendering = settings().Rendering
        pcall(function()
            v36.quality = rendering.QualityLevel
            v36.meshDetail = rendering.MeshPartDetailLevel
        end
)
        pcall(function()
            rendering.QualityLevel = Enum.QualityLevel.Level01
        end
)
        pcall(function()
            rendering.MeshPartDetailLevel = Enum.MeshPartDetailLevel.Level01
        end
)
        f48(lighting, v36.lighting, v40)
        f48(terrain, v36.terrain, v41)
        v37 = {
        }
        v38 = 0
        for index13, value15 in ipairs(lighting:GetDescendants()) do
            v38 = v38 + 1
            v37[v38] = value15
        end
        for index14, value16 in ipairs(workspace:GetDescendants()) do
            v38 = v38 + 1
            v37[v38] = value16
        end
        v39 =  true
        task.spawn(f19, v35)
        if connect2 then
            connect2:Disconnect()
        end
        if connect3 then
            connect3:Disconnect()
        end
        connect2 = workspace.DescendantAdded:Connect(f49)
        connect3 = lighting.DescendantAdded:Connect(f49)
        f27("Potato Graphics enabled")
    end
    function v32.Disable()
        if not v34 then
            return
        end
        v34 =  false
        v35 = v35 + 1
        local v183 = v35
        if connect2 then
            connect2:Disconnect()
            connect2 =  nil
        end
        if connect3 then
            connect3:Disconnect()
            connect3 =  nil
        end
        v37 = {
        }
        v38 = 0
        v39 =  false
        pcall(function()
            local rendering2 = settings().Rendering
            if v36.quality then
                rendering2.QualityLevel = v36.quality
            end
            if v36.meshDetail then
                rendering2.MeshPartDetailLevel = v36.meshDetail
            end
        end
)
        v36.quality =  nil
        v36.meshDetail =  nil
        f18(lighting, v36.lighting)
        f18(terrain, v36.terrain)
        task.spawn(function()
            local v184 = {
            }
            for key7 in pairs(v36.instances) do
                v184[ # v184 + 1] = key7
            end
            local v185 = os.clock()
            for index15, value17 in ipairs(v184) do
                if v35 ~= v183 then
                    return
                else
                    local v186 = v36.instances[value17]
                    if v186 then
                        if value17.Parent then
                            for key8, value18 in pairs(v186) do
                                pcall(f22, value17, key8, value18)
                            end
                        end
                        v36.instances[value17] =  nil
                    end
                    if os.clock() - v185 > v33 then
                        task.wait()
                        v185 = os.clock()
                    end
                end
            end
        end
)
        f27("Potato Graphics disabled")
    end
    function v32.CanUnlockFps()
        return false
    end
    function v32.IsFpsUnlocked()
        return false
    end
    function f20(p84)
        local v187 = p84 and v42[p84]
        if p84 and p84.Parent and v187 then
            p84.Size = v187
        end
        if p84 then
            v42[p84] =  nil
        end
    end
    function f21(p85)
        if p85 and v42[p85] ==  nil then
            v42[p85] = p85.Size
        end
    end
    function v32.SetFpsUnlock()
        pcall(function()
            if type(setfpscap) == "function" then
                setfpscap(60)
            end
        end
)
    end
    function f50()
        f6()
        f37("PERFORMANCE")
        f34("FPS Meter", v29, function(p86)
            v29 = p86
            if p86 then
                f27("FPS Meter enabled")
            else
                f17()
                f27("FPS Meter disabled")
            end
            task.defer(function()
                if v23 == "Mics" then
                    f7("Mics", f50)
                end
            end
)
        end
)
        if v29 then
            f46()
        end
        f37("POTATO GRAPHICS")
        f34("Enable Potato Graphics", v32.IsEnabled(), function(p87)
            if p87 then
                v32.Enable()
            else
                v32.Disable()
            end
            task.defer(function()
                if v23 == "Mics" then
                    f7("Mics", f50)
                end
            end
)
        end
)
        if v32.CanUnlockFps() then
            f34("Unlock FPS Cap", v32.IsFpsUnlocked(), function(p88)
                v32.SetFpsUnlock(p88)
                task.defer(function()
                    if v23 == "Mics" then
                        f7("Mics", f50)
                    end
                end
)
            end
)
        end
        f37("Character Modifiers")
        f34("Big Head", v5.BigHead, function(p89)
            v5.BigHead = p89
            v28()
            f27(p89 and "Big Head enabled" or "Big Head disabled")
        end
)
        f34("Hitbox Expander", v5.HitboxExpander, function(p90)
            v5.HitboxExpander = p90
            v28()
            f27(p90 and "Hitbox Expander enabled" or "Hitbox Expander disabled")
            task.defer(function()
                if v23 == "Mics" then
                    f7("Mics", f50)
                end
            end
)
        end
)
        if v5.HitboxExpander then
            f4("Hitbox Size", 2, 20, 1, math.clamp(v5.HitboxSize, 2, 20), function(p91)
                v5.HitboxSize = math.clamp(p91, 2, 20)
                v28()
            end
)
        end
    end
    v42 = {
    }
    function v28()
        for index16, value19 in ipairs(players:GetPlayers()) do
            if value19 ~= localPlayer and value19.Character then
                local character7 = value19.Character
                local head = character7:FindFirstChild("Head")
                local humanoidRootPart3 = character7:FindFirstChild("HumanoidRootPart")
                if head then
                    f21(head)
                    if v5.BigHead then
                        head.Size = Vector3.new(v5.BigHeadSize, v5.BigHeadSize, v5.BigHeadSize)
                        head.CanCollide =  false
                        local specialMesh = head:FindFirstChildOfClass("SpecialMesh")
                        if specialMesh then
                            specialMesh.Scale = Vector3.new(v5.BigHeadSize, v5.BigHeadSize, v5.BigHeadSize)
                        end
                    else
                        f20(head)
                        local specialMesh2 = head:FindFirstChildOfClass("SpecialMesh")
                        if specialMesh2 then
                            specialMesh2.Scale = Vector3.new(1, 1, 1)
                        end
                    end
                end
                if humanoidRootPart3 then
                    f21(humanoidRootPart3)
                    if v5.HitboxExpander then
                        humanoidRootPart3.Size = Vector3.new(v5.HitboxSize, v5.HitboxSize, v5.HitboxSize)
                        humanoidRootPart3.Transparency = 0.7
                        humanoidRootPart3.CanCollide =  false
                    else
                        f20(humanoidRootPart3)
                        humanoidRootPart3.Transparency = 1
                    end
                end
            end
        end
    end
    f1(localPlayer.CharacterAdded, function()
        task.wait(0.5)
        v28()
    end
)
    f1(players.PlayerAdded, function(p92)
        f1(p92.CharacterAdded, function()
            task.wait(0.5)
            v28()
        end
)
    end
)
    v43 =  nil
    function f51(text5, text6, p93)
        local frame20 = Instance.new("Frame")
        frame20.Size = UDim2.new(1, 0, 0, 58)
        frame20.BackgroundColor3 = Color3.fromRGB(17, 19, 26)
        frame20.BorderSizePixel = 0
        frame20.Parent = scrollingFrame
        local textLabel16 = Instance.new("TextLabel")
        textLabel16.Position = UDim2.fromOffset(12, 6)
        textLabel16.Size = UDim2.new(1,  - 84, 0, 20)
        textLabel16.BackgroundTransparency = 1
        textLabel16.Text = text5
        textLabel16.TextColor3 = Color3.fromRGB(230, 235, 245)
        textLabel16.TextSize = 12
        textLabel16.Font = Enum.Font.BuilderSansBold
        textLabel16.TextXAlignment = Enum.TextXAlignment.Left
        textLabel16.Parent = frame20
        local textBox = Instance.new("TextBox")
        textBox.Position = UDim2.fromOffset(12, 28)
        textBox.Size = UDim2.new(1,  - 84, 0, 22)
        textBox.BackgroundTransparency = 1
        textBox.ClearTextOnFocus =  false
        textBox.Text = text6
        textBox.TextColor3 = Color3.fromRGB(122, 130, 156)
        textBox.TextSize = 10
        textBox.Font = Enum.Font.BuilderSans
        textBox.TextXAlignment = Enum.TextXAlignment.Left
        textBox.TextTruncate = Enum.TextTruncate.AtEnd
        textBox.Parent = frame20
        local textButton5 = Instance.new("TextButton")
        textButton5.AnchorPoint = Vector2.new(1, 0.5)
        textButton5.Position = UDim2.new(1,  - 10, 0.5, 0)
        textButton5.Size = UDim2.fromOffset(58, 28)
        textButton5.BackgroundColor3 = Color3.fromRGB(255, 90, 170)
        textButton5.BorderSizePixel = 0
        textButton5.AutoButtonColor =  false
        textButton5.Text = "COPY"
        textButton5.TextColor3 = Color3.new(1, 1, 1)
        textButton5.TextSize = 10
        textButton5.Font = Enum.Font.BuilderSansBold
        textButton5.Parent = frame20
        f1(textButton5.MouseButton1Click, function()
            v43(textBox.Text, p93)
        end
)
        return frame20
    end
    function v43(p94, p95)
        if not p94 or p94 == "" or p94:find("PASTE_") then
            f27("Set your "..p95.. " link first")
            return
        end
        if typeof(setclipboard) == "function" then
            setclipboard(p94)
            f27(p95.. " link copied")
        else
            f27("Select the link and copy it")
        end
    end
    function f52()
        f6()
        f51("Discord", v5.DiscordLink, "Discord")
        f37("UPCOMING FEATURES")
        for index17, value20 in ipairs({
            "Rapid Fire",
            "Fast Reload"
        }
) do
            local textLabel17 = Instance.new("TextLabel")
            textLabel17.Size = UDim2.new(1, 0, 0, 28)
            textLabel17.BackgroundColor3 = Color3.fromRGB(17, 19, 26)
            textLabel17.BorderSizePixel = 0
            textLabel17.Text = "• "..value20
            textLabel17.TextColor3 = Color3.fromRGB(190, 195, 210)
            textLabel17.TextSize = 11
            textLabel17.Font = Enum.Font.BuilderSans
            textLabel17.TextXAlignment = Enum.TextXAlignment.Left
            textLabel17.Parent = scrollingFrame
            local uiPadding3 = Instance.new("UIPadding")
            uiPadding3.PaddingLeft = UDim.new(0, 12)
            uiPadding3.Parent = textLabel17
        end
    end
    f1(v109.MouseButton1Click, function()
        f7("Main", f45)
    end
)
    f1(v110.MouseButton1Click, function()
        f7("ESP", f43)
    end
)
    f1(v111.MouseButton1Click, function()
        f7("Mics", f50)
    end
)
    f1(v112.MouseButton1Click, function()
        f7("About", f52)
    end
)
    f7("Main", f45)
    function f53(p96)
        local v188 = v7[p96]
        if not v188 then
            return
        end
        for key9, value21 in pairs(v188) do
            if typeof(value21) == "Instance" and value21.Parent then
                value21:Destroy()
            end
        end
        v7[p96] =  nil
    end
    local function f61(p97)
        if p97 == localPlayer then
            return
        else
            f53(p97)
            local playerToolBox = Instance.new("Highlight")
            playerToolBox.Name = "PlayerToolBox"
            playerToolBox.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            playerToolBox.FillTransparency = 1
            playerToolBox.OutlineTransparency = 0
            playerToolBox.Enabled =  false
            playerToolBox.Parent = playerVisualizationTool
            local playerToolTag = Instance.new("BillboardGui")
            playerToolTag.Name = "PlayerToolTag"
            playerToolTag.Size = UDim2.fromOffset(170, 70)
            playerToolTag.StudsOffset = Vector3.new(0, 3, 0)
            playerToolTag.AlwaysOnTop =  true
            playerToolTag.Enabled =  false
            playerToolTag.Parent = playerVisualizationTool
            local frame21 = Instance.new("Frame")
            frame21.Size = UDim2.fromScale(1, 1)
            frame21.BackgroundTransparency = 1
            frame21.Parent = playerToolTag
            local name = Instance.new("TextLabel")
            name.Name = "Name"
            name.Size = UDim2.new(1, 0, 0, 22)
            name.BackgroundTransparency = 1
            name.TextColor3 = Color3.new(1, 1, 1)
            name.TextStrokeTransparency = 0.4
            name.Font = Enum.Font.BuilderSansBold
            name.TextSize = 13
            name.Parent = frame21
            local distance2 = Instance.new("TextLabel")
            distance2.Name = "Distance"
            distance2.Position = UDim2.fromOffset(0, 20)
            distance2.Size = UDim2.new(1, 0, 0, 18)
            distance2.BackgroundTransparency = 1
            distance2.TextColor3 = Color3.fromRGB(205, 210, 220)
            distance2.TextStrokeTransparency = 0.5
            distance2.Font = Enum.Font.BuilderSans
            distance2.TextSize = 11
            distance2.Parent = frame21
            local frame22 = Instance.new("Frame")
            frame22.Position = UDim2.fromOffset( - 8, 0)
            frame22.Size = UDim2.fromOffset(4, 35)
            frame22.BackgroundColor3 = Color3.fromRGB(45, 45, 50)
            frame22.BorderSizePixel = 0
            frame22.Parent = frame21
            local frame23 = Instance.new("Frame")
            frame23.AnchorPoint = Vector2.new(0, 1)
            frame23.Position = UDim2.fromScale(0, 1)
            frame23.Size = UDim2.fromScale(1, 1)
            frame23.BackgroundColor3 = Color3.fromRGB(70, 220, 110)
            frame23.BorderSizePixel = 0
            frame23.Parent = frame22
            v7[p97] = {
                Highlight = playerToolBox,
                Billboard = playerToolTag,
                Name = name,
                Distance = distance2,
                HealthBackground = frame22,
                HealthFill = frame23,
            }
            return
        end
    end
    for index18, value22 in ipairs(players:GetPlayers()) do
        f61(value22)
    end
    f1(players.PlayerAdded, f61)
    f1(players.PlayerRemoving, f53)
    v44 = 0
    v45 =  nil
    v46 = 0
    v47 =  false
    f1(runService.RenderStepped, function()
        currentCamera = v1.CurrentCamera
        if not currentCamera then
            return
        else
            local trackingEnabled = v5.TrackingEnabled
            local fovEnabled = v5.FOVEnabled and trackingEnabled
            if fovCircle.Visible ~= fovEnabled then
                fovCircle.Visible = fovEnabled
            end
            if not trackingEnabled then
            else
                local viewportSize4 = currentCamera.ViewportSize
                fovCircle.Position = UDim2.fromOffset(viewportSize4.X / 2, viewportSize4.Y / 2)
                fovCircle.Size = UDim2.fromOffset(v5.FOVSize * 2, v5.FOVSize * 2)
                local v189 = os.clock()
                local v190 = v45
                local v191 =  # getPlayers
                local v192 = 0.083333333333333
                if v191 > 20 then
                    v192 = 0.1
                elseif v191 > 12 then
                    v192 = 0.090909090909091
                end
                if v189 - v46 >= v192 or v190 and not f26(v190) then
                    v46 = v189
                    v190 = f32()
                    v45 = v190
                end
                local color9 = v190
                color9 = v190 and Color3.fromRGB(255, 255, 255)
                local color10 = color9
                color10 = color9 or Color3.fromRGB(255, 90, 170)
                if uiStroke2.Color ~= color10 then
                    uiStroke2.Color = color10
                end
                if v190 then
                    local v193 = f26(v190)
                    if v193 then
                        local v194 = f2(v193)
                        if v194 then
                            local cframe = CFrame.lookAt(currentCamera.CFrame.Position, v194.Position)
                            local v195 = math.clamp(v5.Smoothness, 0.1, 0.9)
                            currentCamera.CFrame = currentCamera.CFrame:Lerp(cframe, v195)
                        end
                    end
                end
            end
            local v196 = os.clock()
            local v197 = 0.1
            local v198 =  # getPlayers
            if v198 > 24 then
                v197 = 0.14285714285714
            elseif v198 > 16 then
                v197 = 0.125
            end
            if v196 - v44 < v197 then
                return
            else
                v44 = v196
                local espEnabled2 = v5.ESPEnabled
                if not espEnabled2 then
                    if not v47 then
                        return
                    end
                    v47 =  false
                else
                    v47 =  true
                end
                local boxESP2 = v5.BoxESP
                local nameTags2 = v5.NameTags
                local distance3 = v5.Distance
                local healthBar = v5.HealthBar
                local v199 = nameTags2
                v199 = nameTags2 or distance3 or healthBar
                local boxColor = v5.BoxColor
                local humanoidRootPart4 =  nil
                if espEnabled2 and distance3 then
                    local character8 = localPlayer.Character
                    humanoidRootPart4 = character8 and character8:FindFirstChild("HumanoidRootPart")
                end
                for key10, value23 in pairs(v7) do
                    local v200 =  nil
                    local v201 =  nil
                    local v202 =  nil
                    if espEnabled2 then
                        v201, v202, v200 = f26(key10)
                    end
                    local highlight = value23.Highlight
                    local billboard = value23.Billboard
                    if espEnabled2 and v201 then
                        if highlight then
                            if highlight.Adornee ~= v201 then
                                highlight.Adornee = v201
                            end
                            if highlight.OutlineColor ~= boxColor then
                                highlight.OutlineColor = boxColor
                            end
                            if highlight.Enabled ~= boxESP2 then
                                highlight.Enabled = boxESP2
                            end
                        end
                        if billboard then
                            local head2 = v201:FindFirstChild("Head") or v200
                            if billboard.Adornee ~= head2 then
                                billboard.Adornee = head2
                            end
                            if billboard.Enabled ~= v199 then
                                billboard.Enabled = v199
                            end
                        end
                        if v199 then
                            local name2 = value23.Name
                            if name2 then
                                if name2.Visible ~= nameTags2 then
                                    name2.Visible = nameTags2
                                end
                                if nameTags2 and name2.Text ~= key10.DisplayName then
                                    name2.Text = key10.DisplayName
                                end
                            end
                            local distance4 = value23.Distance
                            if distance4 then
                                if distance4.Visible ~= distance3 then
                                    distance4.Visible = distance3
                                end
                                if distance3 then
                                    local v203 = ""
                                    if humanoidRootPart4 then
                                        v203 = string.format("%d m", math.floor((humanoidRootPart4.Position - v200.Position).Magnitude + 0.5))
                                    end
                                    if distance4.Text ~= v203 then
                                        distance4.Text = v203
                                    end
                                end
                            end
                            local healthBackground = value23.HealthBackground
                            local healthFill = value23.HealthFill
                            if healthBackground and healthFill then
                                if healthBackground.Visible ~= healthBar then
                                    healthBackground.Visible = healthBar
                                    healthFill.Visible = healthBar
                                end
                                if healthBar then
                                    local v204 = math.clamp(v202.Health / math.max(v202.MaxHealth, 1), 0, 1)
                                    healthFill.Size = UDim2.new(1, 0, v204, 0)
                                    healthFill.BackgroundColor3 = Color3.fromRGB(70 +(1 - v204) * 185, 220 * v204, 80)
                                end
                            end
                        end
                    else
                        if highlight and highlight.Enabled then
                            highlight.Enabled =  false
                        end
                        if billboard and billboard.Enabled then
                            billboard.Enabled =  false
                        end
                    end
                end
                return
            end
        end
    end
)
    f1(aimToggle.MouseButton1Click, function()
        if v20 then
            v20 =  false
            return
        end
        f38( not v5.TrackingEnabled)
    end
)
    menuReopenButton = Instance.new("ImageButton")
    menuReopenButton.Name = "MenuReopenButton"
    menuReopenButton.AnchorPoint = Vector2.new(1, 1)
    menuReopenButton.Position = UDim2.new(1,  - 18, 1,  - 18)
    menuReopenButton.Size = UDim2.fromOffset(52, 52)
    menuReopenButton.BackgroundColor3 = Color3.fromRGB(9, 10, 14)
    menuReopenButton.BackgroundTransparency = 0
    menuReopenButton.Image = ""
    menuReopenButton.AutoButtonColor =  false
    menuReopenButton.ScaleType = Enum.ScaleType.Fit
    menuReopenButton.Visible =  false
    menuReopenButton.ZIndex = 1000
    menuReopenButton.Parent = playerVisualizationTool
    local uiCorner4 = Instance.new("UICorner")
    uiCorner4.CornerRadius = UDim.new(1, 0)
    uiCorner4.Parent = menuReopenButton
    local uiStroke10 = Instance.new("UIStroke")
    uiStroke10.Color = Color3.fromRGB(255, 92, 190)
    uiStroke10.Thickness = 1.5
    uiStroke10.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    uiStroke10.Parent = menuReopenButton
    local textLabel18 = Instance.new("TextLabel")
    textLabel18.BackgroundTransparency = 1
    textLabel18.Size = UDim2.fromScale(1, 1)
    textLabel18.Font = Enum.Font.GothamBold
    textLabel18.Text = "M"
    textLabel18.TextColor3 = Color3.fromRGB(232, 236, 246)
    textLabel18.TextSize = 20
    textLabel18.Parent = menuReopenButton
    v48 =  false
    v49 =  false
    position5 =  nil
    position6 =  nil
    f1(menuReopenButton.InputBegan, function(p98)
        local v205 = p98.UserInputType == Enum.UserInputType.MouseButton1 or p98.UserInputType == Enum.UserInputType.Touch
        local connect7
        if v205 then
            v48 =  true
            v49 =  false
            position5 = p98.Position
            position6 = menuReopenButton.Position
            connect7 =  nil
            connect7 = p98.Changed:Connect(function()
                if p98.UserInputState == Enum.UserInputState.End then
                    v48 =  false
                    connect7:Disconnect()
                end
            end
)
        end
    end
)
    f1(userInputService.InputChanged, function(p99)
        if v48 and(p99.UserInputType == Enum.UserInputType.MouseMovement or p99.UserInputType == Enum.UserInputType.Touch) then
            local v206 = p99.Position - position5
            if math.abs(v206.X) > 4 or math.abs(v206.Y) > 4 then
                v49 =  true
            end
            menuReopenButton.Position = UDim2.new(position6.X.Scale, position6.X.Offset + v206.X, position6.Y.Scale, position6.Y.Offset + v206.Y)
        end
    end
)
    function f24()
        mainWindow.Visible =  true
        menuReopenButton.Visible =  false
    end
    function f23()
        mainWindow.Visible =  false
        menuReopenButton.Visible =  true
    end
    f1(menuReopenButton.Activated, function()
        if v49 then
            v49 =  false
            return
        end
        f24()
    end
)
    f1(menuReopenButton.MouseButton1Click, function()
        if v49 then
            v49 =  false
            return
        end
        f24()
    end
)
    local findFirstChild3 = mainWindow:FindFirstChild("HideButton",  true) or mainWindow:FindFirstChild("MinimizeButton",  true) or mainWindow:FindFirstChild("MinusButton",  true)
    if findFirstChild3 and findFirstChild3:IsA("GuiButton") then
        f1(findFirstChild3.Activated, function()
            f23()
        end
)
    end
    task.defer(function()
        local v207, v208 = pcall(function()
            return tweenService
        end
)
        local v209 =  not v207 or not v208
        local mastersamPCSpoofPrompt, v210
        if v209 then
            return
        else
            local playerGui3 = localPlayer:FindFirstChildOfClass("PlayerGui")
            if not playerGui3 then
                return
            else
                local mastersamStartupIntro = Instance.new("ScreenGui")
                mastersamStartupIntro.Name = "MastersamStartupIntro"
                mastersamStartupIntro.ResetOnSpawn =  false
                mastersamStartupIntro.IgnoreGuiInset =  true
                mastersamStartupIntro.DisplayOrder = 10000
                mastersamStartupIntro.Parent = playerGui3
                local frame24 = Instance.new("Frame")
                frame24.Size = UDim2.fromScale(1, 1)
                frame24.BackgroundColor3 = Color3.fromRGB(7, 8, 12)
                frame24.BackgroundTransparency = 0
                frame24.BorderSizePixel = 0
                frame24.Parent = mastersamStartupIntro
                local textLabel19 = Instance.new("TextLabel")
                textLabel19.AnchorPoint = Vector2.new(0.5, 0.5)
                textLabel19.Position = UDim2.fromScale(0.5, 0.46)
                textLabel19.Size = UDim2.fromOffset(520, 70)
                textLabel19.BackgroundTransparency = 1
                textLabel19.Text = "MASTERSAM HUB"
                textLabel19.TextColor3 = Color3.fromRGB(240, 243, 250)
                textLabel19.TextTransparency = 1
                textLabel19.Font = Enum.Font.GothamBold
                textLabel19.TextSize = 34
                textLabel19.Parent = frame24
                local textLabel20 = Instance.new("TextLabel")
                textLabel20.AnchorPoint = Vector2.new(0.5, 0.5)
                textLabel20.Position = UDim2.fromScale(0.5, 0.54)
                textLabel20.Size = UDim2.fromOffset(520, 35)
                textLabel20.BackgroundTransparency = 1
                textLabel20.Text = "Optimized • Ready"
                textLabel20.TextColor3 = Color3.fromRGB(180, 185, 198)
                textLabel20.TextTransparency = 1
                textLabel20.Font = Enum.Font.Gotham
                textLabel20.TextSize = 15
                textLabel20.Parent = frame24
                local frame25 = Instance.new("Frame")
                frame25.AnchorPoint = Vector2.new(0.5, 0.5)
                frame25.Position = UDim2.fromScale(0.5, 0.6)
                frame25.Size = UDim2.fromOffset(0, 3)
                frame25.BackgroundColor3 = Color3.fromRGB(255, 92, 190)
                frame25.BorderSizePixel = 0
                frame25.Parent = frame24
                local tweenInfo = TweenInfo.new(0.45, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
                local tweenInfo2 = TweenInfo.new(0.75, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
                v208:Create(textLabel19, tweenInfo, {
                    TextTransparency = 0
                }
):Play()
                v208:Create(textLabel20, TweenInfo.new(0.55, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    TextTransparency = 0
                }
):Play()
                v208:Create(frame25, tweenInfo2, {
                    Size = UDim2.fromOffset(220,
                    3)
                }
):Play()
                task.wait(1.15)
                local tweenInfo3 = TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
                v208:Create(textLabel19, tweenInfo3, {
                    TextTransparency = 1
                }
):Play()
                v208:Create(textLabel20, tweenInfo3, {
                    TextTransparency = 1
                }
):Play()
                v208:Create(frame25, tweenInfo3, {
                    BackgroundTransparency = 1
                }
):Play()
                local create = v208:Create(frame24, tweenInfo3, {
                    BackgroundTransparency = 1
                }
)
                create:Play()
                create.Completed:Wait()
                mastersamStartupIntro:Destroy()
                mastersamPCSpoofPrompt = Instance.new("ScreenGui")
                mastersamPCSpoofPrompt.Name = "MastersamPCSpoofPrompt"
                mastersamPCSpoofPrompt.ResetOnSpawn =  false
                mastersamPCSpoofPrompt.IgnoreGuiInset =  true
                mastersamPCSpoofPrompt.DisplayOrder = 10001
                mastersamPCSpoofPrompt.Parent = playerGui3
                local frame26 = Instance.new("Frame")
                frame26.AnchorPoint = Vector2.new(0.5, 0.5)
                frame26.Position = UDim2.fromScale(0.5, 0.5)
                frame26.Size = UDim2.fromOffset(360, 170)
                frame26.BackgroundColor3 = Color3.fromRGB(15, 17, 24)
                frame26.BorderSizePixel = 0
                frame26.Parent = mastersamPCSpoofPrompt
                local uiCorner5 = Instance.new("UICorner")
                uiCorner5.CornerRadius = UDim.new(0, 14)
                uiCorner5.Parent = frame26
                local uiStroke11 = Instance.new("UIStroke")
                uiStroke11.Color = Color3.fromRGB(255, 92, 190)
                uiStroke11.Thickness = 1.5
                uiStroke11.Transparency = 0.2
                uiStroke11.Parent = frame26
                local textLabel21 = Instance.new("TextLabel")
                textLabel21.BackgroundTransparency = 1
                textLabel21.Position = UDim2.fromOffset(22, 20)
                textLabel21.Size = UDim2.new(1,  - 44, 0, 45)
                textLabel21.Text = "Enable PC Spoof?"
                textLabel21.TextColor3 = Color3.fromRGB(245, 247, 252)
                textLabel21.Font = Enum.Font.GothamBold
                textLabel21.TextSize = 22
                textLabel21.Parent = frame26
                local textLabel22 = Instance.new("TextLabel")
                textLabel22.BackgroundTransparency = 1
                textLabel22.Position = UDim2.fromOffset(22, 62)
                textLabel22.Size = UDim2.new(1,  - 44, 0, 35)
                textLabel22.Text = "This is optional. You can continue without it."
                textLabel22.TextColor3 = Color3.fromRGB(170, 175, 188)
                textLabel22.Font = Enum.Font.Gotham
                textLabel22.TextSize = 13
                textLabel22.Parent = frame26
                local textButton6 = Instance.new("TextButton")
                textButton6.Position = UDim2.fromOffset(22, 112)
                textButton6.Size = UDim2.fromOffset(150, 38)
                textButton6.Text = "ENABLE"
                textButton6.TextColor3 = Color3.fromRGB(255, 255, 255)
                textButton6.Font = Enum.Font.GothamBold
                textButton6.TextSize = 13
                textButton6.BackgroundColor3 = Color3.fromRGB(255, 92, 190)
                textButton6.BorderSizePixel = 0
                textButton6.Parent = frame26
                Instance.new("UICorner", textButton6).CornerRadius = UDim.new(0, 9)
                local clone = textButton6:Clone()
                clone.Text = "NO, THANKS"
                clone.BackgroundColor3 = Color3.fromRGB(35, 38, 48)
                clone.Position = UDim2.fromOffset(188, 112)
                clone.Parent = frame26
                v210 =  false
                textButton6.MouseButton1Click:Connect(function()
                    if v210 then
                        return
                    end
                    v210 =  true
                    mastersamPCSpoofPrompt:Destroy()
                    task.spawn(function()
                    end
)
                end
)
                clone.MouseButton1Click:Connect(function()
                    if v210 then
                        return
                    end
                    v210 =  true
                    mastersamPCSpoofPrompt:Destroy()
                end
)
                return
            end
        end
    end
)
    return
end
