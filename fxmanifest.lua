fx_version 'cerulean'
game 'gta5'
name 'sp_lockers'
description 'Locker System for Aurora RP'
author 'Snowpeak Studio'
version '0.0.1'
lua54 'yes'
use_experimental_fxv2_oal 'yes'

dependencies {
    'ox_inventory',
}

client_scripts {
    'client.lua',
}

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server.lua',
}