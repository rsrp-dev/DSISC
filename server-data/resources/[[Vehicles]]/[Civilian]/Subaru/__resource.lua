resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

files {
	'data/11WRX/handling.meta',
	'data/11WRX/vehicles.meta',
	'data/11WRX/carcols.meta',
	'data/11WRX/carvariations.meta',
    'data/11WRX/vehiclelayouts.meta',
	
	'data/16WRX/handling.meta',
	'data/16WRX/vehicles.meta',
	'data/16WRX/carcols.meta',
	'data/16WRX/carvariations.meta',
    'data/16WRX/vehiclelayouts.meta',
}

data_file 'HANDLING_FILE' 'data/11WRX/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/11WRX/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/11WRX/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/11WRX/carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'data/11WRX/vehiclelayouts.meta'

data_file 'HANDLING_FILE' 'data/16WRX/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/16WRX/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/16WRX/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/16WRX/carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'data/16WRX/vehiclelayouts.meta'

client_script 'data/vehicle_names.lua'