--[[ spos is Slot-Position
spos is a table that contains:
x
y
index = x + y * worldHeigth
rotation = 0 (up), 1 (right), 2(down) or 3 (left)

WARNING: THE X AND Y IS 0 INDEXED
--]]
spos = class()

function spos:init(args)
    for k, v in pairs(args) do
        self[k] = v
    end
end

---@param dx integer
---@param dy integer
function spos:move(dx, dy)
    self.x = self.x + dx
    self.y = self.y + dy
    self.index = (self.x + dx) + ((self.y + dy) * fs.worldSize)
end

function spos:up(n)
    self:move(0, -n)
end
function spos:down(n)
    self:move(0, n)
end
function spos:left(n)
    self:move(-n, 0)
end
function spos:right(n)
    self:move(n, 0)
end

function fs.getPos(ent)
    return ent.spos
end

function fs.coordToPos(x, y, rotation)
    local index = x + y * fs.worldSize
    return spos:new({x=x, y=y, index=index, r=rotation or 0})
end

function fs.realCoordToPos(x, y, rotation)
    return fs.coordToPos(math.floor(x/fs.tileSize), math.floor(y/fs.tileSize))
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

