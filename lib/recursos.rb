# frozen_string_literal: true

require_relative "recursos/version"
require_relative "recursos/constantes"
require_relative "recursos/recurso"
require_relative "recursos/recursos_digitales_abiertos"
require_relative "recursos/entorno_digital"
require_relative "recursos/educacion_formal"
require_relative "recursos/educacion_informal"
require_relative "recursos/funcional"
require_relative "recursos/entorno_dsl"

module Recursos
  class Error < StandardError; end
  
  def self.duracion(recurso)
    return temporalizacion
  end

  def self.duracion_total(entorno_digital)
    duracion_total = 0
    entorno_digital.recursos.each do |recurso|
      duracion_total += duracion(recurso)
    end
    return duracion_total
  end

  def self.crear_coleccion(coleccion, recursos)
    # Al array de recursos le añadimos los recursos de la colección
    recursos1 = recursos + coleccion.recursos
    # Creamos una colección del tipo especificado
    if coleccion.is_a?(EntornoDigital)
      return Recursos::EntornoDigital.new(coleccion.identificacion, coleccion.nombre, coleccion.categoria, recursos1)
    elsif coleccion.is_a?(EducacionFormal)
      return Recursos::EducacionFormal.new(coleccion.identificacion, coleccion.nombre, coleccion.categoria, recursos1, coleccion.precio)
    elsif coleccion.is_a?(EducacionInformal)
      return Recursos::EducacionInformal.new(coleccion.identificacion, coleccion.nombre, coleccion.categoria, recursos1, coleccion.num_niveles)
    end
  end

end
