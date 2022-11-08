-- initialize
local utils = require "utils"
local monitor = peripheral.find("monitor")
local monWidth, monHeight = monitor.getSize()
local padding = 2
local clickedF = false
local clickedS = false
local clickArea1 = { 3, 29, 3, 5 }
local clickArea2 = { 3, 29, 8, 10 }

monitor.clear()

-- logic
while true do
    local event, side, x, y = os.pullEvent("monitor_touch")

    if y >= clickArea1[3] then
        if y <= clickArea1[4] then
            if x >= clickArea1[1] then
                if x <= clickArea1[2] then
                    clickedF = not clickedF
                end
            end
        end
    end

    if y >= clickArea2[3] then
        if y <= clickArea2[4] then
            if x >= clickArea2[1] then
                if x <= clickArea2[2] then
                    clickedS = not clickedS
                end
            end
        end
    end

    if clickedF == false then
        Utils.CenterButton(monitor, "Zort1", clickArea1[1], clickArea1[3], monWidth - padding * 2, 3, colors.red,
            colors.white)
    else
        Utils.CenterButton(monitor, "Zort2", clickArea1[1], clickArea1[3], monWidth - padding * 2, 3, colors.green,
            colors.white)
    end
    if clickedS == false then
        Utils.CenterButton(monitor, "AnanZa123123", clickArea2[1], clickArea2[3], monWidth - padding * 2, 3, colors.red,
            colors.white)
    else
        Utils.CenterButton(monitor, "AnanZa321321", clickArea2[1], clickArea2[3], monWidth - padding * 2, 3, colors.green
            , colors.white)
    end
    redstone.setOutput("left", clickedF)
    redstone.setOutput("top", clickedS)
end
