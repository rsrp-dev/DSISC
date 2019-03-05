resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

files {
	'data/E36/handling.meta',
	'data/E36/vehicles.meta',
	'data/E36/carcols.meta',
	'data/E36/carvariations.meta',
    'data/E36/vehiclelayouts.meta',
	
	'data/E60/handling.meta',
	'data/E60/vehicles.meta',
	'data/E60/carcols.meta',
	'data/E60/carvariations.meta',
    'data/E60/vehiclelayouts.meta',
	
	'data/e90/handling.meta',
	'data/e90/vehicles.meta',
	'data/e90/carcols.meta',
	'data/e90/carvariations.meta',
    'data/e90/vehiclelayouts.meta',
}

data_file 'HANDLING_FILE' 'data/E36/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/E36/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/E36/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/E36/carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'data/E36/vehiclelayouts.meta'

data_file 'HANDLING_FILE' 'data/E60/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/E60/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/E60/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/E60/carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'data/E60/vehiclelayouts.meta'

data_file 'HANDLING_FILE' 'data/e90/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/e90/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/e90/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/e90/carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'data/e90/vehiclelayouts.meta'

client_script 'data/vehicle_names.lua'