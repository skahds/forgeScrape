fs.classes = {}

entity = class()
function entity:init(arg)
    for k, v in pairs(arg) do
        self[k] = v
    end
end

function entity:update()
    -- if self.spos then
    --     self.x = self.spos.x*fs.tileSize
    --     self.y = self.spos.y*fs.tileSize
    -- end

end

function entity:draw(index)

    if self.image then
        --this is a cheap solution, i hate this
        local x, y = fs.indexToCoord(index).x, fs.indexToCoord(index).y
        -- love.graphics.draw(fs.sprites[self.image], self.x, self.y)
        love.graphics.draw(fs.sprites[self.image], x*fs.tileSize, y*fs.tileSize)
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