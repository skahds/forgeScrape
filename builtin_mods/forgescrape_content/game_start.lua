local time = 0

fs.on("@load", function ()

    -- bellow is just a test for spos
    local spos = fs.coordToPos(1, 1)
    fs.trySpawnBlock("conveyor", spos)
    print(spos.x)
    


    -- fs.trySpawnOre("copper", 3*32, 3*32)
end)

fs.on("@update", function ()
    time = time + fs.get("dt")
    if time > 2 then
        for _, group in pairs(world) do
            for index, entity in pairs(group) do
                print(_, entity.spos.index)
            end
        end
        local spos2 = fs.coordToPos(4, 3)
        fs.trySpawnBlock("conveyor", spos2)
        for _, group in pairs(world) do
            for index, entity in pairs(group) do
                print(_, entity.spos.index)
            end
        end

        time = 0
    end
end)