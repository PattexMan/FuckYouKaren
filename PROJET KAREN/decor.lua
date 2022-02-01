local decor = {}

batimentGauche = {}
batimentGauche.x = 0
batimentGauche.y = 0
batimentGauche.width = ((width/3)/10)*5
batimentGauche.height = height

batimentDroit = {}
batimentDroit.x = width - ((width/3)/10)*5
batimentDroit.y = 0
batimentDroit.width = ((width/3)/10)*5
batimentDroit.height = height

TrottoirGauche = {}
TrottoirGauche.x = nil
TrottoirGauche.y = nil
TrottoirGauche.width = nil
TrottoirGauche.height = nil

TrottoirDroit = {}
TrottoirDroit.x = nil
TrottoirDroit.y = nil
TrottoirDroit.width = nil
TrottoirDroit.height = nil

pisteVeloGauche = {}
pisteVeloGauche.x = nil
pisteVeloGauche.y = nil
pisteVeloGauche.width = nil
pisteVeloGauche.height = nil

pisteVeloDroit = {}
pisteVeloDroit.x = nil
pisteVeloDroit.y = nil
pisteVeloDroit.width = nil
pisteVeloDroit.height = nil

route = {}
route.x = nil
route.y = nil
route.width = nil
route.height = nil


decor.afficher = function()
  love.graphics.setColor(0,1,1)                         -- | Piste cyclable
  love.graphics.rectangle("fill", 0, 0, width, height)  -- |
  
  love.graphics.setColor(0,0.5,0.7)                              -- | Route
  love.graphics.rectangle("fill", width/3, 0, width/3, height)   -- |
  
  love.graphics.setColor(0.5,0.2,0.3)
  love.graphics.rectangle("fill", batimentGauche.x, batimentGauche.y, batimentGauche.width, batimentGauche.height)
  
  love.graphics.setColor(0.5,0.5,0.3)                                               -- | Trottoir gauche
  love.graphics.rectangle("fill", ((width/3)/10)*5, 0, ((width/3)/10)*3 , height)   -- | 
  
  love.graphics.setColor(0.5,0.2,0.3)                                                       -- | Batiment droi
  love.graphics.rectangle("fill", batimentDroit.x, batimentDroit.y, batimentDroit.width, batimentDroit.height)
  
  love.graphics.setColor(0.5,0.5,0.3)                                                                        -- | Trottoir droit
  love.graphics.rectangle("fill", width - ((width/3)/10)*5 - ((width/3)/10)*3, 0, ((width/3)/10)*3 , height) -- |
end

return decor