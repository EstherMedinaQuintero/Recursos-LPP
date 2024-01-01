module Recursos

  # Clase entorno digital
  class EntornoDigital

    # Método getter
    attr_reader :identificacion, :nombre, :categoria, :recursos
    attr_writer :recursos

    # Método initialize para crear un entorno digital
    # @param identificacion [Numeric] Identificación
    # @param nombre [String] Nombre
    # @param categoria [String] Categoría
    # @param recursos [Array] Recursos
    # @return [EntornoDigital] Objeto EntornoDigital
    def initialize(identificacion, nombre, categoria, recursos)
      @identificacion = identificacion
      @nombre = nombre
      @categoria = check_categoria(categoria)
      @recursos = check_recursos(recursos)
    end

    # Método to_s para convertir un EntornoDigital a string
    # @return [String] Objeto EntornoDigital
    def to_s
      # Nota: recursos es un array de RecursosDigitalesAbiertos
      recursos_str = ""
      @recursos.each do |recurso|
        recursos_str += recurso.to_s + ", "
      end
      recursos_str = recursos_str[0..-3]
      "Identificación: #{@identificacion}\nNombre: #{@nombre}\nCategoría: #{@categoria}\nRecursos: [#{recursos_str}]"
    end

    # Método para comprobar las categorías
    # @param categoria [String] Categoría
    # @return [String] Categoría (o excepción)
    def check_categoria(categoria)
      if categoria == "leccion" || categoria == "unidad_didactica" || categoria == "curso" || categoria == "taller"
        return categoria
      else
        raise ArgumentError, "Categoría no válida"
      end
    end

    # Método para comprobar si los recursos son válidos
    # @param recursos [Array] Recursos
    # @return [Array] Recursos (o excepción)
    def check_recursos(recursos)
      # comprobar que es un array
      if !recursos.is_a?(Array)
        raise ArgumentError, "Recursos no válidos"
      end
      recursos.each do |recurso|
        if !recurso.is_a?(RecursosDigitalesAbiertos) and !recurso.is_a?(Ejercicio)
          raise ArgumentError, "Recurso no válido"
        end
      end
    end

    # Método para obtener el número de objetos de aprendizaje
    # @return [Numeric] Número de objetos de aprendizaje
    def numero_objetos_aprendizaje
      @recursos.length
    end

    # Método para obtener el nivel medio
    # @return [Constant] Nivel medio
    def nivel_medio
      # Orden: BEGINNER, INTERMEDIATE, ADVANCED
      sumatorio = 0
      @recursos.each do |recurso|
        if recurso.nivel == Recursos::BEGINNER
          sumatorio += 1
        elsif recurso.nivel == Recursos::INTERMEDIATE
          sumatorio += 2
        elsif recurso.nivel == Recursos::ADVANCED
          sumatorio += 3
        end
      end
      sumatorio = sumatorio / @recursos.length
      if sumatorio == 1
        return Recursos::BEGINNER
      elsif sumatorio == 2
        return Recursos::INTERMEDIATE
      elsif sumatorio == 3
        return Recursos::ADVANCED
      end

    end

    # Método para comparar si dos son iguales
    # @param otro [EntornoDigital] Otro entorno digital
    # @return [Boolean] True si son iguales, false si no
    def ==(otro)
      if @identificacion == otro.identificacion and @nombre == otro.nombre and @categoria == otro.categoria and @recursos == otro.recursos
        return true
      else
        return false
      end
    end

  end

end