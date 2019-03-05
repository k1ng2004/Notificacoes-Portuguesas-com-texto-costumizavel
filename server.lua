---------------------------------
-- Created By Toni Morton      --
-- Please, Leave these credits --
-- Edited By Avery M. --
---------------------------------


RegisterServerEvent("SyncTrafficAlert")
AddEventHandler('SyncTrafficAlert', function(inputText)
TriggerClientEvent('DisplayTrafficAlert', -1, inputText)
end)

RegisterServerEvent("TaxiSync")
AddEventHandler('TaxiSync', function(inputText)
TriggerClientEvent('Taxi', -1, inputText)
end)

RegisterServerEvent("Policia1Sync")
AddEventHandler('Policia1Sync', function(inputText)
TriggerClientEvent('Policia1', -1, inputText)
end)

RegisterServerEvent("Policia2Sync")
AddEventHandler('Policia2Sync', function(inputText)
TriggerClientEvent('Policia2', -1, inputText)
end)

RegisterServerEvent("InemSync")
AddEventHandler('InemSync', function(inputText)
TriggerClientEvent('Inem', -1, inputText)
end)

RegisterServerEvent("MecanicoSync")
AddEventHandler('MecanicoSync', function(inputText)
TriggerClientEvent('Mecanico', -1, inputText)
end)

AddEventHandler('chatMessage', function(from, name, message)
	if message == "/noticias" then
		CancelEvent()
		TriggerClientEvent("TrafficAlert", from)
	end
end)

AddEventHandler('chatMessage', function(from, name, message)
	if message == "/taxi" then
		CancelEvent()
		TriggerClientEvent("TaxiAlert", from)
	end
end)

AddEventHandler('chatMessage', function(from, name, message)
	if message == "/psp" then
		CancelEvent()
		TriggerClientEvent("Policia1Alert", from)
	end
end)

AddEventHandler('chatMessage', function(from, name, message)
	if message == "/gnr" then
		CancelEvent()
		TriggerClientEvent("Policia2Alert", from)
	end
end)

AddEventHandler('chatMessage', function(from, name, message)
	if message == "/inem" then
		CancelEvent()
		TriggerClientEvent("InemAlert", from)
	end
end)
AddEventHandler('chatMessage', function(from, name, message)
	if message == "/mecanico" then
		CancelEvent()
		TriggerClientEvent("MecanicoAlert", from)
	end
end)

---------------------------------
-- Created By Toni Morton      --
-- Please, Leave these credits --
-- Edited By Avery M. --
---------------------------------
