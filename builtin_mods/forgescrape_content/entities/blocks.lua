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

        selfEnt.cooldown = selfEnt.cooldown + 1 * fs.get("dt")
        if selfEnt.cooldown > 1 then
            local selfSpos = selfEnt:getSpos()
            selfSpos:right(1, true)
            fs.trySpawnOre("copper", (selfSpos.x)*fs.tileSize, (selfSpos.y)*fs.tileSize)
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