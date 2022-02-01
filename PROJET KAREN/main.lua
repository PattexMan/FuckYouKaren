-- Cette ligne permet d'afficher des traces dans la console pendnat l'éxécution
io.stdout:setvbuf('no')

-- Empèche Love de filtrer les contours des images quand elles sont redimentionnées
-- Indispensable pour du pixel art
love.graphics.setDefaultFilter("nearest")

SCREEN_WIDTH = 1600
SCREEN_HEIGHT = 900

function love.load()
  love.window.setMode(SCREEN_WIDTH, SCREEN_HEIGHT)
  
  width = love.graphics.getWidth()
  height = love.graphics.getHeight()
  
end





function love.update(dt)
end

function love.draw()
  
  affichageDecor()
  
end

function love.keypressed(key)
end







function affichageDecor()
  
  love.graphics.setColor(0,1,1)
  love.graphics.rectangle("fill", 0, 0, width, height)
  
  love.graphics.setColor(0,0.5,0.7)                              -- | ROUTE
  love.graphics.rectangle("fill", width/3, 0, width/3, height)   -- |
  
  love.graphics.setColor(0.5,0.2,0.3)
  love.graphics.rectangle("fill", 0, 0, ((width/3)/10)*5 , height)
  
  love.graphics.setColor(0.5,0.5,0.3)
  love.graphics.rectangle("fill", ((width/3)/10)*5, 0, ((width/3)/10)*3 , height)
  
  love.graphics.setColor(0.5,0.2,0.3)
  love.graphics.rectangle("fill", width - ((width/3)/10)*5 , 0, ((width/3)/10)*5 , height)
  
  love.graphics.setColor(0.5,0.5,0.3)
  love.graphics.rectangle("fill", width - ((width/3)/10)*5 - ((width/3)/10)*3, 0, ((width/3)/10)*3 , height)
  
  end
