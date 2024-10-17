local inventBase, inventBaseIndex
fs.on("@load", function ()
    inventBaseIndex = fs.ui.addUI({name="display_base", scene="main", x=400, y=100, width=100, height=100})
    inventBase = inventBaseIndex.element
end)

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

fs.on("@update", function ()
    inventBase.props.displays = {}
    for items, amount in pairs(fs.inventory.storage) do
        table.insert(inventBase.props.displays, items)
    end
end)

fs.on("@renderer:renderOutsideCamera", function ()
    
end)