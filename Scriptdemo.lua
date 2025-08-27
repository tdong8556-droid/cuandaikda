loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

       function love.load()
    font = love.graphics.newFont(18)
    love.graphics.setFont(font)

    button = {
        x = 200,
        y = 200,
        w = 200,
        h = 60,
        text = "Bấm vào tôi!",
        hovered = false
    }
end

function love.update(dt)
    local mx, my = love.mouse.getPosition()
    button.hovered = mx > button.x and mx < button.x + button.w and my > button.y and my < button.y + button.h
end

function love.draw()
    -- nền
    love.graphics.clear(30/255, 30/255, 30/255)

    -- nút
    if button.hovered then
        love.graphics.setColor(0.2, 0.6, 1) -- xanh sáng khi hover
    else
        love.graphics.setColor(0.1, 0.4, 0.8) -- xanh đậm
    end
    love.graphics.rectangle("fill", button.x, button.y, button.w, button.h, 12, 12)

    -- viền
    love.graphics.setColor(1, 1, 1)
    love.graphics.setLineWidth(3)
    love.graphics.rectangle("line", button.x, button.y, button.w, button.h, 12, 12)

    -- chữ
    love.graphics.printf(button.text, button.x, button.y + 18, button.w, "center")
end

function love.mousepressed(x, y, buttonNum)
    if buttonNum == 1 and button.hovered then
        button.text = "Đã bấm!"
    end
end

       MinimizeButton({
       Image = "http://www.roblox.com/asset/?id=83190276951914",
       Size = {60, 60},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0)
      })
      
------ Tab
     local Tab1o = MakeTab({Name = "Script Farm"})
     
------- BUTTON
    
    AddButton(Tab1o, {
     Name = "cuan Hub",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))(Settings)
  end
  })
