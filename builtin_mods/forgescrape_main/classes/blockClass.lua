fs.classes.block = class(entity)

local block = fs.classes.block
function block:init(arg)
    entity.init(self, arg)
end

function block:update()
    entity.update(self)

    if type(self.onUpdate) == "function" then
        self:onUpdate()
    end

end

function block:collided(ent)
    if ent.ore then
        if type(self.onActive) == "function" then
            self:onActive(ent)
        end
    end
end