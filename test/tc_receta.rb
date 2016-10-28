#Aqui se realizan las pruebas para comprobar que la clase Tortitas funciona
require 'lib/receta'
require 'test/unit'

class TestReceta < Test::Unit::TestCase
    
    def setup
        #@tortitas = Receta.new("tortitas")
        
        titulo = "tortitas"
        porciones = "1"
        tiempo = "10 min"
        ing = "huevos, harina, leche"
        pasos = %w{unir, batir, freir}
        @Receta1 = Receta.new(titulo, porciones, tiempo, ing, pasos)
    end
    
    def test_simple
        #Aqui hacemos la prueba de la receta1
        assert_equal("Titulo receta:tortitas\n====\n", @Receta1.titulo_to_s)
        assert_equal("Porciones:1\n====\n", @Receta1.porciones_to_s)
        assert_equal("Tiempo de preparacion:10 min\n====\n", @Receta1.tiempo_to_s)
        assert_equal("Ingredientes necesarios:huevos, harina, leche\n====\n", @Receta1.ing_to_s)
    end
    
end