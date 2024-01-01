module Recursos
  
  # Recursos digitales abiertos
  class RecursosDigitalesAbiertos < Recurso

    # Getter de los nuevos atributos
    attr_reader :uri, :fecha_creacion

    # Constructor de la clase RecursosDigitalesAbiertos
    def initialize(id, marca, titulo, descripcion, nivel, tipo, categoria, temp, material, conceptos, uri, fecha_creacion)
      super(id, marca, titulo, descripcion, nivel, tipo, categoria, temp, material, conceptos)
      @uri = uri
      @fecha_creacion = fecha_creacion
    end

    # Método para convertir un recurso digital abierto a string
    def to_s
      super + "\nURI: #{@uri}\nFecha de creación: #{@fecha_creacion}"
    end

    # Método para comparar dos recursos digitales abiertos
    # @param other [RecursosDigitalesAbiertos] Recurso digital abierto a comparar
    # @return [Numeric] -1, 0, 1
    def <=>(other)
      # Si son iguales, comparamos por su fecha de creación
      # El formato de la fecha es YYYY-MM-DD
      # Si tienen el mismo año, se usa el mes
      # Si tienen el mismo mes, se usa el día
      if super == 0
        if @fecha_creacion.split("-")[0] == other.fecha_creacion.split("-")[0]
          if @fecha_creacion.split("-")[1] == other.fecha_creacion.split("-")[1]
            @fecha_creacion.split("-")[2] <=> other.fecha_creacion.split("-")[2]
          else
            @fecha_creacion.split("-")[1] <=> other.fecha_creacion.split("-")[1]
          end
        else
          @fecha_creacion.split("-")[0] <=> other.fecha_creacion.split("-")[0]
        end
      else
        super
      end
    end

    # Método para comprobar si un recurso digital abierto es igual a otro
    # @param other [RecursosDigitalesAbiertos] Recurso digital abierto a comparar
    # @return [Boolean] true, false
    def ==(other)
      super && @uri == other.uri && @fecha_creacion == other.fecha_creacion
    end

    # Sobreescribimos las funciones de Enumerable de la padre

    # Método each
    def each
      yield @id
      yield @marca
      yield @titulo
      yield @descripcion
      yield @nivel
      yield @tipo
      yield @categoria
      yield @temp
      yield @material
      yield @conceptos
      yield @uri
      yield @fecha_creacion
    end
  end
end