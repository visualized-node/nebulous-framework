
-- Define Instances here --

local PurpurDStroke = Instance.new("UIStroke")

PurpurDStroke.Color = Color3.new(1, 1, 1)
PurpurDStroke.LineJoinMode = Enum.LineJoinMode.Round
PurpurDStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
PurpurDStroke.Thickness = 1.25

-- -- -- -- -- -- -- -- -- --

local UIStyles = {
	Frames = {
		Purpur = {
			-- Default Style for sandbox
			
			BgColor = Color3.fromRGB(170, 153, 255),
			BgTransparency = 0,
			
			StrokeColor = Color3.new(0, 0, 0),
			StrokeTransparency = 1,
			
			AdditionalInstances = {
				PurpurDStroke	
			}
		}
	},
	
	Buttons = {
		
	}
}

return UIStyles