fs.on("@renderer:renderOutsideCamera", function ()
    fs.ui.scene.main:beginFrame()
    for i, ui in ipairs(world.ui) do
        ui.element:render(ui.x, ui.y, ui.width, ui.height)
    end
    fs.ui.scene.main:finishFrame()
end)

fs.on("@update", function ()
    local mx, my = love.mouse.getX(), love.mouse.getY()
    fs.ui.pointer:setPosition(mx, my)
end)

fs.on("@mouse:released", function (button)
    if (button == 1) then
		fs.ui.pointer:raise("release")
	end
end)