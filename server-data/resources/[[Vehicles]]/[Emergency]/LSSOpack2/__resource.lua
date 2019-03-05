resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'


files {
	'data/handling.meta',
	'data/vehicles.meta',
	'data/carcols.meta',
	'data/carvariations.meta',
	
	'data/ktmdata/handling.meta',
	'data/ktmdata/vehicles.meta',
	'data/ktmdata/carvariations.meta',
	
	'umoracle.xml',
	'sscat.xml',
	'shersilv.xml',
	'sherpis.xml',
	'sheriff9.xml',
	'sheriff4.xml',
	'sherding.xml',
	'shercap.xml',
	'sherango.xml',
	'sfum2.xml',
	'sfum1.xml',
	'sfbc5.xml',
	'sfbc4.xml',
	'sfbc3.xml',
	'sfbc2.xml',
	'sfbc1.xml',
	'policeb2.xml',
	'pjackal.xml',
	'oftah.xml',
	'ktmrally.xml',
	'fbi3.xml',

}

data_file 'HANDLING_FILE' 'data/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/carvariations.meta'

data_file 'HANDLING_FILE' 'data/ktmdata/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/ktmdata/vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/ktmdata/carvariations.meta'

client_script 'data/vehicle_names.lua'
