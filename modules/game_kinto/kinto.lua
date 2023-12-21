local kintoWindow

function init()
    connect(g_game, {
        onGameStart = onGameStart,
        onGameEnd = destroy
    })

    kintoWindow = g_ui.displayUI('kinto.otui')
    kintoWindow:setVisible(false)

    function toggleKintoWindow()
        if not g_game.isOnline() then
            return
        end
    
        if not kintoWindow:isVisible() then
            -- Otwórz okno "kintoWindow"
            kintoWindow:setVisible(true)
    
            -- Tutaj możesz również przesłać odpowiednie dane na serwer gry,
            -- jeśli to jest wymagane w zależności od twojej implementacji.
            -- Na przykład, możesz wysłać informację, że okno zostało otwarte.
        end
    end
    g_keyboard.bindKeyDown('Escape', hideKintoWindow)
    
    ProtocolGame.registerExtendedJSONOpcode(255, parseOpcode)
end
function onUseItem(item)
    if item:getId() == 1277 then
        toggleKintoWindow()
    end
end
function terminate()
    disconnect(g_game, {
        onGameEnd = destroy
    })
    ProtocolGame.unregisterExtendedJSONOpcode(255, parseOpcode)
    kintoButton:destroy()
    destroy()
end

function onGameStart()
    kintoWindow = g_ui.displayUI('kinto.otui')
    kintoWindow:setVisible(true)
end

function destroy()
    if kintoWindow then
        kintoWindow:destroy()
        kintoWindow = nil
    end
end

function parseOpcode(protocol, opcode, data)
    updateKintoWindow(data)
end

function sendOpcode(data)
    local protocolGame = g_game.getProtocolGame()
    if protocolGame then
        protocolGame:sendExtendedJSONOpcode(476, data)
    end
end

-- Pozostałe funkcje UI
-- ...

-- Funkcje do obsługi akcji UI
function onTeleportToCity(cityName)
    g_game.getProtocolGame():sendExtendedJSONOpcode(255, { action = 'teleportToCity', city = cityName })
end

function onSaveLocation(slot)
    g_game.getProtocolGame():sendExtendedJSONOpcode(255, { action = 'saveLocation', slot = slot })
end

function onTeleportToSavedLocation(slot)
    g_game.getProtocolGame():sendExtendedJSONOpcode(255, { action = 'teleportToSavedLocation', slot = slot })
end

function toggleKintoWindow()
    if not g_game.isOnline() then
        return
    end

    if kintoWindow:isVisible() then
        sendOpcode({ action = 'hide' })
        kintoWindow:setVisible(false)
    else
        sendOpcode({ action = 'info' })
        kintoWindow:setVisible(true)
    end
end

function hideKintoWindow()
    if kintoWindow and kintoWindow:isVisible() then
        sendOpcode({ action = 'hide' })
        kintoWindow:setVisible(false)
    end
end

    -- Implementacja aktualizacji interfejsu użytkownika
    function updateKintoWindow(data)
        -- Zakładając, że data zawiera informacje o dostępnych miastach i zapisanych lokalizacjach
        local cityList = kintoWindow:getChildById('cityList') -- Załóżmy, że jest taki widget
        if not cityList then
            print("City list not found!")
            return
        end
        cityList:clear()
       
            for i, v in ipairs(myTable) do
        for _, city in pairs(data.cities) do
            local cityLabel = g_ui.createWidget('UILabel')
            cityLabel:setText(city)
            cityLabel.onClick = function() onTeleportToCity(city) end
            cityList:addChild(cityLabel)
        end
    
    end

       --[[ local savedSlotList = kintoWindow:getChildById('savedSlotList') -- Załóżmy, że jest taki widget
        savedSlotList:clear()
    
        for i, slot in ipairs(data.savedSlots) do
            local slotButton = g_ui.createWidget('UIButton')
            slotButton:setText('Slot ' .. i)
            slotButton.onClick = function() onTeleportToSavedLocation(i) end
            savedSlotList:addChild(slotButton)
        end--]]
    end
    
