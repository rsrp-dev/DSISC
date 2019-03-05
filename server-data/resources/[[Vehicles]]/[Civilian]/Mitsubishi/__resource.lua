resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

files {
	'data/evo8/handling.meta',
	'data/evo8/vehicles.meta',
	'data/evo8/carcols.meta',
	'data/evo8/carvariations.meta',
    'data/evo8/vehiclelayouts.meta',

	'data/evo9/handling.meta',
	'data/evo9/vehicles.meta',
	'data/evo9/carcols.meta',
	'data/evo9/carvariations.meta',
    'data/evo9/vehiclelayouts.meta',
}

data_file 'HANDLING_FILE' 'data/evo8/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/evo8/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/evo8/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/evo8/carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'data/evo8/vehiclelayouts.meta'

data_file 'HANDLING_FILE' 'data/evo9/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/evo9/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/evo9/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/evo9/carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'data/evo9/vehiclelayouts.meta'

client_script 'data/vehicle_names.lua'