module Recursos

  class EntornosDSL
    
    # Getters
    attr_reader :nombre, :entorno, :loris, :temas

    # @brief Constructor de la clase EntornosDSL
    # @param nombre : String
    # @param bloque : Bloque
    def initialize(nombre, &bloque)
      @nombre = nombre
      @entorno = EntornoDigital.new(1, @nombre, "taller", [])
      @loris = []
      @temas = []
      @numeros = []
      instance_eval &bloque
    end

    # @brief Método para registrar un recurso
    # @param recurso : Recursos::Ejercico
    def resgistrar_recurso(recurso)
      @entorno.recursos << recurso
    end

    # @brief Método para evaluar un recurso
    # @param recurso : Recursos::Ejercico
    # @param lori : Array
    def evaluar_recurso(recurso, lori)
      @loris.push(lori)
    end

    # @brief Método para manejar un tema
    # @param recurso : Recursos::Ejercico
    def manejar_tema(recurso)
      @temas.push(recurso.titulo)
    end

    # @brief Método para mostrar el itinerario
    def to_s
      str = "\n ---> Itinerario: #{@nombre}\n"
      i = 0
      @temas.each do |tema|
        str += "Equipo #{@entorno.recursos[i].id}: #{tema}\n"
        i += 1
      end
      return str
    end

  end

end