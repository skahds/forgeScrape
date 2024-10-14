fs.defineBlock("conveyor", {
    image = "conveyor",
    activationCooldown = 1,
    onActive = function (selfEnt, target)
        -- fs.trySpawnOre("copper", 100, 100)
        target.x = target.x + 20*fs.get("dt")
    end
})