fs.on("@load", function ()

    -- bellow is just a test for spos
    local spos = fs.coordToPos(3, 3)
    fs.trySpawnBlock("conveyor", spos)
    local spos2 = fs.coordToPos(4, 3)
    fs.trySpawnBlock("conveyor", spos2)


    fs.trySpawnOre("copper", 3*32, 3*32)
end)
