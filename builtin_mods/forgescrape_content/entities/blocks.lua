fs.defineBlock("conveyor", {
    image = "conveyor",
    onActive = function (selfEnt, target)
        target.x = target.x + 50*fs.get("dt")
    end
})

fs.defineBlock("drill", {
    image = "drill",
    cooldown = 0,
    onUpdate = function (selfEnt, target)
        local selfSpos = selfEnt:getSpos()
        selfEnt.cooldown = selfEnt.cooldown + 1 * fs.get("dt")
        if selfEnt.cooldown > 1 then
            fs.trySpawnOre("copper", (selfSpos.x+1)*fs.tileSize, (selfSpos.y)*fs.tileSize)
            selfEnt.cooldown = 0
        end
    end
})

fs.defineBlock("furnace", {
    image = "furnace",
    onActive = function (selfEnt, target)
        fs.deleteEnt(target)
        print("delete")
    end
})