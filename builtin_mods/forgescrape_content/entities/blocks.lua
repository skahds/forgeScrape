fs.defineBlock("drill", {
    activationCooldown = 1,
    onActive = function ()
        fs.trySpawnOre("copper", 100, 100)
    end
})