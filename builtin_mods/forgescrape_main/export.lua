fs.entities = {}
fs.tileSize = 16


local function addToTable(tbl, arg)
    for k, v in pairs(arg) do
        tbl[k] = v
    end
end

---defines a block
---@param name string
---@param eType table
function fs.defineBlock(name, eType)
    eType.block = true
    fs.entities[name] = class(entity)
    addToTable(fs.entities[name], eType)

end

---spawns a block as spos
---@param name string
---@param spos table
function fs.trySpawnBlock(name, spos)
    assert(fs.entities[name].block, "entity not a block")
    table.insert(world, fs.entities[name]:new({spos = spos, x=spos.x*fs.tileSize, y=spos.y*fs.tileSize}))
    fs.call("forgeScrape:entitySpawned")

end

function fs.trySpawnOre(name, spos)
    assert(fs.entities[name].ore, "entity not an ore")
    table.insert(world, fs.entities[name]:new({}))
end