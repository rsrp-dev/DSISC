resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

files {
	'data/cartr16/handling.meta',
	'data/cartr16/vehicles.meta',
	'data/cartr16/carcols.meta',
	'data/cartr16/carvariations.meta',
    'data/cartr16/vehiclelayouts.meta',
	
	'data/cotrailer/handling.meta',
	'data/cotrailer/vehicles.meta',
	'data/cotrailer/carcols.meta',
	'data/cotrailer/carvariations.meta',
    'data/cotrailer/vehiclelayouts.meta',
	
	'data/ebt/handling.meta',
	'data/ebt/vehicles.meta',
	'data/ebt/carcols.meta',
	'data/ebt/carvariations.meta',
    'data/ebt/vehiclelayouts.meta',
	
	'data/apt/handling.meta',
	'data/apt/vehicles.meta',
	'data/apt/carcols.meta',
	'data/apt/carvariations.meta',
    'data/apt/vehiclelayouts.meta',
	
}

data_file 'HANDLING_FILE' 'data/cartr16/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/cartr16/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/cartr16/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/cartr16/carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'data/cartr16/vehiclelayouts.meta'

data_file 'HANDLING_FILE' 'data/cotrailer/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/cotrailer/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/cotrailer/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/cotrailer/carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'data/cotrailer/vehiclelayouts.meta'

data_file 'HANDLING_FILE' 'data/ebt/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/ebt/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/ebt/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/ebt/carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'data/ebt/vehiclelayouts.meta'

data_file 'HANDLING_FILE' 'data/apt/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/apt/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/apt/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/apt/carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'data/apt/vehiclelayouts.meta'

client_script 'data/vehicle_names.lua'