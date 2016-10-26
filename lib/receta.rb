#Clase Receta usando Ruby

#Cambiar la clase Point para que seas una receta de cocina.
#Título (cabecera) nombre de la receta.
#Parte donde enumeras los ingredientes
#Parte donde se definen los pasos de la receta
#1º Def la clase
#2º Hacer un test para comprobar que la clase funciona correctamente

class Receta
    
    #getters
    attr_reader :titulo, :ingredientes, :tiempo #metodos de instancia
    #setters
    attr_writer :titulo, :ingredientes, :tiempo
    #attr_accesos :titulo -> Aqui se define tanto el get como el set
    
    def initialize(titulo, ingredientes, tiempo)
        @titulo, @ingredientes, @tiempo = titulo, ingredientes, tiempo #variables de instancia
    end
    
    #metodos de instancia
    def to_s #retorna el objeto
        "(#{@titulo}\n====\n, #{@ingredientes}\n====\n, #{@tiempo}\n====\n)"
    end
end
    