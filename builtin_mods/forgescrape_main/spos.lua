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
---@param rotationRelative boolean
function spos:move(dx, dy, rotationRelative)
    local rotationRelative = rotationRelative or false
    if rotationRelative then
        self.x = self.x + dx
        self.y = self.y + dy
    else
        if self.rotation == 0 then
            -- 0 degrees, move normally
            self.x = self.x + dx
            self.y = self.y + dy
        elseif self.rotation == 1 then
            -- 90 degrees, swap dx and dy (rotate movement)
            self.x = self.x - dy
            self.y = self.y + dx
        elseif self.rotation == 2 then
            -- 180 degrees, invert both directions
            self.x = self.x - dx
            self.y = self.y - dy
        elseif self.rotation == 3 then
            -- 270 degrees, swap and invert dx and dy
            self.x = self.x + dy
            self.y = self.y - dx
        end
    end



    self.index = self.x + self.y * fs.worldSize
end

function spos:up(n, rotationRelative)
    self:move(0, -n, rotationRelative)
end
function spos:down(n, rotationRelative)
    self:move(0, n)
end
function spos:left(n, rotationRelative)
    self:move(-n, 0)
end
function spos:right(n, rotationRelative)
    self:move(n, 0)
end
---rotates 90degree*n cw
function spos:rotate(n)
    self.rotation = (self.rotation + n)%4
end

function fs.getPos(ent)
    return ent.spos
end

function fs.coordToPos(x, y, rotation)
    local index = x + y * fs.worldSize
    local rotation = rotation or 0
    return spos:new({x=x, y=y, index=index, rotation=rotation})
end

function fs.realCoordToPos(x, y, rotation)
    return fs.coordToPos(math.floor(x/fs.tileSize), math.floor(y/fs.tileSize))
end

function fs.posToRealCoord(pos)
    return {x=pos.x*fs.tileSize, y=pos.y*fs.tileSize}
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