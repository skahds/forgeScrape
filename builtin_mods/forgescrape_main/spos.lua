--[[ spos is Slot-Position
spos is a table that contains:
x
y
index = x + y * worldHeigth
rotation = 0 (up), 1 (right), 2(down) or 3 (left)

WARNING: THE X AND Y IS 0 INDEXED
--]]

function fs.getPos(ent)
    return ent.spos
end

function fs.coordToPos(x, y, rotation)
    local index = x + y * fs.worldSize
    return {x=x, y=y, index=index, r=rotation or 0}
end

function fs.posToCoord(spos)
    assert(type(spos)=="table", "spos not a table")
    return spos.x*fs.tileSize, spos.y*fs.tileSize
end

--WARNING: THE X AND Y IS 0 INDEXED
function fs.indexToCoord(index)
    assert(type(index)=="number", "index not a num")
    return {
        x = index % fs.worldSize,
        y = math.floor(index/fs.worldSize)
    }    
end
