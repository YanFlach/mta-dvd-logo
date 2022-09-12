
-- // Адаптация
local size = Vector2(guiGetScreenSize())
local scale = size.x < 1920 and math.min(2, 1920 / size.x) or 1
local scale = size.x > 1920 and math.min(2, size.x / 1920) or scale

-- // UI
ui =
{
    screen =
    {
    	size = size,
    },
    image =
    {
        left =
        {
            dx = 2, dy = 1,
            start = 0, stop = size.x / 2,
            x = math.random() * (size.x * 0.35),
            y = math.random() * (size.y * 0.85),
            w = 268 / scale, h = 148 / scale,
            c = tocolor(255, 255, 255, 255),
            p = "asset/image/logo.png",
        },
        right =
        {
            dx = 2, dy = 1,
            start = size.x / 2, stop = size.x / 2,
            x = size.x / 2 + math.random() * (size.x * 0.35),
            y = math.random() * (size.y * 0.85),
            w = 268 / scale, h = 148 / scale,
            c = tocolor(255, 255, 255, 255),
            p = "asset/image/logo.png",
        },
    },
}
