fs.entities = {}
fs.tileSize = 32


local function addToTable(tbl, arg)
    for k, v in pairs(arg) do
        tbl[k] = v
    end
end

---@param ent any
function fs.addToWorld(ent)
    table.insert(world, ent)
end

---@param name string
---@param eType table
function fs.defineBlock(name, eType)
    eType.block = true
    fs.entities[name] = class(entity)
    addToTable(fs.entities[name], eType)

end

---@param name string
---@param eType table
function fs.defineOre(name, eType)
    eType.ore = true
    fs.entities[name] = class(entity)
    addToTable(fs.entities[name], eType)

end


---@param name string
---@param spos table
function fs.trySpawnBlock(name, spos)
    assert(fs.entities[name].block, "entity not a block")
    fs.addToWorld(fs.entities[name]:new({spos = spos, x=spos.x*fs.tileSize, y=spos.y*fs.tileSize}))
    fs.call("forgeScrape:entitySpawned")
end

function fs.trySpawnOre(name, x, y)
    assert(fs.entities[name].ore, "entity not an ore")
    fs.addToWorld(fs.entities[name]:new({x=x, y=y}))
    fs.call("forgeScrape:entitySpawned")
end

