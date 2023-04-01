local LogClass = {}
local Separator = " "

function LogClass.OutWhisper(Filename: string, ...)
	local Args = {...}
	local FinalString = ""

	-- I need it linear

	for i, v in ipairs(Args) do
		FinalString ..= Args[i] .. Separator

		-- prob check if string has a space in the end in the future
	end

	print(Filename .. " (W) ~ " .. FinalString)
end

function LogClass.SetStandardSeparator(NSeparator: string)
	if #NSeparator > 1 then
		error(script.Parent.Name .. " (E) ~ Cannot assign strings with length > 1 for separators")
	end
	
	Separator = NSeparator
end

function LogClass.OutPrn(Filename: string, ...)
	local Args = {...}
	local FinalString = ""
	
	-- I need it linear
	
	for i, v in ipairs(Args) do
		FinalString ..= Args[i] .. Separator
		
		-- prob check if string has a space in the end in the future
	end
	
	print(Filename .. " (P) ~ " .. FinalString)
end

return LogClass