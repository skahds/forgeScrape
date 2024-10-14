fs.on("@load", function ()

    -- bellow is just a test for spos and indexes
    fs.trySpawnBlock("drill", fs.indexToCoord(fs.coordToPos(2, 2).index))
    fs.trySpawnOre("copper", 3*32, 3*32)
end)
