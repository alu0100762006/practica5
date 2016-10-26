#Aqui se realizan las pruebas para comprobar que la clase Tortitas funciona

class TestReceta
    
    def setup
        @tortitas = Receta.new("tortitas")
        
        titulo = "tortitas"
        ingredientes = 3
        #tiempo = 10
        #ing = %w {huevos, harina, leche}
        #pasos = %w {unir, batir, freir}
        @tortitas = Receta.new(titulo, ingredientes)
    end
    
    def test_simple
        assert_equal("tortitas", @tortitas.to_s)
    end
    
end