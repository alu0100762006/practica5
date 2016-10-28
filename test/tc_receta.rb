#Aqui se realizan las pruebas para comprobar que la clase Tortitas funciona
require 'lib/receta'
require 'test/unit'

class TestReceta < Test::Unit::TestCase
    
    def setup
        #@tortitas = Receta.new("tortitas")
        
        titulo = "tortitas"
        porciones = "1"
        tiempo = "10 min"
        ing = %w{huevos, harina, leche}
        pasos = %w{unir, batir, freir}
        @tortitas = Receta.new(titulo, porciones, tiempo, ing, pasos)
    end
    
    def test_simple
        assert_equal("tortitas\n====\n", @tortitas.to_s)
    end
    
end