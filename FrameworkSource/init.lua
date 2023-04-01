local UIMain = {}

UIMain.__index = UIMain

local LogClass = require(script:WaitForChild("Log"))
local UITypes = require(script:WaitForChild("UITypes"))
local UnknownN = 0

function SetHandleBaseAttributes(Handle: ScreenGui)
	Handle:SetAttribute("Enabled", true)
	Handle:SetAttribute("TransitionEnabled", false)
	Handle:SetAttribute("TransitionTime", 0)
end

function UIMain.RegisterHandle(Mount: PlayerGui, Name: string?, HandleSettings: UITypes.BaseHandleSettings | nil)
	local UIHandle = {}
	
	setmetatable(UIHandle, UIMain)
	
	UnknownN += Name and 0 or 1
	
	UIHandle._MntP = Mount
	UIHandle.HandleName = Name or "Unknown" .. UnknownN
	LogClass.OutWhisper(script.Parent.Name, "Successfully created new Handle (", UIHandle.HandleName, ")")
	
	local Handle = Instance.new("ScreenGui")
	
	Handle.Name = UIHandle.HandleName
	
	if HandleSettings then
		Handle.IgnoreGuiInset = HandleSettings.Inset or false
		Handle.ResetOnSpawn = HandleSettings.ResetOnDeath or true
	end
	
	Handle.Parent = Mount
	
	SetHandleBaseAttributes(Handle)
	
	UIHandle.Handle = Handle
	UIHandle.OnEnableChanged = Handle:GetAttributeChangedSignal("Enabled")
	
	UIHandle.OnEnableChanged:Connect(function()
		if UIHandle.Handle:GetAttribute("TransitionEnabled") then
			-- TODO code this part :)
		else
			UIHandle.Handle.Enabled = UIHandle.Handle:GetAttribute("Enabled")
		end
	end)
	
	return UIHandle
end

function UIMain.GetButtonGroupConstructor()
	return require(script:WaitForChild("Standalone"):WaitForChild("ButtonGroup"))
end

function UIMain.GetEnums()
	return require(script:WaitForChild("UIEnums"))
end

function UIMain.GetLogger()
	return require(script:WaitForChild("Log"))
end

function UIMain.GetHandleSettingsConstructor()
	return require(script:WaitForChild("UIHandleSettingsSetup"))
end

function UIMain.GetTypes()
	return require(script:WaitForChild("UITypes"))
end

function UIMain.GetButtonGroupSettingsConstructor()
	return require(script:WaitForChild("Standalone"):WaitForChild("ButtonGroupSettingsSetup"))
end

function UIMain:GetHandleStatus()
	return self.Handle:GetAttribute("Enabled")
end

function UIMain:ToggleHandle()
	self.Handle:SetAttribute("Enabled", not self.Handle:GetAttribute("Enabled")) -- this should automatically sync
end

return UIMain