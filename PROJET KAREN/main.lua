-- Cette ligne permet d'afficher des traces dans la console pendnat l'éxécution
io.stdout:setvbuf('no')

-- Empèche Love de filtrer les contours des images quand elles sont redimentionnées
-- Indispensable pour du pixel art
love.graphics.setDefaultFilter("nearest")

SCREEN_WIDTH = 1600
SCREEN_HEIGHT = 900
love.window.setMode(SCREEN_WIDTH, SCREEN_HEIGHT)

width = nil
height = nil
width = love.graphics.getWidth()
height = love.graphics.getHeight()

voiture = {}
voiture.x = nil
voiture.y = nil
voiture.width = (((SCREEN_WIDTH/3)/2)/10)*7
voiture.height = voiture.width


-- Le Decor
local decor = require("decor")


function love.load()
  
  
  voiture.x = SCREEN_WIDTH/2 + (((SCREEN_WIDTH/3)/2)/20)*3
  voiture.y = SCREEN_HEIGHT - 20 - voiture.height
  
end

function love.update(dt)
  
  if love.keyboard.isDown("left") and voiture.x >= SCREEN_WIDTH/3 and voiture.x <= (SCREEN_WIDTH/3)*2 then
    voiture.x = voiture.x - 2
  end
  if love.keyboard.isDown("right") and voiture.x >= SCREEN_WIDTH/3 and voiture.x <= (SCREEN_WIDTH/3)*2 then
    voiture.x = voiture.x + 2
  end
end

function love.draw()
  
  decor.afficher()
  
  love.graphics.setColor(1,1,1)
  love.graphics.rectangle("fill",voiture.x, voiture.y, voiture.width, voiture.height)
  
end

function love.keypressed(key)
  
end
