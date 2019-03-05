resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

-- add the files to be sent to the client
files {
  'weapons.meta'
}

-- specify data file entries to be added
-- these entries are the same as content.xml in a DLC pack
data_file 'WEAPONINFO_FILE_PATCH' 'weapons.meta'