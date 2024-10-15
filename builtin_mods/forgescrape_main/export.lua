fs.entities = {}
fs.tileSize = 32
world = {unordered = {}}

local function addToTable(tbl, arg)
    for k, v in pairs(arg) do
        tbl[k] = v
    end
end

--[[ world is a table that contains indexes which are spos index, this allows for easy spatial partitioning

]]

---@param ent any
function fs.addToWorld(ent, spos)
    if spos then
        table.insert(world[spos.index], ent)
    else
        table.insert(world.unordered, ent)
    end
end

function fs.deleteEnt(ent)
    if ent.block then

    else
        for k, entity in pairs(world.unordered) do
            if entity.x == ent.x and entity.y == ent.y then
                table.remove(world.unordered, k)
            end
        end
    end
end

---@param name string
---@param eType table
function fs.defineBlock(name, eType)
    eType.block = true
    fs.entities[name] = class(fs.classes.block)
    addToTable(fs.entities[name], eType)

end

---@param name string
---@param eType table
function fs.defineOre(name, eType)
    eType.ore = true
    fs.entities[name] = class(fs.classes.ore)
    addToTable(fs.entities[name], eType)

end


---@param name string
---@param spos table
function fs.trySpawnBlock(name, spos)
    assert(fs.entities[name].block, "entity not a block")
    print("Spawning block at", spos.x, spos.y, spos.index)
    print("self rotation=", spos.rotation)
    local ent = fs.entities[name]:new({spos = spos})
    fs.addToWorld(ent, spos)
    fs.call("forgeScrape:entitySpawned")
end

function fs.trySpawnOre(name, x, y)
    assert(fs.entities[name].ore, "entity not an ore")
    fs.addToWorld(fs.entities[name]:new({x=x, y=y}))
    fs.call("forgeScrape:entitySpawned")
end

