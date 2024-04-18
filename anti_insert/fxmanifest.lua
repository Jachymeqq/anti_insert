fx_version 'adamant'
games { 'gta5' }

ui_page 'html/index.html'

author 'Jachymeqq'
description 'Insert Script' -- https://danny255-scripts.tebex.io/package/4383179
version '1.0.0'


client_scripts {
   '@es_extended/locale.lua',
	'locales/*.lua',
   'config.lua',
	'client.lua',
}


server_scripts {
   '@es_extended/locale.lua',
	'locales/*.lua',
   'config.lua',
   'server.lua',
}