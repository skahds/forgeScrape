fs.defineBlock("wall", {

})

fs.on("@load", function ()
    fs.spawnBlock("wall", fs.coordToPos(2, 2))
end)