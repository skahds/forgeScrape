entity = class()
function entity:init(arg)
    for k, v in pairs(arg) do
        self[k] = v
    end
end

function entity:update()
    if self.x == nil and self.spos then
        self.x = self.spos.x*fs.tileSize
    end
    if self.y == nil and self.spos then
        self.y = self.spos.y*fs.tileSize
    end
end

function entity:draw()
    if self.image then
        
    else
        if self.x and self.y then
            love.graphics.rectangle("fill", self.x, self.y, fs.tileSize, fs.tileSize)
        end

    end
end