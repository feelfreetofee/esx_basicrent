fx_version 'cerulean'
game 'gta5'

lua54 'yes'
use_experimental_fxv2_oal 'yes'

shared_scripts {
	'@es_extended/imports.lua',
	'config.lua'
}

server_script 'server.lua'

dependencies {
	'es_extended',
	'esx_menu_default',
	'points',
	'xpoints',
	'xshop'
}