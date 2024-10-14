fs.classes.block = class(entity)

local block = fs.classes.block
function block:init(arg)
    entity:init(arg)
end

function block:collided(ent)
    if ent.ore then
        self:onActive(ent)
    end
end