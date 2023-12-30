module Recursos
  class EducacionInformal < EntornoDigital

    # Getter
    attr_reader :precio

    # Atributo nuevo: precio
    def initialize(identificacion, nombre, categoria, recursos, precio)
      super(identificacion, nombre, categoria, recursos)
      @precio = precio
    end

    # Método to_s
    def to_s
      super + "\nPrecio: #{@precio}"
    end

    # Método para igualar dos educaciones informales (usando super)
    # @param other [EducacionInformal] Educación informal
    # @return [Boolean] true si son iguales, false si no
    def ==(other)
      super && @precio == other.precio
    end

  end
end