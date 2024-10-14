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
    fs.call("@render")
end

function love.keyreleased(key)
    if key == "escape" then
        love.event.quit()
    end
end

