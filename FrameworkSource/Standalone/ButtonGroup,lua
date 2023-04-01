local ButtonGroup = {}

ButtonGroup.__index = ButtonGroup

local UITypes = require(script.Parent.Parent:WaitForChild("UITypes"))
local Utils = require(script.Parent.Parent:WaitForChild("Utils"))

local UnknownN = 0

function SetButtonGroupBaseAttributes(ButtonGroup)
	
end

function ButtonGroup.new(Mount: any, Name: string?, Position: UDim2 | number, Scale: UDim2 | number, AnchorPoint: UDim2 | number, ButtonGroupSettings: UITypes.ButtonGroupSettings | nil)
	local NewButtonGroup = {}
	
	setmetatable(NewButtonGroup, ButtonGroup)
	
	UnknownN += Name and 0 or 1
	
	NewButtonGroup._Mntp = Mount
	NewButtonGroup.Name = Name or "ButtonGroup" .. UnknownN
	NewButtonGroup.CurrentPosition = Position
	NewButtonGroup.CurrentScale = Scale
	NewButtonGroup.Settings = ButtonGroupSettings
	
	local x = Instance.new("CanvasGroup")
	
	x.Name = NewButtonGroup.Name
	
	print(Position, Scale, AnchorPoint)
	
	local Position = type(Position) ~= "number" and Position or Utils.EnumToPhysPosition(Position)
	local Scale = type(Scale) ~= "number" and Scale or Utils.EnumToPhysScale(Scale)
	local AnchorPoint = type(AnchorPoint) ~= "number" and AnchorPoint or Utils.EnumToPhysAnchorPoint(AnchorPoint)
	
	x.Position = Position
	x.Size = Scale
	x.AnchorPoint = AnchorPoint
	x.Parent = Mount
	
	SetButtonGroupBaseAttributes(x)
	
	-- TODO make this cleaner and fix type issues with fixedsize
	
	if ButtonGroupSettings then
		x.BackgroundTransparency = ButtonGroupSettings.BackgroundTransparency
		
		if ButtonGroupSettings.FixedSize then
			local Grid = Instance.new("UIGridLayout")
			
			Grid.CellPadding = ButtonGroupSettings.Padding
			Grid.CellSize = ButtonGroupSettings.CellSize
			Grid.VerticalAlignment = ButtonGroupSettings.VerAlign
			Grid.HorizontalAlignment = ButtonGroupSettings.HorAlign
			Grid.FillDirection = ButtonGroupSettings.Direction
			Grid.SortOrder = ButtonGroupSettings.NameBasedOrder and Enum.SortOrder.Name or Enum.SortOrder.LayoutOrder
			
			if ButtonGroupSettings.SquareButtons then
				local AspectRatio = Instance.new("UIAspectRatioConstraint")
				
				AspectRatio.AspectType = Enum.AspectType.FitWithinMaxSize
				AspectRatio.AspectRatio = 1
				AspectRatio.DominantAxis = Enum.DominantAxis.Width
				AspectRatio.Parent = Grid
			end
			
			Grid.Parent = x
		else
			local List = Instance.new("UIListLayout")
			
			List.Padding = ButtonGroupSettings.Padding
			List.HorizontalAlignment = ButtonGroupSettings.HorAlign
			List.VerticalAlignment = ButtonGroupSettings.VerAlign
			List.FillDirection = ButtonGroupSettings.Direction
			List.SortOrder = ButtonGroupSettings.NameBasedOrder and Enum.SortOrder.Name or Enum.SortOrder.LayoutOrder
			List.Parent = x
		end
	end
	
	NewButtonGroup.ButtonGroup = x
	
	return NewButtonGroup
end

return ButtonGroup