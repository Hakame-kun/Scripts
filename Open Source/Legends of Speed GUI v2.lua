-- ============================================================
-- Legends of Speed GUI v2
-- Can't load because too long?
-- Use this loadstring
-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Hakame-kun/Scripts/refs/heads/main/Open%20Source/Legends%20of%20Speed%20GUI%20v2.lua", true)
-- ============================================================

-- ────────────────────────────────────────────────────────────
if _G._LoS_Running then
    _G._LoS_Running = false
    task.wait(0.3)
end
_G._LoS_Running = true

-- ────────────────────────────────────────────────────────────
local library = {count = 0, queue = {}, callbacks = {}, rainbowtable = {}, toggled = true, binds = {}};
local defaults; do
    local dragger = {}; do
        local mouse        = game:GetService("Players").LocalPlayer:GetMouse();
        local inputService = game:GetService('UserInputService');
        local heartbeat    = game:GetService("RunService").Heartbeat;

        function dragger.new(frame)
            local s, event = pcall(function()
                return frame.MouseEnter
            end)

            if s then
                frame.Active = true;

                event:Connect(function()
                    local input = frame.InputBegan:Connect(function(key)
                        if key.UserInputType == Enum.UserInputType.MouseButton1 then
                            local objectPosition = Vector2.new(mouse.X - frame.AbsolutePosition.X, mouse.Y - frame.AbsolutePosition.Y);
                            while heartbeat:Wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                                pcall(function()
                                    frame:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X, 0, mouse.Y - objectPosition.Y), 'Out', 'Linear', 0.1, true);
                                end)
                            end
                        end
                    end)

                    local leave;
                    leave = frame.MouseLeave:Connect(function()
                        input:Disconnect();
                        leave:Disconnect();
                    end)
                end)
            end
        end

        game:GetService('UserInputService').InputBegan:Connect(function(key, gpe)
            if (not gpe) then
                if key.KeyCode == Enum.KeyCode.RightControl then
                    library.toggled = not library.toggled;
                    for i, data in next, library.queue do
                        local pos = (library.toggled and data.p or UDim2.new(-1, 0, -0.5, 0))
                        data.w:TweenPosition(pos, (library.toggled and 'Out' or 'In'), 'Quad', 0.15, true)
                        task.wait();
                    end
                end
            end
        end)
    end

    local types = {}; do
        types.__index = types;

        function types.window(name, options)
            library.count = library.count + 1
            local newWindow = library:Create('Frame', {
                Name = name;
                Size = UDim2.new(0, 190, 0, 30);
                BackgroundColor3 = options.topcolor;
                BorderSizePixel = 0;
                Parent = library.container;
                Position = UDim2.new(0, (15 + (200 * library.count) - 200), 0, 0);
                ZIndex = 3;
                library:Create('TextLabel', {
                    Text = name;
                    Size = UDim2.new(1, -10, 1, 0);
                    Position = UDim2.new(0, 5, 0, 0);
                    BackgroundTransparency = 1;
                    Font = Enum.Font.Code;
                    TextSize = options.titlesize;
                    Font = options.titlefont;
                    TextColor3 = options.titletextcolor;
                    TextStrokeTransparency = library.options.titlestroke;
                    TextStrokeColor3 = library.options.titlestrokecolor;
                    ZIndex = 3;
                });
                library:Create("TextButton", {
                    Size = UDim2.new(0, 30, 0, 30);
                    Position = UDim2.new(1, -35, 0, 0);
                    BackgroundTransparency = 1;
                    Text = "-";
                    TextSize = options.titlesize;
                    Font = options.titlefont;
                    Name = 'window_toggle';
                    TextColor3 = options.titletextcolor;
                    TextStrokeTransparency = library.options.titlestroke;
                    TextStrokeColor3 = library.options.titlestrokecolor;
                    ZIndex = 3;
                });
                library:Create("Frame", {
                    Name = 'Underline';
                    Size = UDim2.new(1, 0, 0, 2);
                    Position = UDim2.new(0, 0, 1, -2);
                    BackgroundColor3 = (options.underlinecolor ~= "rainbow" and options.underlinecolor or Color3.new());
                    BorderSizePixel = 0;
                    ZIndex = 3;
                });
                library:Create('Frame', {
                    Name = 'container';
                    Position = UDim2.new(0, 0, 1, 0);
                    Size = UDim2.new(1, 0, 0, 0);
                    BorderSizePixel = 0;
                    BackgroundColor3 = options.bgcolor;
                    ClipsDescendants = false;
                    library:Create('UIListLayout', {
                        Name = 'List';
                        SortOrder = Enum.SortOrder.LayoutOrder;
                    })
                });
            })

            if options.underlinecolor == "rainbow" then
                table.insert(library.rainbowtable, newWindow:FindFirstChild('Underline'))
            end

            local window = setmetatable({
                count = 0;
                object = newWindow;
                container = newWindow.container;
                toggled = true;
                flags = {};
            }, types)

            table.insert(library.queue, {
                w = window.object;
                p = window.object.Position;
            })

            newWindow:FindFirstChild("window_toggle").MouseButton1Click:Connect(function()
                window.toggled = not window.toggled;
                newWindow:FindFirstChild("window_toggle").Text = (window.toggled and "+" or "-")
                if (not window.toggled) then
                    window.container.ClipsDescendants = true;
                end
                task.wait();
                local y = 0;
                for i, v in next, window.container:GetChildren() do
                    if (not v:IsA('UIListLayout')) then
                        y = y + v.AbsoluteSize.Y;
                    end
                end

                local targetSize = window.toggled and UDim2.new(1, 0, 0, y + 5) or UDim2.new(1, 0, 0, 0);
                local targetDirection = window.toggled and "In" or "Out"

                window.container:TweenSize(targetSize, targetDirection, "Quint", .3, true)
                task.wait(.3)
                if window.toggled then
                    window.container.ClipsDescendants = false;
                end
            end)

            return window;
        end

        function types:Resize()
            local y = 0;
            for i, v in next, self.container:GetChildren() do
                if (not v:IsA('UIListLayout')) then
                    y = y + v.AbsoluteSize.Y;
                end
            end
            self.container.Size = UDim2.new(1, 0, 0, y + 5)
        end

        function types:GetOrder()
            local c = 0;
            for i, v in next, self.container:GetChildren() do
                if (not v:IsA('UIListLayout')) then
                    c = c + 1
                end
            end
            return c
        end

        function types:Toggle(name, options, callback)
            local default  = options.default or false;
            local location = options.location or self.flags;
            local flag     = options.flag or "";
            local callback = callback or function() end;

            location[flag] = default;

            local check = library:Create('Frame', {
                BackgroundTransparency = 1;
                Size = UDim2.new(1, 0, 0, 25);
                LayoutOrder = self:GetOrder();
                library:Create('TextLabel', {
                    Name = name;
                    Text = "\r" .. name;
                    BackgroundTransparency = 1;
                    TextColor3 = library.options.textcolor;
                    Position = UDim2.new(0, 5, 0, 0);
                    Size = UDim2.new(1, -5, 1, 0);
                    TextXAlignment = Enum.TextXAlignment.Left;
                    Font = library.options.font;
                    TextSize = library.options.fontsize;
                    TextStrokeTransparency = library.options.textstroke;
                    TextStrokeColor3 = library.options.strokecolor;
                    library:Create('TextButton', {
                        Text = (location[flag] and utf8.char(10003) or "");
                        Font = library.options.font;
                        TextSize = library.options.fontsize;
                        Name = 'Checkmark';
                        Size = UDim2.new(0, 20, 0, 20);
                        Position = UDim2.new(1, -25, 0, 4);
                        TextColor3 = library.options.textcolor;
                        BackgroundColor3 = library.options.bgcolor;
                        BorderColor3 = library.options.bordercolor;
                        TextStrokeTransparency = library.options.textstroke;
                        TextStrokeColor3 = library.options.strokecolor;
                    })
                });
                Parent = self.container;
            });

            local function click(t)
                location[flag] = not location[flag];
                callback(location[flag])
                check:FindFirstChild(name).Checkmark.Text = location[flag] and utf8.char(10003) or "";
            end

            check:FindFirstChild(name).Checkmark.MouseButton1Click:Connect(click)
            library.callbacks[flag] = click;

            if location[flag] == true then
                callback(location[flag])
            end

            self:Resize();
            return {
                Set = function(self, b)
                    location[flag] = b;
                    callback(location[flag])
                    check:FindFirstChild(name).Checkmark.Text = location[flag] and utf8.char(10003) or "";
                end
            }
        end

        function types:Button(name, callback)
            callback = callback or function() end;

            local check = library:Create('Frame', {
                BackgroundTransparency = 1;
                Size = UDim2.new(1, 0, 0, 25);
                LayoutOrder = self:GetOrder();
                library:Create('TextButton', {
                    Name = name;
                    Text = name;
                    BackgroundColor3 = library.options.btncolor;
                    BorderColor3 = library.options.bordercolor;
                    TextStrokeTransparency = library.options.textstroke;
                    TextStrokeColor3 = library.options.strokecolor;
                    TextColor3 = library.options.textcolor;
                    Position = UDim2.new(0, 5, 0, 5);
                    Size = UDim2.new(1, -10, 0, 20);
                    Font = library.options.font;
                    TextSize = library.options.fontsize;
                });
                Parent = self.container;
            });

            check:FindFirstChild(name).MouseButton1Click:Connect(callback)
            self:Resize();

            return {
                Fire = function()
                    callback();
                end
            }
        end

        function types:Box(name, options, callback)
            local type_    = options.type or "";
            local default  = options.default or "";
            local data     = options.data
            local location = options.location or self.flags;
            local flag     = options.flag or "";
            local callback = callback or function() end;
            local min      = options.min or 0;
            local max      = options.max or 9e9;

            if type_ == 'number' and (not tonumber(default)) then
                location[flag] = default;
            else
                location[flag] = "";
                default = "";
            end

            local check = library:Create('Frame', {
                BackgroundTransparency = 1;
                Size = UDim2.new(1, 0, 0, 25);
                LayoutOrder = self:GetOrder();
                library:Create('TextLabel', {
                    Name = name;
                    Text = "\r" .. name;
                    BackgroundTransparency = 1;
                    TextColor3 = library.options.textcolor;
                    TextStrokeTransparency = library.options.textstroke;
                    TextStrokeColor3 = library.options.strokecolor;
                    Position = UDim2.new(0, 5, 0, 0);
                    Size = UDim2.new(1, -5, 1, 0);
                    TextXAlignment = Enum.TextXAlignment.Left;
                    Font = library.options.font;
                    TextSize = library.options.fontsize;
                    library:Create('TextBox', {
                        TextStrokeTransparency = library.options.textstroke;
                        TextStrokeColor3 = library.options.strokecolor;
                        Text = tostring(default);
                        Font = library.options.font;
                        TextSize = library.options.fontsize;
                        Name = 'Box';
                        Size = UDim2.new(0, 60, 0, 20);
                        Position = UDim2.new(1, -65, 0, 3);
                        TextColor3 = library.options.textcolor;
                        BackgroundColor3 = library.options.boxcolor;
                        BorderColor3 = library.options.bordercolor;
                        PlaceholderColor3 = library.options.placeholdercolor;
                    })
                });
                Parent = self.container;
            });

            local box = check:FindFirstChild(name):FindFirstChild('Box');
            box.FocusLost:Connect(function(e)
                local old = location[flag];
                if type_ == "number" then
                    local num = tonumber(box.Text)
                    if (not num) then
                        box.Text = tonumber(location[flag])
                    else
                        location[flag] = math.clamp(num, min, max)
                        box.Text = tonumber(location[flag])
                    end
                else
                    location[flag] = tostring(box.Text)
                end
                callback(location[flag], old, e)
            end)

            if type_ == 'number' then
                box:GetPropertyChangedSignal('Text'):Connect(function()
                    box.Text = string.gsub(box.Text, "[%a+]", "");
                end)
            end

            self:Resize();
            return box
        end

        function types:Bind(name, options, callback)
            local location     = options.location or self.flags;
            local keyboardOnly = options.kbonly or false
            local flag         = options.flag or "";
            local callback     = callback or function() end;
            local default      = options.default;

            if keyboardOnly and (not tostring(default):find('MouseButton')) then
                location[flag] = default
            end

            local banned = {
                Return = true; Space = true; Tab = true; Unknown = true;
            }

            local shortNames = {
                RightControl = 'RightCtrl'; LeftControl = 'LeftCtrl';
                LeftShift = 'LShift'; RightShift = 'RShift';
                MouseButton1 = "Mouse1"; MouseButton2 = "Mouse2";
            }

            local allowed = { MouseButton1 = true; MouseButton2 = true; }

            local nm = (default and (shortNames[default.Name] or default.Name) or "None");
            local check = library:Create('Frame', {
                BackgroundTransparency = 1;
                Size = UDim2.new(1, 0, 0, 30);
                LayoutOrder = self:GetOrder();
                library:Create('TextLabel', {
                    Name = name;
                    Text = "\r" .. name;
                    BackgroundTransparency = 1;
                    TextColor3 = library.options.textcolor;
                    Position = UDim2.new(0, 5, 0, 0);
                    Size = UDim2.new(1, -5, 1, 0);
                    TextXAlignment = Enum.TextXAlignment.Left;
                    Font = library.options.font;
                    TextSize = library.options.fontsize;
                    TextStrokeTransparency = library.options.textstroke;
                    TextStrokeColor3 = library.options.strokecolor;
                    BorderColor3 = library.options.bordercolor;
                    BorderSizePixel = 1;
                    library:Create('TextButton', {
                        Name = 'Keybind';
                        Text = nm;
                        TextStrokeTransparency = library.options.textstroke;
                        TextStrokeColor3 = library.options.strokecolor;
                        Font = library.options.font;
                        TextSize = library.options.fontsize;
                        Size = UDim2.new(0, 60, 0, 20);
                        Position = UDim2.new(1, -65, 0, 5);
                        TextColor3 = library.options.textcolor;
                        BackgroundColor3 = library.options.bgcolor;
                        BorderColor3 = library.options.bordercolor;
                        BorderSizePixel = 1;
                    })
                });
                Parent = self.container;
            });

            local button = check:FindFirstChild(name).Keybind;
            button.MouseButton1Click:Connect(function()
                library.binding = true
                button.Text = "..."
                local a, b = game:GetService('UserInputService').InputBegan:Wait();
                local name_ = tostring(a.KeyCode.Name);
                local typeName = tostring(a.UserInputType.Name);

                if (a.UserInputType ~= Enum.UserInputType.Keyboard and (allowed[a.UserInputType.Name]) and (not keyboardOnly))
                    or (a.KeyCode and (not banned[a.KeyCode.Name])) then
                    local name_ = (a.UserInputType ~= Enum.UserInputType.Keyboard and a.UserInputType.Name or a.KeyCode.Name);
                    location[flag] = (a);
                    button.Text = shortNames[name_] or name_;
                else
                    if (location[flag]) then
                        if (not pcall(function() return location[flag].UserInputType end)) then
                            local name_ = tostring(location[flag])
                            button.Text = shortNames[name_] or name_
                        else
                            local name_ = (location[flag].UserInputType ~= Enum.UserInputType.Keyboard and location[flag].UserInputType.Name or location[flag].KeyCode.Name);
                            button.Text = shortNames[name_] or name_;
                        end
                    end
                end

                task.wait(0.1)
                library.binding = false;
            end)

            if location[flag] then
                button.Text = shortNames[tostring(location[flag].Name)] or tostring(location[flag].Name)
            end

            library.binds[flag] = { location = location; callback = callback; };
            self:Resize();
        end

        function types:Section(name)
            local order = self:GetOrder();
            local determinedSize = UDim2.new(1, 0, 0, 25)
            local determinedPos  = UDim2.new(0, 0, 0, 4);
            local secondarySize  = UDim2.new(1, 0, 0, 20);

            if order == 0 then
                determinedSize = UDim2.new(1, 0, 0, 21)
                determinedPos  = UDim2.new(0, 0, 0, -1);
                secondarySize  = nil
            end

            local check = library:Create('Frame', {
                Name = 'Section';
                BackgroundTransparency = 1;
                Size = determinedSize;
                BackgroundColor3 = library.options.sectncolor;
                BorderSizePixel = 0;
                LayoutOrder = order;
                library:Create('TextLabel', {
                    Name = 'section_lbl';
                    Text = name;
                    BackgroundTransparency = 0;
                    BorderSizePixel = 0;
                    BackgroundColor3 = library.options.sectncolor;
                    TextColor3 = library.options.textcolor;
                    Position = determinedPos;
                    Size = (secondarySize or UDim2.new(1, 0, 1, 0));
                    Font = library.options.font;
                    TextSize = library.options.fontsize;
                    TextStrokeTransparency = library.options.textstroke;
                    TextStrokeColor3 = library.options.strokecolor;
                });
                Parent = self.container;
            });

            self:Resize();
        end

        function types:Slider(name, options, callback)
            local default  = options.default or options.min;
            local min      = options.min or 0;
            local max      = options.max or 1;
            local location = options.location or self.flags;
            local precise  = options.precise or false;
            local flag     = options.flag or "";
            local callback = callback or function() end

            location[flag] = default;

            local check = library:Create('Frame', {
                BackgroundTransparency = 1;
                Size = UDim2.new(1, 0, 0, 25);
                LayoutOrder = self:GetOrder();
                library:Create('TextLabel', {
                    Name = name;
                    TextStrokeTransparency = library.options.textstroke;
                    TextStrokeColor3 = library.options.strokecolor;
                    Text = "\r" .. name;
                    BackgroundTransparency = 1;
                    TextColor3 = library.options.textcolor;
                    Position = UDim2.new(0, 5, 0, 2);
                    Size = UDim2.new(1, -5, 1, 0);
                    TextXAlignment = Enum.TextXAlignment.Left;
                    Font = library.options.font;
                    TextSize = library.options.fontsize;
                    library:Create('Frame', {
                        Name = 'Container';
                        Size = UDim2.new(0, 60, 0, 20);
                        Position = UDim2.new(1, -65, 0, 3);
                        BackgroundTransparency = 1;
                        BorderSizePixel = 0;
                        library:Create('TextLabel', {
                            Name = 'ValueLabel';
                            Text = default;
                            BackgroundTransparency = 1;
                            TextColor3 = library.options.textcolor;
                            Position = UDim2.new(0, -10, 0, 0);
                            Size = UDim2.new(0, 1, 1, 0);
                            TextXAlignment = Enum.TextXAlignment.Right;
                            Font = library.options.font;
                            TextSize = library.options.fontsize;
                            TextStrokeTransparency = library.options.textstroke;
                            TextStrokeColor3 = library.options.strokecolor;
                        });
                        library:Create('TextButton', {
                            Name = 'Button';
                            Size = UDim2.new(0, 5, 1, -2);
                            Position = UDim2.new(0, 0, 0, 1);
                            AutoButtonColor = false;
                            Text = "";
                            BackgroundColor3 = Color3.fromRGB(20, 20, 20);
                            BorderSizePixel = 0;
                            ZIndex = 2;
                            TextStrokeTransparency = library.options.textstroke;
                            TextStrokeColor3 = library.options.strokecolor;
                        });
                        library:Create('Frame', {
                            Name = 'Line';
                            BackgroundTransparency = 0;
                            Position = UDim2.new(0, 0, 0.5, 0);
                            Size = UDim2.new(1, 0, 0, 1);
                            BackgroundColor3 = library.options.textcolor;
                            BorderSizePixel = 0;
                        });
                    })
                });
                Parent = self.container;
            });

            local overlay = check:FindFirstChild(name);

            local renderSteppedConnection;
            local inputBeganConnection;
            local inputEndedConnection;
            local mouseLeaveConnection;
            local mouseDownConnection;
            local mouseUpConnection;

            check:FindFirstChild(name).Container.MouseEnter:Connect(function()
                local function update()
                    if renderSteppedConnection then renderSteppedConnection:Disconnect() end

                    renderSteppedConnection = game:GetService('RunService').Heartbeat:Connect(function()
                        local mouse   = game:GetService("UserInputService"):GetMouseLocation()
                        local percent = (mouse.X - overlay.Container.AbsolutePosition.X) / (overlay.Container.AbsoluteSize.X)
                        percent = math.clamp(percent, 0, 1)
                        percent = tonumber(string.format("%.2f", percent))

                        overlay.Container.Button.Position = UDim2.new(math.clamp(percent, 0, 0.99), 0, 0, 1)

                        local num   = min + (max - min) * percent
                        local value = (precise and num or math.floor(num))

                        overlay.Container.ValueLabel.Text = value;
                        callback(tonumber(value))
                        location[flag] = tonumber(value)
                    end)
                end

                local function disconnect()
                    if renderSteppedConnection then renderSteppedConnection:Disconnect() end
                    if inputBeganConnection    then inputBeganConnection:Disconnect()    end
                    if inputEndedConnection    then inputEndedConnection:Disconnect()    end
                    if mouseLeaveConnection    then mouseLeaveConnection:Disconnect()    end
                    if mouseUpConnection       then mouseUpConnection:Disconnect()       end
                end

                inputBeganConnection = check:FindFirstChild(name).Container.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        update()
                    end
                end)

                inputEndedConnection = check:FindFirstChild(name).Container.InputEnded:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        disconnect()
                    end
                end)

                mouseDownConnection = check:FindFirstChild(name).Container.Button.MouseButton1Down:Connect(update)
                mouseUpConnection   = game:GetService("UserInputService").InputEnded:Connect(function(a, b)
                    if a.UserInputType == Enum.UserInputType.MouseButton1 and (mouseDownConnection.Connected) then
                        disconnect()
                    end
                end)
            end)

            if default ~= min then
                local percent = 1 - ((max - default) / (max - min))
                local number  = default
                number = tonumber(string.format("%.2f", number))
                if (not precise) then number = math.floor(number) end
                overlay.Container.Button.Position = UDim2.new(math.clamp(percent, 0, 0.99), 0, 0, 1)
                overlay.Container.ValueLabel.Text = number
            end

            self:Resize();
            return {
                Set = function(self, value)
                    local percent = 1 - ((max - value) / (max - min))
                    local number  = value
                    number = tonumber(string.format("%.2f", number))
                    if (not precise) then number = math.floor(number) end
                    overlay.Container.Button.Position = UDim2.new(math.clamp(percent, 0, 0.99), 0, 0, 1)
                    overlay.Container.ValueLabel.Text = number
                    location[flag] = number
                    callback(number)
                end
            }
        end

        function types:SearchBox(text, options, callback)
            local list     = options.list or {};
            local flag     = options.flag or "";
            local location = options.location or self.flags;
            local callback = callback or function() end;
            local busy     = false;

            local box = library:Create('Frame', {
                BackgroundTransparency = 1;
                Size = UDim2.new(1, 0, 0, 25);
                LayoutOrder = self:GetOrder();
                library:Create('TextBox', {
                    Text = "";
                    PlaceholderText = text;
                    PlaceholderColor3 = Color3.fromRGB(60, 60, 60);
                    Font = library.options.font;
                    TextSize = library.options.fontsize;
                    Name = 'Box';
                    Size = UDim2.new(1, -10, 0, 20);
                    Position = UDim2.new(0, 5, 0, 4);
                    TextColor3 = library.options.textcolor;
                    BackgroundColor3 = library.options.dropcolor;
                    BorderColor3 = library.options.bordercolor;
                    TextStrokeTransparency = library.options.textstroke;
                    TextStrokeColor3 = library.options.strokecolor;
                    library:Create('ScrollingFrame', {
                        Position = UDim2.new(0, 0, 1, 1);
                        Name = 'Container';
                        BackgroundColor3 = library.options.btncolor;
                        ScrollBarThickness = 0;
                        BorderSizePixel = 0;
                        BorderColor3 = library.options.bordercolor;
                        Size = UDim2.new(1, 0, 0, 0);
                        library:Create('UIListLayout', {
                            Name = 'ListLayout';
                            SortOrder = Enum.SortOrder.LayoutOrder;
                        });
                        ZIndex = 2;
                    });
                });
                Parent = self.container;
            })

            local function rebuild(text_)
                box:FindFirstChild('Box').Container.ScrollBarThickness = 0
                for i, child in next, box:FindFirstChild('Box').Container:GetChildren() do
                    if (not child:IsA('UIListLayout')) then child:Destroy() end
                end
                if #text_ > 0 then
                    for i, v in next, list do
                        if string.sub(string.lower(v), 1, string.len(text_)) == string.lower(text_) then
                            local button = library:Create('TextButton', {
                                Text = v;
                                Font = library.options.font;
                                TextSize = library.options.fontsize;
                                TextColor3 = library.options.textcolor;
                                BorderColor3 = library.options.bordercolor;
                                TextStrokeTransparency = library.options.textstroke;
                                TextStrokeColor3 = library.options.strokecolor;
                                Parent = box:FindFirstChild('Box').Container;
                                Size = UDim2.new(1, 0, 0, 20);
                                LayoutOrder = i;
                                BackgroundColor3 = library.options.btncolor;
                                ZIndex = 2;
                            })
                            button.MouseButton1Click:Connect(function()
                                busy = true;
                                box:FindFirstChild('Box').Text = button.Text;
                                task.wait();
                                busy = false;
                                location[flag] = button.Text;
                                callback(location[flag])
                                box:FindFirstChild('Box').Container.ScrollBarThickness = 0
                                for i, child in next, box:FindFirstChild('Box').Container:GetChildren() do
                                    if (not child:IsA('UIListLayout')) then child:Destroy() end
                                end
                                box:FindFirstChild('Box').Container:TweenSize(UDim2.new(1, 0, 0, 0), 'Out', 'Quint', .3, true)
                            end)
                        end
                    end
                end
                local c  = box:FindFirstChild('Box').Container:GetChildren()
                local ry = (20 * (#c)) - 20
                local y  = math.clamp((20 * (#c)) - 20, 0, 100)
                if ry > 100 then box:FindFirstChild('Box').Container.ScrollBarThickness = 5 end
                box:FindFirstChild('Box').Container:TweenSize(UDim2.new(1, 0, 0, y), 'Out', 'Quint', .3, true)
                box:FindFirstChild('Box').Container.CanvasSize = UDim2.new(1, 0, 0, (20 * (#c)) - 20)
            end

            box:FindFirstChild('Box'):GetPropertyChangedSignal('Text'):Connect(function()
                if (not busy) then rebuild(box:FindFirstChild('Box').Text) end
            end);

            local function reload(new_list)
                list = new_list;
                rebuild("")
            end
            self:Resize();
            return reload, box:FindFirstChild('Box');
        end

        function types:Dropdown(name, options, callback)
            local location = options.location or self.flags;
            local flag     = options.flag or "";
            local callback = callback or function() end;
            local list     = options.list or {};

            location[flag] = list[1]
            local check = library:Create('Frame', {
                BackgroundTransparency = 1;
                Size = UDim2.new(1, 0, 0, 25);
                BackgroundColor3 = Color3.fromRGB(25, 25, 25);
                BorderSizePixel = 0;
                LayoutOrder = self:GetOrder();
                library:Create('Frame', {
                    Name = 'dropdown_lbl';
                    BackgroundTransparency = 0;
                    BackgroundColor3 = library.options.dropcolor;
                    Position = UDim2.new(0, 5, 0, 4);
                    BorderColor3 = library.options.bordercolor;
                    Size = UDim2.new(1, -10, 0, 20);
                    library:Create('TextLabel', {
                        Name = 'Selection';
                        Size = UDim2.new(1, 0, 1, 0);
                        Text = list[1];
                        TextColor3 = library.options.textcolor;
                        BackgroundTransparency = 1;
                        Font = library.options.font;
                        TextSize = library.options.fontsize;
                        TextStrokeTransparency = library.options.textstroke;
                        TextStrokeColor3 = library.options.strokecolor;
                    });
                    library:Create("TextButton", {
                        Name = 'drop';
                        BackgroundTransparency = 1;
                        Size = UDim2.new(0, 20, 1, 0);
                        Position = UDim2.new(1, -25, 0, 0);
                        Text = 'v';
                        TextColor3 = library.options.textcolor;
                        Font = library.options.font;
                        TextSize = library.options.fontsize;
                        TextStrokeTransparency = library.options.textstroke;
                        TextStrokeColor3 = library.options.strokecolor;
                    })
                });
                Parent = self.container;
            });

            local button = check:FindFirstChild('dropdown_lbl').drop;
            local input;

            button.MouseButton1Click:Connect(function()
                if (input and input.Connected) then return end

                check:FindFirstChild('dropdown_lbl'):WaitForChild('Selection').TextColor3 = Color3.fromRGB(60, 60, 60);
                check:FindFirstChild('dropdown_lbl'):WaitForChild('Selection').Text = name;
                local c = 0;
                for i, v in next, list do c = c + 20 end

                local size = UDim2.new(1, 0, 0, c)
                local clampedSize; local scrollSize = 0;
                if size.Y.Offset > 100 then clampedSize = UDim2.new(1, 0, 0, 100); scrollSize = 5; end

                local goSize    = (clampedSize ~= nil and clampedSize) or size;
                local container = library:Create('ScrollingFrame', {
                    TopImage    = 'rbxasset://textures/ui/Scroll/scroll-middle.png';
                    BottomImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png';
                    Name = 'DropContainer';
                    Parent = check:FindFirstChild('dropdown_lbl');
                    Size = UDim2.new(1, 0, 0, 0);
                    BackgroundColor3 = library.options.bgcolor;
                    BorderColor3 = library.options.bordercolor;
                    Position = UDim2.new(0, 0, 1, 0);
                    ScrollBarThickness = scrollSize;
                    CanvasSize = UDim2.new(0, 0, 0, size.Y.Offset);
                    ZIndex = 5;
                    ClipsDescendants = true;
                    library:Create('UIListLayout', { Name = 'List'; SortOrder = Enum.SortOrder.LayoutOrder })
                })

                for i, v in next, list do
                    local btn = library:Create('TextButton', {
                        Size = UDim2.new(1, 0, 0, 20);
                        BackgroundColor3 = library.options.btncolor;
                        BorderColor3 = library.options.bordercolor;
                        Text = v; Font = library.options.font;
                        TextSize = library.options.fontsize;
                        LayoutOrder = i; Parent = container; ZIndex = 5;
                        TextColor3 = library.options.textcolor;
                        TextStrokeTransparency = library.options.textstroke;
                        TextStrokeColor3 = library.options.strokecolor;
                    })
                    btn.MouseButton1Click:Connect(function()
                        check:FindFirstChild('dropdown_lbl'):WaitForChild('Selection').TextColor3 = library.options.textcolor
                        check:FindFirstChild('dropdown_lbl'):WaitForChild('Selection').Text = btn.Text;
                        location[flag] = tostring(btn.Text);
                        callback(location[flag])
                        game:GetService('Debris'):AddItem(container, 0)
                        input:Disconnect();
                    end)
                end

                container:TweenSize(goSize, 'Out', 'Quint', .3, true)

                local function isInGui(frame)
                    local mloc  = game:GetService('UserInputService'):GetMouseLocation();
                    local mouse = Vector2.new(mloc.X, mloc.Y - 36);
                    local x1, x2 = frame.AbsolutePosition.X, frame.AbsolutePosition.X + frame.AbsoluteSize.X;
                    local y1, y2 = frame.AbsolutePosition.Y, frame.AbsolutePosition.Y + frame.AbsoluteSize.Y;
                    return (mouse.X >= x1 and mouse.X <= x2) and (mouse.Y >= y1 and mouse.Y <= y2)
                end

                input = game:GetService('UserInputService').InputBegan:Connect(function(a)
                    if a.UserInputType == Enum.UserInputType.MouseButton1 and (not isInGui(container)) then
                        check:FindFirstChild('dropdown_lbl'):WaitForChild('Selection').TextColor3 = library.options.textcolor
                        check:FindFirstChild('dropdown_lbl'):WaitForChild('Selection').Text = location[flag];
                        container:TweenSize(UDim2.new(1, 0, 0, 0), 'In', 'Quint', .3, true)
                        task.wait(0.15)
                        game:GetService('Debris'):AddItem(container, 0)
                        input:Disconnect();
                    end
                end)
            end)

            self:Resize();
            local function reload(self, array)
                options = array; location[flag] = array[1];
                pcall(function() input:Disconnect() end)
                check:WaitForChild('dropdown_lbl').Selection.Text = location[flag]
                check:FindFirstChild('dropdown_lbl'):WaitForChild('Selection').TextColor3 = library.options.textcolor
                game:GetService('Debris'):AddItem(container, 0)
            end
            return { Refresh = reload; }
        end
    end

    function library:Create(class, data)
        local obj = Instance.new(class);
        for i, v in next, data do
            if i ~= 'Parent' then
                if typeof(v) == "Instance" then v.Parent = obj
                else obj[i] = v end
            end
        end
        obj.Parent = data.Parent;
        return obj
    end

    defaults = {
        topcolor         = Color3.fromRGB(30, 30, 30);
        titlecolor       = Color3.fromRGB(255, 255, 255);
        underlinecolor   = Color3.fromRGB(0, 255, 140);
        bgcolor          = Color3.fromRGB(35, 35, 35);
        boxcolor         = Color3.fromRGB(35, 35, 35);
        btncolor         = Color3.fromRGB(25, 25, 25);
        dropcolor        = Color3.fromRGB(25, 25, 25);
        sectncolor       = Color3.fromRGB(25, 25, 25);
        bordercolor      = Color3.fromRGB(60, 60, 60);
        font             = Enum.Font.SourceSans;
        titlefont        = Enum.Font.Code;
        fontsize         = 17;
        titlesize        = 18;
        textstroke       = 1;
        titlestroke      = 1;
        strokecolor      = Color3.fromRGB(0, 0, 0);
        textcolor        = Color3.fromRGB(255, 255, 255);
        titletextcolor   = Color3.fromRGB(255, 255, 255);
        placeholdercolor = Color3.fromRGB(255, 255, 255);
        titlestrokecolor = Color3.fromRGB(0, 0, 0);
    }

    function library:CreateWindow(name, options)
        if (not library.container) then
            library.container = self:Create("ScreenGui", {
                self:Create('Frame', {
                    Name = 'Container';
                    Size = UDim2.new(1, -30, 1, 0);
                    Position = UDim2.new(0, 20, 0, 20);
                    BackgroundTransparency = 1;
                    Active = false;
                });
                Parent = game:GetService("CoreGui");
            }):FindFirstChild('Container');
        end
        if (not library.options) then
            library.options = setmetatable(options or {}, {__index = defaults})
        end
        if (options) then
            library.options = setmetatable(options, {__index = defaults})
        end
        local window = types.window(name, library.options);
        dragger.new(window.object);
        return window
    end

    library.options = setmetatable({}, {__index = defaults})

    task.spawn(function()
        while true do
            for i = 0, 1, 1/300 do
                for _, obj in next, library.rainbowtable do
                    obj.BackgroundColor3 = Color3.fromHSV(i, 1, 1);
                end
                task.wait()
            end
        end
    end)

    local function isreallypressed(bind, inp)
        local key = bind
        if typeof(key) == "Instance" then
            if key.UserInputType == Enum.UserInputType.Keyboard and inp.KeyCode == key.KeyCode then return true end
            if tostring(key.UserInputType):find('MouseButton') and inp.UserInputType == key.UserInputType then return true end
        end
        if tostring(key):find'MouseButton1' then return key == inp.UserInputType
        else return key == inp.KeyCode end
    end

    game:GetService("UserInputService").InputBegan:Connect(function(input)
        if (not library.binding) then
            for idx, binds in next, library.binds do
                local real_binding = binds.location[idx];
                if real_binding and isreallypressed(real_binding, input) then
                    binds.callback()
                end
            end
        end
    end)
end

-- ────────────────────────────────────────────────────────────
-- GAME SCRIPT
-- ────────────────────────────────────────────────────────────
library.options.underlinecolor = "rainbow"

local Players           = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TeleportService   = game:GetService("TeleportService")
local LocalPlayer       = Players.LocalPlayer

local rEvents           = ReplicatedStorage.rEvents
local orbEvent          = rEvents.orbEvent
local rebirthEvent      = rEvents.rebirthEvent
local openCrystalRemote = rEvents.openCrystalRemote

local function collectOrbs(orbType, zone, count)
    for _ = 1, count do orbEvent:FireServer("collectOrb", orbType, zone) end
end

local function getHRP()
    local ch = LocalPlayer.Character
    return ch and ch:FindFirstChild("HumanoidRootPart")
end

-- ────────────────────────────────────────────────────────────
-- WINDOW 1 — Main
-- ────────────────────────────────────────────────────────────
local w1 = library:CreateWindow('Main')
w1:Section('Pick Your Poison!')

w1:Toggle('Auto Rebirth',        {flag = "Rebirth"})
w1:Toggle('Yellow Orb x99 (City)', {flag = "YoCity"})
w1:Toggle('Red Orb x99 (City)',    {flag = "RoCity"})
w1:Toggle('Gem x99 (City)',        {flag = "GCity"})
w1:Toggle('Hoops V1',              {flag = "HoopsV1"})
w1:Toggle('Hoops V2',              {flag = "HoopsV2"})

w1:Section('Teleport to ...')
w1:Button("City",            function() local h=getHRP() if h then h.CFrame=CFrame.new(-9682.98828,74.8522873,3099.03394,0.087131381,0,0.996196866,0,1,0,-0.996196866,0,0.087131381) end end)
w1:Button("Snow",            function() local h=getHRP() if h then h.CFrame=CFrame.new(-9676.13867,74.8522873,3782.69385,0,0,-1,0,1,0,1,0,0) end end)
w1:Button("Magma",           function() local h=getHRP() if h then h.CFrame=CFrame.new(-11054.9688,232.791656,4898.62842,-0.0872479677,0.000158954252,-0.996186614,-0.00054083002,0.999999821,0.00020692969,0.996186495,0.000556821818,-0.0872478485) end end)
w1:Button("Legends Highway", function() local h=getHRP() if h then h.CFrame=CFrame.new(-13098.8711,232.791656,5907.62793,-0.0872479677,0.000158954252,-0.996186614,-0.00054083002,0.999999821,0.00020692969,0.996186495,0.000556821818,-0.0872478485) end end)

task.spawn(function() while _G._LoS_Running and task.wait(0.5) do if w1.flags.Rebirth then rebirthEvent:FireServer("rebirthRequest") end end end)
task.spawn(function() while _G._LoS_Running and task.wait(0.5) do if w1.flags.YoCity  then collectOrbs("Yellow Orb","City",99)  end end end)
task.spawn(function() while _G._LoS_Running and task.wait(0.5) do if w1.flags.RoCity  then collectOrbs("Red Orb","City",99)    end end end)
task.spawn(function() while _G._LoS_Running and task.wait(0.5) do if w1.flags.GCity   then collectOrbs("Gem","City",99)        end end end)
task.spawn(function()
    while _G._LoS_Running and task.wait(0.5) do
        if w1.flags.HoopsV1 then
            local hrp = getHRP()
            if hrp and workspace:FindFirstChild("Hoops") then
                for _, v in ipairs(workspace.Hoops:GetChildren()) do
                    firetouchinterest(v, hrp, 0) task.wait() firetouchinterest(v, hrp, 1)
                end
            end
        end
    end
end)
task.spawn(function()
    while _G._LoS_Running and task.wait(0.5) do
        if w1.flags.HoopsV2 then
            local hrp = getHRP()
            if hrp and workspace:FindFirstChild("Hoops") then
                for _, ch in ipairs(workspace.Hoops:GetChildren()) do
                    if ch.Name == "Hoop" then ch.CFrame = hrp.CFrame end
                end
            end
        end
    end
end)

-- ────────────────────────────────────────────────────────────
-- WINDOW 2 — Another Farm
-- ────────────────────────────────────────────────────────────
local w2 = library:CreateWindow('Another Farm')
w2:Section('So, now youre on another map')

w2:Toggle('Yellow Orb x99 (Snow City)',  {flag = "YoSnow"})
w2:Toggle('Red Orb x99 (Snow City)',     {flag = "RoSnow"})
w2:Toggle('Gem x99 (Snow City)',         {flag = "GSnow"})
w2:Toggle('Yellow Orb x99 (Magma City)',{flag = "YoMagma"})
w2:Toggle('Red Orb x99 (Magma City)',   {flag = "RoMagma"})
w2:Toggle('Gem x99 (Magma City)',       {flag = "GMagma"})
w2:Section('Space')
w2:Toggle('Yellow Orb x99',  {flag = "YoSpace"})
w2:Toggle('Red Orb x99',     {flag = "RoSpace"})
w2:Toggle('Gem Orb x99',     {flag = "GSpace"})
w2:Section('Desert')
w2:Toggle('Yellow Orb x99',  {flag = "YoDesert"})
w2:Toggle('Red Orb x99',     {flag = "RoDesert"})
w2:Toggle('Gem Orb x99',     {flag = "GDesert"})

task.spawn(function() while _G._LoS_Running and task.wait(0.5) do if w2.flags.YoSnow   then collectOrbs("Yellow Orb","Snow City",99)  end end end)
task.spawn(function() while _G._LoS_Running and task.wait(0.5) do if w2.flags.RoSnow   then collectOrbs("Red Orb","Snow City",99)     end end end)
task.spawn(function() while _G._LoS_Running and task.wait(0.5) do if w2.flags.GSnow    then collectOrbs("Gem","Snow City",99)         end end end)
task.spawn(function() while _G._LoS_Running and task.wait(0.5) do if w2.flags.YoMagma  then collectOrbs("Yellow Orb","Magma City",99) end end end)
task.spawn(function() while _G._LoS_Running and task.wait(0.5) do if w2.flags.RoMagma  then collectOrbs("Red Orb","Magma City",99)   end end end)
task.spawn(function() while _G._LoS_Running and task.wait(0.5) do if w2.flags.GMagma   then collectOrbs("Gem","Magma City",99)        end end end)
task.spawn(function() while _G._LoS_Running and task.wait(0.5) do if w2.flags.YoSpace  then collectOrbs("Yellow Orb","Space",99)      end end end)
task.spawn(function() while _G._LoS_Running and task.wait(0.5) do if w2.flags.RoSpace  then collectOrbs("Red Orb","Space",99)         end end end)
task.spawn(function() while _G._LoS_Running and task.wait(0.5) do if w2.flags.GSpace   then collectOrbs("Gem","Space",99)             end end end)
task.spawn(function() while _G._LoS_Running and task.wait(0.5) do if w2.flags.YoDesert then collectOrbs("Yellow Orb","Desert",99)     end end end)
task.spawn(function() while _G._LoS_Running and task.wait(0.5) do if w2.flags.RoDesert then collectOrbs("Red Orb","Desert",99)        end end end)
task.spawn(function() while _G._LoS_Running and task.wait(0.5) do if w2.flags.GDesert  then collectOrbs("Gem","Desert",99)            end end end)

-- ────────────────────────────────────────────────────────────
-- WINDOW 3 — Open Crystal
-- ────────────────────────────────────────────────────────────
local w3 = library:CreateWindow('Open Crystal')
w3:Section('Main World')
w3:Toggle('Red Crystal',             {flag = "ReC"})
w3:Toggle('Purple Crystal',          {flag = "PuC"})
w3:Toggle('Yellow Crystal',          {flag = "YeC"})
w3:Toggle('Lightning Crystal',       {flag = "LiC"})
w3:Toggle('Snow Crystal',            {flag = "SnC"})
w3:Toggle('Inferno Crystal',         {flag = "InC"})
w3:Toggle('Electro Legends Crystal', {flag = "ElC"})
w3:Section('Space')
w3:Toggle('Space Crystal',  {flag = "SpC"})
w3:Toggle('Alien Crystal',  {flag = "AlC"})
w3:Section('Desert')
w3:Toggle('Desert Crystal',  {flag = "DeC"})
w3:Toggle('Electro Crystal', {flag = "EleC"})
w3:Section('If it does not work')
w3:Section('Maybe your Trails/Pets is full')

task.spawn(function() while _G._LoS_Running and task.wait(0.5) do if w3.flags.ReC  then openCrystalRemote:InvokeServer("openCrystal","Red Crystal")             end end end)
task.spawn(function() while _G._LoS_Running and task.wait(0.5) do if w3.flags.PuC  then openCrystalRemote:InvokeServer("openCrystal","Purple Crystal")          end end end)
task.spawn(function() while _G._LoS_Running and task.wait(0.5) do if w3.flags.YeC  then openCrystalRemote:InvokeServer("openCrystal","Yellow Crystal")          end end end)
task.spawn(function() while _G._LoS_Running and task.wait(0.5) do if w3.flags.LiC  then openCrystalRemote:InvokeServer("openCrystal","Lightning Crystal")       end end end)
task.spawn(function() while _G._LoS_Running and task.wait(0.5) do if w3.flags.SnC  then openCrystalRemote:InvokeServer("openCrystal","Snow Crystal")            end end end)
task.spawn(function() while _G._LoS_Running and task.wait(0.5) do if w3.flags.InC  then openCrystalRemote:InvokeServer("openCrystal","Inferno Crystal")         end end end)
task.spawn(function() while _G._LoS_Running and task.wait(0.5) do if w3.flags.ElC  then openCrystalRemote:InvokeServer("openCrystal","Electro Legends Crystal") end end end)
task.spawn(function() while _G._LoS_Running and task.wait(0.5) do if w3.flags.SpC  then openCrystalRemote:InvokeServer("openCrystal","Space Crystal")           end end end)
task.spawn(function() while _G._LoS_Running and task.wait(0.5) do if w3.flags.AlC  then openCrystalRemote:InvokeServer("openCrystal","Alien Crystal")           end end end)
task.spawn(function() while _G._LoS_Running and task.wait(0.5) do if w3.flags.DeC  then openCrystalRemote:InvokeServer("openCrystal","Desert Crystal")          end end end)
task.spawn(function() while _G._LoS_Running and task.wait(0.5) do if w3.flags.EleC then openCrystalRemote:InvokeServer("openCrystal","Electro Crystal")         end end end)

-- ────────────────────────────────────────────────────────────
-- WINDOW 4 — Other
-- ────────────────────────────────────────────────────────────
local w4 = library:CreateWindow('Other')
w4:Section('Misc')

w4:Button("Disable AFK", function()
    local GC = getconnections or get_signal_cons
    if GC then
        for _, v in pairs(GC(LocalPlayer.Idled)) do
            if v["Disable"] then v["Disable"](v) elseif v["Disconnect"] then v["Disconnect"](v) end
        end
    else
        local vu = game:GetService("VirtualUser")
        LocalPlayer.Idled:Connect(function()
            vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
            task.wait(1)
            vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
        end)
    end
end)

w4:Section('Just in Case')

w4:Button("FPS Booster", function()
    local L = game:GetService("Lighting")
    local T = workspace.Terrain
    T.WaterWaveSize=0; T.WaterWaveSpeed=0; T.WaterReflectance=0; T.WaterTransparency=0
    L.GlobalShadows=false; L.FogEnd=9e9; L.Brightness=0
    settings().Rendering.QualityLevel = "Level01"
    for _, v in ipairs(game:GetDescendants()) do
        local c = v.ClassName
        if c=="Part" or c=="UnionOperation" or c=="CornerWedgePart" or c=="TrussPart" or c=="MeshPart" then
            v.Material=Enum.Material.Plastic; v.Reflectance=0
        elseif c=="Decal" or c=="Texture" then v.Transparency=1
        elseif c=="ParticleEmitter" or c=="Trail" then v.Lifetime=NumberRange.new(0)
        elseif c=="Explosion" then v.BlastPressure=1; v.BlastRadius=1
        elseif c=="Fire" or c=="SpotLight" or c=="Smoke" or c=="Sparkles"
            or c=="BlurEffect" or c=="SunRaysEffect" or c=="ColorCorrectionEffect"
            or c=="BloomEffect" or c=="DepthOfFieldEffect" then v.Enabled=false
        end
    end
    for _, e in ipairs(L:GetChildren()) do
        if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect")
            or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then e.Enabled=false end
    end
end)

-- WalkSpeed slider
w4:Slider("WalkSpeed", {precise=true, default=50, min=1, max=99999, flag="Speed"}, function()
    local ch = LocalPlayer.Character
    if ch and ch:FindFirstChild("Humanoid") then ch.Humanoid.WalkSpeed = tonumber(w4.flags.Speed) or 16 end
end)

w4:Section('Press Enter to activate')

-- JumpPower slider
w4:Slider("JumpPower", {precise=true, default=50, min=1, max=1000, flag="JumpPower"}, function()
    local ch = LocalPlayer.Character
    if ch and ch:FindFirstChild("Humanoid") then ch.Humanoid.JumpPower = tonumber(w4.flags.JumpPower) or 50 end
end)

w4:Button("Rejoin the game", function()
    TeleportService:Teleport(game.PlaceId, LocalPlayer)
end)

w4:Section('Right Ctrl to hide')
w4:Section('Made by Me (Mr. Hakame)')
