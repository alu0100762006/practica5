#Aqui se realizan las pruebas para comprobar que la clase Tortitas funciona
require 'lib/receta'
require 'test/unit'

class TestReceta < Test::Unit::TestCase
    
    def setup
        #Receta1
        titulo = "tortitas"
        porciones = "1"
        tiempo = "10 min"
        ing = "huevos, harina, leche"
        pasos = "unir, batir, freir"
        @Receta1 = Receta.new(titulo, porciones, tiempo, ing, pasos)
        
        #Receta2
        titulo = "Sandwich mixto"
        porciones = "1"
        tiempo = "2 minutos"
        ing = "2 rebanadas de pan, 1 loncha de jamon, 1 loncha de queso, mantequilla al gusto"
        pasos = "1)Unte de mantequilla uno de los lados de la rebanada de pan. 2)Coloque encima la loncha de queso. 3)Coloque encima la locha de jamon. 4)Ponga la otra rebanada de pan encima"
        @Receta2 = Receta.new(titulo, porciones, tiempo, ing, pasos)
    end
    
    def test_simple
        #Aqui hacemos la prueba de la receta1
        assert_equal("Titulo de la receta:tortitas\n====\n", @Receta1.titulo_to_s)
        assert_equal("Porciones:1\n====\n", @Receta1.porciones_to_s)
        assert_equal("Tiempo de preparacion:10 min\n====\n", @Receta1.tiempo_to_s)
        assert_equal("Ingredientes necesarios:huevos, harina, leche\n====\n", @Receta1.ing_to_s)
        assert_equal("Pasos necesarios:unir, batir, freir\n====\n", @Receta1.pasos_to_s)
        
        #Aqui hacemos la prueba de la receta2
        assert_equal("Titulo de la receta:Sandwich mixto\n====\n", @Receta2.titulo_to_s)
        assert_equal("Porciones:1\n====\n", @Receta2.porciones_to_s)
        assert_equal("Tiempo de preparacion:2 minutos\n====\n", @Receta2.tiempo_to_s)
        assert_equal("Ingredientes necesarios:2 rebanadas de pan, 1 loncha de jamon, 1 loncha de queso, mantequilla al gusto\n====\n", @Receta2.ing_to_s)
        assert_equal("Pasos necesarios:1)Unte de mantequilla uno de los lados de la rebanada de pan. 2)Coloque encima la loncha de queso. 3)Coloque encima la locha de jamon. 4)Ponga la otra rebanada de pan encima\n====\n", @Receta2.pasos_to_s)
    end
    
end