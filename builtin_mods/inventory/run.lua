fs.on("@mouse:released", function (button)
    if button == 1 then
        local currentMouseSpos = fs.realCoordToPos(love.mouse.getX(), love.mouse.getY())

        if fs.getEnt(currentMouseSpos) == nil then
            if fs.inventory.storage[fs.inventory.selection] > 0 then
                fs.trySpawnBlock(fs.inventory.selection, currentMouseSpos)
            end
            fs.inventory.storage[fs.inventory.selection] = fs.inventory.storage[fs.inventory.selection] - 1
        end
    end
end)

fs.on("@renderer:renderOutsideCamera", function ()
    
end)