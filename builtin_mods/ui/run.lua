fs.on("@renderer:renderOutsideCamera", function ()
    for i, ui in ipairs(world.ui) do
        ui:draw()
    end
end)