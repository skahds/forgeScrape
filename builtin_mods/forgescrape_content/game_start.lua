fs.on("@load", function ()

    -- bellow is just a test for spos
    local spos = fs.coordToPos(0, 0)
    spos:right(2)
    spos:down(2)
    fs.trySpawnBlock("drill", spos)
    -- fs.trySpawnBlock("drill", spos:new(2, 2))
    fs.trySpawnOre("copper", 3*32, 3*32)
end)
