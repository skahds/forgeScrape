fs.defineBlock("drill", {
    activationCooldown = 1,
    onActive = function ()
        fs.trySpawnOre("")
    end
})