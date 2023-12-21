local clientUiDebug
local clientUiDebugLabel
local clientUiDebugHighlightWidget
local clientUiDebugActivateButton
local enabled = true

function onClientUiDebuggerMouseMove(mouseBindWidget, mousePos, mouseMove)
    local widgets = rootWidget:recursiveGetChildrenByPos(mousePos)

    local smallestWidget
    for _, widget in pairs(widgets) do
        if (widget:getId() ~= 'highlightWidget' and widget:getId() ~= 'toolTip') then
            if (not smallestWidget or
                    (widget:getSize().width <= smallestWidget:getSize().width and widget:getSize().height <= smallestWidget:getSize().height)
            ) then
                smallestWidget = widget
            end
        end
    end
    if smallestWidget then
        clientUiDebugHighlightWidget:setPosition(smallestWidget:getPosition())
        clientUiDebugHighlightWidget:setSize(smallestWidget:getSize())
        clientUiDebugHighlightWidget:raise()
    end

    local widgetNames = {}
    for wi = #widgets, 1, -1 do
        local widget = widgets[wi]
        if (widget:getId() ~= 'highlightWidget') then
            table.insert(widgetNames, widget:getClassName() .. '#' .. widget:getId())
        end
    end
    clientUiDebugLabel:setText(table.concat(widgetNames, " -> "))
end

function activate()
  enabled = not enabled
  if enabled then
    clientUiDebugActivateButton:setText("Disable")
    connect(rootWidget, {
        onMouseMove = onClientUiDebuggerMouseMove,
    })
  else
    clientUiDebugActivateButton:setText("Enable")
    clientUiDebugHighlightWidget:setSize({0, 0})
    --clientUiDebugLabel:setText("")
    disconnect(rootWidget, {
        onMouseMove = onClientUiDebuggerMouseMove,
    })
  end
end

function init()
    connect(rootWidget, {
        onMouseMove = onClientUiDebuggerMouseMove,
    })
    clientUiDebug = g_ui.displayUI('client_ui_debug')
    clientUiDebugLabel = clientUiDebug:getChildById('clientUiDebugLabel')
    clientUiDebugHighlightWidget = g_ui.createWidget('HighlightWidget', rootWidget)
    clientUiDebugActivateButton = clientUiDebug:getChildById('activateButton')
    activate()
end

function terminate()
    disconnect(rootWidget, {
        onMouseMove = onClientUiDebuggerMouseMove,
    })
    clientUiDebug:destroy()
    clientUiDebugHighlightWidget:destroy()
    clientUiDebugActivateButton:destroy()
end
