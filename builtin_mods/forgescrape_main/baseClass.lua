entity = class()
function entity:init(arg)
    self.x = arg.x or nil
    self.y = arg.y or nil
    self.spos = arg.spos
end

function entity:update()
    if self.x == nil then
        self.x = self.spos.x*fs.tileSize
    end
    if self.y == nil then
        self.y = self.spos.y*fs.tileSize
    end
end

function entity:draw()
    if self.image then
        
    else
        love.graphics.rectangle("fill", self.x, self.y, fs.tileSize, fs.tileSize)
    end
end