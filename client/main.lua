
-- // Рендер
addEventHandler("onClientPreRender", root, function(delta_time)
    dxDrawRectangle(0, 0, ui.screen.size, tocolor(0, 0, 0, 255))
    dxDrawRectangle(ui.screen.size.x / 2 - 1, 0, 2, ui.screen.size.y, tocolor(255, 255, 255, 125))
    for name, value in pairs(ui.image) do
        local x, y = value.x, value.y
        local w, h = value.w, value.h
        local c, p = value.c, value.p
        local dx, dy = value.dx, value.dy
        local start, stop = value.start, value.stop
        value.x = value.x + (dx * (delta_time / 10))
        if value.x > start + stop - w then
        	value.c = tocolor(math.random(0, 255), math.random(0, 255), math.random(0, 255), 255)
            value.x = start + stop - w
            value.dx = -dx
        elseif value.x + dx < start then
        	value.c = tocolor(math.random(0, 255), math.random(0, 255), math.random(0, 255), 255)
        	value.x = start
        	value.dx = -dx
        end
        value.y = value.y + (dy * (delta_time / 10))
        if value.y > ui.screen.size.y - h then
        	value.c = tocolor(math.random(0, 255), math.random(0, 255), math.random(0, 255), 255)
            value.y = ui.screen.size.y - h
            value.dy = -dy
        elseif value.y + dy < 0 then
        	value.c = tocolor(math.random(0, 255), math.random(0, 255), math.random(0, 255), 255)
        	value.dy = -dy
            value.y = 0
        end
        dxDrawImage(x, y, w, h, p, 0, 0, 0, c)
    end
end)
