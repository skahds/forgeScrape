fs.classes.ore = class(entity)
local ore = fs.classes.ore
function ore:init(arg)
    entity:init(arg)
    if self.baseHeight and self.height == nil then
        self.height = self.baseHeight
    end
    if self.baseWidth and self.width == nil then
        self.width = self.baseWidth
    end
end

function ore:update()
    self:checkCollision()
    
end

function ore:checkCollision()
    if self.x and self.y then
        local affectedSpos = {}
        
        -- need to check if it affects multiple tiles

        for dx=0, math.floor(self.width/fs.tileSize) do
            for dy=0, math.floor(self.height/fs.tileSize) do
                table.insert(affectedSpos, fs.realCoordToPos(self.x+dx*32, self.y+dy*32))
            end
        end
        for i, spos in ipairs(affectedSpos) do
            local worldTbl = world[spos.index]
            if worldTbl then
                for i, ent in ipairs(worldTbl) do
                    if ent.block then
                        self:collided(ent)
                        ent:collided(self)
                    end
                end
            end
            
        end
    end
end

function ore:collided(ent)

end