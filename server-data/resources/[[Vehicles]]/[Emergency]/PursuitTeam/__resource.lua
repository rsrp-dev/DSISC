resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

files {
	'data/handling.meta',
	'data/vehicles.meta',
	'data/carcols.meta',
	'data/carvariations.meta',
	'data/vehiclelayouts.meta',

	'pelite/handling.meta',
	'pelite/vehicles.meta',
	'pelite/carcols.meta',
	'pelite/carvariations.meta',
	'pelite/vehiclelayouts.meta',

	'peliteb.xml',
	'peliteb1.xml',
	'plegendx1.xml',
	'psenior.xml',
	'pentry.xml',
	
	
}

data_file 'HANDLING_FILE' 'data/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'data/vehiclelayouts.meta'

data_file 'HANDLING_FILE' 'pelite/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'pelite/vehicles.meta'
data_file 'CARCOLS_FILE' 'pelite/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'pelite/carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'pelite/vehiclelayouts.meta'

client_script 'data/vehicle_names.lua'

is_els 'true'