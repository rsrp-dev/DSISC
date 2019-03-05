Config = {}

Config.EnableBlips			= true
Config.EnableJerryCans			= true
Config.EnableBuyableJerryCans		= true -- Coming soon, currently useless
Config.VehicleFailure			= 12 -- At what fuel-percentage should the engine stop functioning properly? (Defualt: 10)
Config.FuelPerTickLow              = 10 -- This will increment at the lowest %  per tick (I.E. local integer  = math.random(Config.FuelPerTickLow  , Config.FuelPerTickHigh )--local fuelthis = integer / 10)
Config.FuelPerTickHigh              = 15 -- This will increment at the highest %  per tick