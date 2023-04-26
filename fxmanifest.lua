fx_version 'cerulean'
games { 'gta5' }

author 'Samuel#0008'
description 'Item Air drop system for qbcore'
version '1.0'

shared_scripts {
    "config.lua",
}

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',    
    "client/cl_main.lua"
}

server_scripts {    
    "server/sv_main.lua"
}

lua54 'yes'