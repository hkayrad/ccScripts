-- variables
local monitor = peripheral.find("monitor")
local x, y    = monitor.getSize()
local padding = 2
local utils   = require "utils"

monitor.clear()

-- logic
Utils.CenterButton(monitor, "Hakan", 3, 3, x - padding * 2, 3, colors.red, colors.white)
