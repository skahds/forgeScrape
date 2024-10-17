fs = {}

require('broadcast')
require('class')
require('modLoading')

function love.load()
    fs.call("@load")

end

function love.update(dt)
    fs.call("@update")
    fs.updateStorage("dt", dt)
end

function love.draw()
    fs.call("@renderer:render")
    --later on will be used:
    fs.call("@renderer:renderOutsideCamera")
end

function love.keyreleased(key)
    fs.call("@keyreleased", key)
end

function love.mousereleased(x, y, button)
    fs.call("@mouse:released", button)
end