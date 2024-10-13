fs.entities = {}
fs.tileSize = 16

---defines a block
---@param name string
---@param eType table
function fs.defineBlock(name, eType)
    fs.entities[name] = class(entity)
end

---spawns a block as spos
---@param name string
---@param spos table
function fs.spawnBlock(name, spos)
    table.insert(world, fs.entities[name]:new({spos = spos, x=spos.x*16, y=spos.y*16}))
end