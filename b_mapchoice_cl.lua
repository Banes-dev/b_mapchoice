-- Command
RegisterCommand(Config.commandname, function()
    MapChoice()
end, false)



-- Main Menu
MapChoice = function()
local open = false
local mapchoicemenu = RageUI.CreateMenu("", Config.mapchoicemenu.title, 20, 20, "b_stream_mapchoice", "mapchoice_ban")
    mapchoicemenu.Closed = function()
    open = false
end
    if open then
        open = false
        RageUI.Visible(mapchoicemenu, false)
        return
    else
        open = true
        RageUI.Visible(mapchoicemenu, true)
        CreateThread(function()
            while open do

                RageUI.IsVisible(mapchoicemenu, function()

                    RageUI.Separator(Config.mapchoicemenu.separator)

                    for i = 0, Config.nbmap do
                        RageUI.Button(Config.mapchoicemenu.bouton..""..i, nil, {RightLabel = Config.mapchoicemenu.rightlabel}, true, {
                            onSelected = function()
                                DoScreenFadeOut(500)
                                TriggerServerEvent("ChoiceMap", i)
                                Wait(500)
                                DoScreenFadeIn(500)
                            end
                        })
                    end

                    RageUI.Line()
                end)

                Wait(0)
            end
        end)
    end
end