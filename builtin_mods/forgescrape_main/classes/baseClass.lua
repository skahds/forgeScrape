fs.classes = {}

entity = class()
function entity:init(arg)
    for k, v in pairs(arg) do
        self[k] = v
    end

end

function entity:update()
    if self.spos then
        self.x = self.spos.x*fs.tileSize
        self.y = self.spos.y*fs.tileSize
    end
end

function entity:draw()
    if self.image then
        love.graphics.draw(fs.sprites[self.image], self.x, self.y)
    else
        if self.x and self.y then
            love.graphics.rectangle("fill", self.x, self.y,
            self.width or self.baseWidth or fs.tileSize,
            self.height or self.baseHeight or fs.tileSize) 
        end
    end
end

function entity:collided(ent)
    
end