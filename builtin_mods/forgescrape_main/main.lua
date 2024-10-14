world = {}
fs.worldSize = 40

fs.on("@load", function ()

end)

fs.on("@update", function ()
    for i, entities in pairs(world) do
        entities:update()
    end
end)

fs.on("@render", function ()
    for i, entities in pairs(world) do
        entities:draw()
    end
end)