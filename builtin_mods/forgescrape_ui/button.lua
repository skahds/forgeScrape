return fs.ui.inky.defineElement(function(self)
	self.props.count = 0

	self:onPointer("release", function()
		self.props.count = self.props.count + 1
	end)

	return function(_, x, y, w, h)
		love.graphics.setColor(0.6, 0.6, 1)
		love.graphics.rectangle("fill", x, y, w, h)
		love.graphics.setColor(1, 1, 1)
		love.graphics.printf("I have been clicked " .. self.props.count .. " times", x, y, w, "center")
	end
end)