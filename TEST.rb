source "barco.rb"

 a = Guerrero.new(200, 200, 200)
 b = Guerrero.new(100, 100, 100)
 c = Guerrero.new(300, 300, 300)
 d = Guerrero.new(400, 400, 400)
 miniBarco = Barco.new(10, 10, 40, [a,b], unionPirata)
superPiratas = Barco.new(100, 100, 400, [c,d,jackSparrow], armadaInglesa)
