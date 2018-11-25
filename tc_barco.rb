require "./barco.rb"
require "test/unit" #Modulo para testing de Ruby (existen otros pero use este)


class TesteoGeneral < Test::Unit::TestCase # Esta clase de la que hereda señala que es una clase para testear, incluye los metodos de assert. Es similar a un "Describe"

  def setup # Similar al fixture, es codigo que se va a correr antes de todo.
    @jackSparrow = JackSparrow.instance # Para no estar nombrando los .instance en todos lados
    @unionPirata = UnionPirata.instance
    @armadaInglesa = ArmadaInglesa.instance
    @guerreroComun = Guerrero.new(200, 200, 200)
    @cocineroComun = Cocinero.new(100, 100, ["Salsa de Tomate, Harina, Chocolate"])
    @navegadorComun = Navegador.new(300, 300)
    @monstruoComun = MonstruoHumanoide.new(400, 400)
    @miniBarco = Barco.new(10, 10, 40, [@guerreroComun,@cocineroComun], @unionPirata)
    @superPiratas = Barco.new(100, 100, 400, [@navegadorComun,@monstruoComun,@jackSparrow], @armadaInglesa)
  end

  def test_JackTomaRonConElNavegador
    @jackSparrow.tomarRonCon(@navegadorComun)
    assert_equal(600, @jackSparrow.energia) # metodo de assert_equal, similar a assert.equal(). Diferencia: assert es un objeto en wollok, aca es un metodo.
    assert_equal(250, @navegadorComun.energia)
  end

  def test_SeEnfrentanElminiBarcoYLosSuperPiratas
    @miniBarco.enfrentar(@superPiratas)
    assert_equal(0, @miniBarco.poderDeFuego)
    assert_equal(0, @miniBarco.municiones)
    assert_equal(0, @miniBarco.resistencia)
  end
end
