ui = class(entity)
function ui:init(arg)
    entity.init(self, arg)
end

function ui:draw()
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end