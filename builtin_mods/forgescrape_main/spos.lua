-- spos is Slot-Position
-- spos is a table that contains x and y

function fs.getPos(ent)
    return ent.spos
end

function fs.coordToPos(x, y)
    return {x=x, y=y}
end