Button = Class{}

--controls the variables we use for our rectangles
function Button:init(x, y, width, height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    self.isOn = 0
end

-- renders the Buttons(player info(playerchoice1/2)) in the diffrent stages
function Button:render()
    --creates a rectangular outline if isOn is 0
    if self.isOn == 0 then
    love.graphics.rectangle('line', self.x, self.y, self.width, self.height)
   
    --creates a filled rectangle with the words AI collored black in the middle if isOn is 1
    elseif self.isOn == 1 then
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
    love.graphics.setColor(0, 0, 0, 255)
    love.graphics.printf('AI', self.x + self.width / 2 -5, self.y + self.height / 2 - 4, 10, 'center')
    --returns the white colour used by other elements once it writes AI
    love.graphics.setColor(255, 255, 255, 255)
    end
end  

  