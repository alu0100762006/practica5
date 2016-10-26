#Clase Receta usando Ruby

#Cambiar la clase Point para que seas una receta de cocina.
#Título (cabecera) nombre de la receta.
#Parte donde enumeras los ingredientes
#Parte donde se definen los pasos de la receta
#1º Def la clase
#2º Hacer un test para comprobar que la clase funciona correctamente

class Receta
    
    #getters
    attr_reader :titulo, :porciones, :tiempo, :ing #metodos de instancia
    #setters
    attr_writer :titulo, :porciones, :tiempo, :ing
    #attr_accesos :titulo -> Aqui se define tanto el get como el set
    
    def initialize(titulo, porciones, tiempo, ing)
        @titulo, @porciones, @tiempo, @ing = titulo, porciones, tiempo, ing #variables de instancia
    end
    
    #metodos de instancia
    def to_s #retorna el objeto
        "(#{@titulo}\n====\n, #{@porciones}\n====\n, #{@tiempo}\n====\n, #{@ing}\n====\n)"
    end
end
    