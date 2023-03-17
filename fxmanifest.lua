fx_version 'cerulean'
game 'gta5'
lua54 'yes'
use_experimental_fxv2_oal 'yes'

author 'zRxnx'
description 'Simple animal stroking system'
version '1.2.0'

shared_scripts {
    '@ox_lib/init.lua',
    'configuration/*.lua'
}

client_scripts {
    'client/*.lua'
}

server_scripts {
    'server/*.lua'
}

dependencies {
	'ox_lib',
	'ox_target'
}
