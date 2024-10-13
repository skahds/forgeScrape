world = {}

fs.on("@load", function ()
    
end)

fs.on("@update", function ()
    
end)

fs.on("@render", function ()
    for i, entities in pairs(world) do
        entities:draw()
    end
end)