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

function entity:draw(index)

    if self.image then
        love.graphics.draw(
        fs.sprites[self.image],
        self.x+fs.sprites[self.image]:getWidth() / 2,
        self.y+fs.sprites[self.image]:getHeight() / 2,
        math.rad(self.spos.rotation*90),
        1,
        1,
        fs.sprites[self.image]:getWidth() / 2,
        fs.sprites[self.image]:getHeight() / 2)
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

function entity:getSpos()
    if self.spos then
        return table.deepcopy(self.spos)
    end
    return nil
end