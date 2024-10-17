fs.on("@renderer:renderOutsideCamera", function ()
    fs.ui.scene:beginFrame()
    for i, ui in ipairs(world.ui) do
        ui:draw()
    end
    fs.ui.scene:finishFrame()
end)

fs.on("@update", function ()
    local mx, my = love.mouse.getX(), love.mouse.getY()
    fs.ui.pointer:setPosition(mx, my)
end)