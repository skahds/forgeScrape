ore = class(entity)
function ore:init(arg)
    entity:init(arg)

end

function ore:update()
    self:checkCollision()
end

function ore:checkCollision()
    if self.x and self.y then
        local affectedSpos = {}
        table.insert(affectedSpos, fs.realCoordToPos(self.x, self.y))
    end
end