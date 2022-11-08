Utils = {}

function Utils.CenterButton(monitor, label, startPosX, startPosY, width, height, bgColor, textColor)

    for row = startPosY, startPosY + height - 1 do
        monitor.setCursorPos(startPosX, row)
        monitor.blit(string.rep(" ", width), string.rep(colors.toBlit(textColor), width),
            string.rep(colors.toBlit(bgColor), width))
    end
    monitor.setTextColor(textColor)
    monitor.setCursorPos(startPosX + math.floor((width - #label) / 2), startPosY + math.floor(height / 2))
    monitor.blit(label, string.rep(colors.toBlit(textColor), #label), string.rep(colors.toBlit(bgColor), #label))
end

return Utils
