fs.on("@load", function ()
    fs.trySpawnBlock("drill", fs.coordToPos(2, 2))
    fs.trySpawnOre("copper", fs.coordToPos(3, 3))
end)
