-- probably not needed unless you want to make ores collide, maybe in the future?

fs.collisionSystem = {}

function fs.collisionSystem.AABB_Collision(a, b)
    return a.x < b.x + b.width and
        a.x + a.width > b.x and
        a.y < b.y + b.height and
        a.y + a.height > b.y
end
