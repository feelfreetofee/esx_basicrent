Config = {}

Config.key = 38

Config.blip = {
	type = 225,
	string = 'Garage'
}

Config.title = 'Garage'

Config.notification = 'Press ~INPUT_PICKUP~ to open garage'

Config.plate = 'rent'

Config.points = {
	{
		coords = vec3(-240, -993, 28.3),
		unique = true,
		ped = {
			model = 'u_m_m_bikehire_01',
			heading = 223
		},
		vehicles = {
			bmx = {
				price = 50
			},
			cruiser = {
				price = 50
			},
			fixter = {
				price = 50
			},
			scorcher = {
				price = 50
			},
			tribike = {
				price = 50
			},
			tribike2 = {
				price = 50
			},
			tribike3 = {
				price = 50
			},
		}
	},
	{
		coords = vec3(428, -1012, 28),
		job = 'police',
		ped = {
			model = 's_m_y_cop_01',
			heading = 120
		},
		vehicles = {
			policeb = {},
			police = {},
			police2 = {
				grade = 1
			},
			police3 = {
				grade = 2
			},
			policet = {
				grade = 3
			},
		}
	},
	{
		coords = vec3(458, -1026, 28),
		job = 'police',
		blip = true,
		ped = {
			model = 'mp_m_fibsec_01',
			heading = 50
		},
		vehicles = {
			fbi = {
				grade = 4
			},
			fbi2 = {
				grade = 4
			},
		}
	},
	{
		coords = vec3(286, -1437, 29),
		job = 'ambulance',
		ped = {
			model = 's_m_m_doctor_01',
			heading = 17
		},
		vehicles = {
			lguard = {},
			ambulance = {
				grade = 1
			},
		}
	},
}
