local time = 0

fs.on("@load", function ()

    -- bellow is just a test for spos
    for i=1, 5 do
        local spos = fs.coordToPos(i+3, 3)
        fs.trySpawnBlock("conveyor", spos)
    end
    fs.trySpawnBlock("drill", fs.coordToPos(3, 3))
    -- fs.trySpawnBlock("drill", fs.coordToPos(4, 2))
    fs.trySpawnBlock("furnace", fs.coordToPos(9, 3))

    fs.trySpawnOre("copper", 4*fs.tileSize, 3*fs.tileSize)

    print(spos.x)
    


    -- fs.trySpawnOre("copper", 3*32, 3*32)
end)

fs.on("@update", function ()

end)