resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

files {
	'data/r8/handling.meta',
	'data/r8/vehicles.meta',
	'data/r8/carcols.meta',
	'data/r8/carvariations.meta',
    	'data/r8/vehiclelayouts.meta',
	
	'data/tt/vehicles.meta',

	--'data/s4/vehicles.meta',
	
	'data/i8/handling.meta',
	'data/i8/vehicles.meta',
	'data/i8/carcols.meta',
	'data/i8/carvariations.meta',
    'data/i8/vehiclelayouts.meta',
}

data_file 'HANDLING_FILE' 'data/r8/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/r8/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/r8/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/r8/carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'data/r8/vehiclelayouts.meta'

data_file 'VEHICLE_METADATA_FILE' 'data/tt/vehicles.meta'

--data_file 'VEHICLE_METADATA_FILE' 'data/s4/vehicles.meta'

data_file 'HANDLING_FILE' 'data/i8/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/i8/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/i8/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/i8/carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'data/i8/vehiclelayouts.meta'

client_script 'data/vehicle_names.lua'