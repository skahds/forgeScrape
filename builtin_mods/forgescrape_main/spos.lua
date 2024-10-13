--[[ spos is Slot-Position
spos is a table that contains:
x
y
rotation = 0 (up), 1 (right), 2(down) or 3 (left)
--]]

function fs.getPos(ent)
    return ent.spos
end

function fs.coordToPos(x, y, rotation)
    if rotation then
        return {x=x, y=y, r=rotation}
    end
    return {x=x, y=y, r=0}
end