fs.sprites = {}

fs.worldSize = 40


fs.on("@load", function ()
    fs.updateStorage("dt", 0)
    for i=0, fs.worldSize^2+fs.worldSize do
        world[i] = {}
    end
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
                entity:draw(_)
            end
        end
    end
end)