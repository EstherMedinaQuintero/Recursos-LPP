module Recursos

  # Esta clase sirve para representar un  ́unico ejercicio o actividad
  class Recurso

      # Añadimos el módulo Comparable
      include Comparable
      # Añadimos el módulo Enumerable
      include Enumerable

      # Variable de clase
      @@num_recursos = 0

      # Métodos de lectura de atributos (getters)
      attr_reader :id, :marca, :titulo, :descripcion, :nivel, :tipo, :categoria, :temp, :material, :conceptos

      def initialize(id, marca, titulo, descripcion, nivel, tipo, categoria, temp, material, conceptos)
          @id = id
          @marca = marca
          @titulo = titulo
          @descripcion = descripcion
          @nivel = nivel
          @tipo = tipo
          @categoria = categoria
          @temp = temp
          @material = material
          @conceptos = conceptos
          # Incrementamos el número de recursos digitales abiertos
          @@num_recursos += 1
      end

      def self.num_recursos
          @@num_recursos
      end

      def to_s
          "ID: #{@id}\nMarca: #{@marca}\nTítulo: #{@titulo}\nDescripción: #{@descripcion}\nNivel: #{@nivel}\nTipo: #{@tipo}\nCategoría: #{@categoria}\nTemporalización: #{@temp}\nMaterial: #{@material}\nConceptos: #{@conceptos}"
      end

      # Método para comparar dos objetos Ejercicio
      # @param other [Ejercicio] Objeto Ejercicio
      # @return [Numeric] Comparación de los ids de los objetos Ejercicio
      def <=>(other)
          # Comparamos por su duración
          Recursos::duracion(self) <=> Recursos::duracion(other)
      end

      # Método para comprobar si un objeto Ejercicio es igual a otro
      # @param other [Ejercicio] Objeto Ejercicio
      # @return [Boolean] Comparación de los ids de los objetos Ejercicio
      def ==(other)
          @id == other.id
      end

      # Funciones del módulo Enumerable

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
      end

  end
end




