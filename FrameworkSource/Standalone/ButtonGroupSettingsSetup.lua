local ButtonGroupSettingsSetup = {}

function ButtonGroupSettingsSetup.new(BackgroundTransparency: number, SquareButtons: boolean, OrderByName: boolean, FixedSize: boolean, CellSize: UDim2,  Padding: UDim | UDim2, Direction: EnumItem, HorAlign: EnumItem, VerAlign: EnumItem)
	return {BackgroundTransparency = BackgroundTransparency, SquareButtons = SquareButtons, OrderByName = OrderByName, FixedSize = FixedSize, CellSize = CellSize, Padding = Padding, Direction = Direction, HorAlign = HorAlign, VerAlign = VerAlign}
end

return ButtonGroupSettingsSetup