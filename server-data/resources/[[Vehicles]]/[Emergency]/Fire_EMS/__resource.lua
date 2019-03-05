resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

files {
	'data/Fire/vehicles.meta',
	'data/Fire/carcols.meta',
	'data/Fire/carvariations.meta',

	'data/fpv/vehicles.meta',

	'data/fxp/vehicles.meta',	
	
	'data/ff350/vehicles.meta',	
	'data/ff350/carvariations.meta',

	'ff350.xml',
	'firexp.xml',
	'firepov.xml',
	'als5.xml',
	'ambulance.xml',
	'batt1.xml',
	'blazer2.xml',
	'eng5.xml',
	'fiheavy.xml',
	'firetruk.xml',
	'firetah.xml',
}

data_file 'VEHICLE_METADATA_FILE' 'data/Fire/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/Fire/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/Fire/carvariations.meta'

data_file 'VEHICLE_METADATA_FILE' 'data/fpv/vehicles.meta'

data_file 'VEHICLE_METADATA_FILE' 'data/fxp/vehicles.meta'

data_file 'VEHICLE_METADATA_FILE' 'data/ff350/vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/ff350/carvariations.meta'

client_script 'data/vehicle_names.lua'
is_els 'true'