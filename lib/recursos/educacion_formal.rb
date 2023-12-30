module Recursos
  class EducacionFormal < EntornoDigital

    # Getter
    attr_reader :num_niveles

    # Atributo nuevo: número de niveles
    def initialize(identificacion, nombre, categoria, recursos, num_niveles)
      super(identificacion, nombre, categoria, recursos)
      @num_niveles = num_niveles
    end

    # Método to_s
    def to_s
      super + "\nNúmero de niveles: #{@num_niveles}"
    end

    # Método para igualar dos educaciones formales (usando super)
    # @param other [EducacionFormal] Educación formal
    # @return [Boolean] true si son iguales, false si no
    def ==(other)
      super && @num_niveles == other.num_niveles
    end

    # Método para decir los niveles de una educación formal
    # @return [String] Niveles de la educación formal
    def decir_niveles
      "Los niveles de la educación formal son: #{@num_niveles}"
    end

  end
end