return fs.ui.inky.defineElement(function(self)
	self.props.displays = self.props.displays or {}

	return function(_, x, y, w, h)
		love.graphics.rectangle("fill", x, y, w, h)
		local maxColumn = math.floor((w-20)/40)
		for i, entity in ipairs(self.props.displays) do
			local i=i-1
			local xRow = i%maxColumn
			local yRow = math.floor(i/maxColumn)
			love.graphics.draw(fs.sprites[fs.entities[entity].image], x+10+xRow*40, y+10+yRow*40)

		end

	end
end)