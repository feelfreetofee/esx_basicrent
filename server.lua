local unique = {}
for i, point in pairs(Config.points) do
	local id = exports.xshop:register({
		elements = point.vehicles,
		job = point.job,
		action = function(src, xPlayer, selected)
			if unique[i] and unique[i][src] and DoesEntityExist(unique[i][src]) then
				DeleteEntity(unique[i][src])
			end
			local ped = GetPlayerPed(src)
			ESX.OneSync.SpawnVehicle(selected.name, GetEntityCoords(ped), GetEntityHeading(ped), false, function(veh)
				veh = NetworkGetEntityFromNetworkId(veh)
				repeat SetPedIntoVehicle(ped, veh, -1) Wait(100)
				until GetPedInVehicleSeat(veh, -1) == ped
				SetVehicleNumberPlateText(veh, point.job and xPlayer.job.label or Config.plate)
				if unique[i] then
					unique[i][src] = veh
				end
			end)
		end
	})
	if point.unique then
		unique[i] = {}
	end
	--
	local grade
	if point.job then
		grade = 99
		for _, data in pairs(point.vehicles) do
			if not data.grade then
				grade = 0
				break
			elseif data.grade < grade then
				grade = data.grade
			end
		end
	end
	--
	exports.xpoints:register({
		coords = point.coords,
		blip = not point.blip and Config.blip,
		ped = point.ped,
		marker = not point.ped and {},
		action = {
			notification = Config.notification,
			key = Config.key,
			xevent = function(src, xPlayer)
				local elements = {}
				for model, veh in pairs(point.vehicles) do
					if not veh.grade or veh.grade <= xPlayer.job.grade then
						table.insert(elements, {
							name = model,
							label = model ..
							(veh.price and ('<div style="display:inline-block;color:green">' .. veh.price .. '$</div>') or '')
						})
					end
				end
				if #elements < 1 then return end
				TriggerClientEvent('xshop:menuDefault', src, id, Config.title, elements)
			end
		}
	}, point.job, grade)
end
