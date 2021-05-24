--- CONFIGURATION ---



-- AntiKey keys (https://docs.fivem.net/game-references/controls/), remove all to disable
AntiKeys = {
	121,
	213,
	214
}





if(#AntiKeys > 0) then
	Citizen.CreateThread(function()
		if(checkHealthSetter) then
			checkHealthSetter = false
			Wait(6000)
			checkHealthSetter = true
		end
		while true do
			Wait(100)
			for ke in pairs(AntiKeys) do
				if(IsControlPressed(0, AntiKeys[ke])) then
					TriggerServerEvent("antikey", "keys")
				end
			end
		end
	end)
end

