fs.on("@mouse:released", function (button)
    if (button == 1) then
		fs.ui.pointer:raise("release")
	end
end)