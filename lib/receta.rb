#Clase Receta usando Ruby

#Cambiar la clase Point para que seas una receta de cocina.
#Título (cabecera) nombre de la receta.
#Parte donde enumeras los ingredientes
#Parte donde se definen los pasos de la receta
#1º Def la clase
#2º Hacer un test para comprobar que la clase funciona correctamente

class Receta
    
    #getters
    attr_reader :titulo, :porciones, :tiempo, :ing, :pasos #metodos de instancia
    #setters
    attr_writer :titulo, :porciones, :tiempo, :ing, :pasos
    #attr_accesos :titulo -> Aqui se define tanto el get como el set
    
    def initialize(titulo, porciones, tiempo, ing, pasos)
        @titulo, @porciones, @tiempo, @ing, @pasos = titulo, porciones, tiempo, ing, pasos #variables de instancia
    end
    
    #metodos de instancia
    def titulo_to_s #retorna el objeto
        "Titulo receta:#{@titulo}\n====\n"#, #{@porciones}\n====\n, #{@tiempo}\n====\n, #{@ing}\n====\n), #{@pasos}\n====\n"
    end
    
    def porciones_to_s
        "Porciones:#{@porciones}\n====\n"
    end
    
    def tiempo_to_s
        "Tiempo de preparacion:#{@tiempo}\n====\n"
    end
end
    