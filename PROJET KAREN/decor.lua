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
TrottoirGauche.x = ((width/3)/10)*5
TrottoirGauche.y = 0
TrottoirGauche.width = ((width/3)/10)*3
TrottoirGauche.height = height

TrottoirDroit = {}
TrottoirDroit.x = width - ((width/3)/10)*5 - ((width/3)/10)*3
TrottoirDroit.y = 0
TrottoirDroit.width = ((width/3)/10)*3
TrottoirDroit.height = height

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
route.x = width/3
route.y = 0
route.width = width/3
route.height = height


decor.afficher = function()
  love.graphics.setColor(0,1,1)                         -- | Piste cyclable
  love.graphics.rectangle("fill", 0, 0, width, height)  -- |
  
  love.graphics.setColor(0,0.5,0.7)                              -- | Route
  love.graphics.rectangle("fill", route.x, route.y, route.width, route.height)   -- |
  
  love.graphics.setColor(0.5,0.2,0.3)
  love.graphics.rectangle("fill", batimentGauche.x, batimentGauche.y, batimentGauche.width, batimentGauche.height)
  
  love.graphics.setColor(0.5,0.5,0.3)                                               -- | Trottoir gauche
  love.graphics.rectangle("fill", TrottoirGauche.x, TrottoirGauche.y, TrottoirGauche.width , TrottoirGauche.height)   -- | 
  
  love.graphics.setColor(0.5,0.2,0.3)
  love.graphics.rectangle("fill", batimentDroit.x, batimentDroit.y, batimentDroit.width, batimentDroit.height)
  
  love.graphics.setColor(0.5,0.5,0.3)                                                                        -- | Trottoir droit
  love.graphics.rectangle("fill", TrottoirDroit.x, TrottoirDroit.y, TrottoirDroit.width , TrottoirDroit.height) -- |
end

return decor