fx_version "adamant"
games {"gta5"}

name "b_mapchoice"
description "Systeme de bucket simple pour serveur pvp par exemple"
author "Banes"



client_scripts {
    "src/RMenu.lua",
    "src/menu/RageUI.lua",
    "src/menu/Menu.lua",
    "src/menu/MenuController.lua",
    "src/components/*.lua",
    "src/menu/elements/*.lua",
    "src/menu/items/*.lua",
    "src/menu/panels/*.lua",
    "src/menu/windows/*.lua",

    "config.lua",

    "b_mapchoice_cl.lua",
}
server_scripts {
    "config.lua",

    "b_mapchoice_sv.lua",
}