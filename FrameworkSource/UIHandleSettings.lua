local UIHandleSettings = {}

function UIHandleSettings.new(Inset: boolean, ResetOnDeath: boolean)
	return {Inset = Inset, ResetOnDeath = ResetOnDeath}
end

return UIHandleSettings