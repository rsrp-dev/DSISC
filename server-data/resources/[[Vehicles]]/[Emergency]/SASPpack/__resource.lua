resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

files {
	'data/non/handling.meta',
	'data/non/vehicles.meta',
	'data/non/carcols.meta',
	'data/non/carvariations.meta',

	'data/els/handling.meta',
	'data/els/vehicles.meta',
	'data/els/carcols.meta',
	'data/els/carvariations.meta',

	'vcf/fbi.xml',
	'vcf/fbi2.xml',
	'vcf/POLARO.xml',
	'vcf/sasp2.xml',
	'vcf/sasp3.xml',
	'vcf/sasp4.xml',
	'vcf/sasp5.xml',
	'vcf/sasp6.xml',
	'vcf/sasp7.xml',
	'vcf/sasp8.xml',
	'vcf/sasp9.xml',
	'vcf/sasp10.xml',
	'vcf/sasp11.xml',
	'vcf/sasp12.xml',
	'vcf/sasp13.xml',
	'vcf/SASP13E.xml',
	'vcf/SASP2E.xml',
	'vcf/SASP4E.xml',
	'vcf/SASP5E.xml',
	'vcf/SASP6E.xml',
	'vcf/SASP7E.xml',
	'vcf/SASP9E.xml',
	'vcf/SASP10E.xml',
	'vcf/SASP14.xml',
	'vcf/SASP14E.xml',

}

data_file 'HANDLING_FILE' 'data/non/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/non/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/non/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/non/carvariations.meta'

data_file 'HANDLING_FILE' 'data/els/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/els/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/els/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/els/carvariations.meta'

client_script 'data/vehicle_names.lua'

is_els 'true'