fs.sprites = {}

fs.worldSize = 40


fs.on("@load", function ()
    fs.updateStorage("dt", 0)
end)

fs.on("@update", function ()
    for _, group in pairs(world) do
        for index, entity in pairs(group) do
            if type(entity.update) == "function" then
                entity:update()

            end
        end
    end
end)

fs.on("@render", function ()
    for _, group in pairs(world) do
        for index, entity in pairs(group) do
            -- will add renderLayer later
            if type(entity.draw) == "function" then
                entity:draw()
            end
        end
    end
end)