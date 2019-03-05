resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

files {
	'data/68dart/handling.meta',
	'data/68dart/vehicles.meta',
	'data/68dart/carcols.meta',
	'data/68dart/carvariations.meta',
    'data/68dart/vehiclelayouts.meta',
	
	'data/70charger/handling.meta',
	'data/70charger/vehicles.meta',
	'data/70charger/carcols.meta',
	'data/70charger/carvariations.meta',
    'data/70charger/vehiclelayouts.meta',
	
	'data/70chevelle/handling.meta',
	'data/70chevelle/vehicles.meta',
	'data/70chevelle/carcols.meta',
	'data/70chevelle/carvariations.meta',
    'data/70chevelle/vehiclelayouts.meta',
}

data_file 'HANDLING_FILE' 'data/68dart/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/68dart/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/68dart/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/68dart/carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'data/68dart/vehiclelayouts.meta'

data_file 'HANDLING_FILE' 'data/70charger/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/70charger/vehicles.meta'

data_file 'HANDLING_FILE' 'data/70chevelle/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/70chevelle/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/70chevelle/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/70chevelle/carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'data/70chevelle/vehiclelayouts.meta'

client_script 'data/vehicle_names.lua'