local Utils = {}
local UIEnums = require(script.Parent:WaitForChild("UIEnums"))

-- could make these more readable but idrc they're fixed anyways

function Utils.EnumToPhysPosition(Position: number)
	if Position == UIEnums.Position.Top then
		return UDim2.new(0.5, 0, 0, 0)
	elseif Position == UIEnums.Position.Bottom then
		return UDim2.new(0.5, 0, 1, 0)
	elseif Position == UIEnums.Position.Center then
		return UDim2.new(0.5, 0, 0.5, 0)
	elseif Position == UIEnums.Position.Left then
		return UDim2.new(0, 0, 0, 0)
	elseif Position == UIEnums.Position.Right then
		return UDim2.new(1, 0, 0, 0)
	end
end

function Utils.EnumToPhysScale(Scale: number)
	if Scale == UIEnums.Scale.None then
		return UDim2.new(0, 0, 0, 0)
	elseif Scale == UIEnums.Scale.FullScreen then
		return UDim2.new(1, 0, 1, 0)
	elseif Scale == UIEnums.Scale.FullX then
		return UDim2.new(1, 0, 0, 0)
	elseif Scale == UIEnums.Scale.FullY then
		return UDim2.new(0, 0, 1, 0)
	end
end

function Utils.EnumToPhysAnchorPoint(AnchorPoint: number)
	if AnchorPoint == UIEnums.AnchorPoint.Center then
		return Vector2.new(0.5, 0.5)
	elseif AnchorPoint == UIEnums.AnchorPoint.Default then
		return Vector2.new(0, 0)
	elseif AnchorPoint == UIEnums.AnchorPoint.CenterX then
		return Vector2.new(0.5, 0)
	elseif AnchorPoint == UIEnums.AnchorPoint.CenterY then
		return Vector2.new(0, 0.5)
	elseif AnchorPoint == UIEnums.AnchorPoint.FullX then
		return Vector2.new(1, 0)
	elseif AnchorPoint == UIEnums.AnchorPoint.FullY then
		return Vector2.new(0, 1)
	end
end

return Utils