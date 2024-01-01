# frozen_string_literal: true

require "test_helper"

class EducacionInformalTest < Test::Unit::TestCase

  # Tests de la herencia
  def test_simple_jerarquia
    educacion_informal = Recursos::EducacionInformal.new(1, "nombre", "leccion", [], "nombre_organizacion")
    assert do
      educacion_informal.is_a?(Recursos::EducacionInformal)
      educacion_informal.is_a?(Recursos::EntornoDigital)
      educacion_informal.is_a?(Object)
      educacion_informal.is_a?(BasicObject)
    end
  end

  # Tests de instanciar
  def test_simple_instanciar
    assert_raise(ArgumentError) { Recursos::EducacionInformal.new() }
    assert_not_nil(Recursos::EducacionInformal.new(1, "nombre", "leccion", [], "600 euros"))
  end

  # Tests de los getters
  def test_getters_educacion_informal
    educacion_informal_prueba = Recursos::EducacionInformal.new(1, "nombre", "leccion", [], "600 euros")
    assert_equal(1, educacion_informal_prueba.identificacion)
  end

  # Tests del método to_s
  def test_to_s_educacion_informal
    educacion_informal_prueba = Recursos::EducacionInformal.new(1, "nombre", "leccion", [], "600 euros")
    assert_equal("Identificación: 1\nNombre: nombre\nCategoría: leccion\nRecursos: []\nPrecio: 600 euros", educacion_informal_prueba.to_s)
  end

  # Tests de igualar dos educaciones informales
  def test_igualar_educacion_informal
    educacion_informal1 = Recursos::EducacionInformal.new(1, "nombre", "leccion", [], "600 euros")
    educacion_informal2 = Recursos::EducacionInformal.new(1, "nombre", "leccion", [], "600 euros")
    educacion_informal3 = Recursos::EducacionInformal.new(1, "nombre", "leccion", [], "200 euros")
    assert_equal(educacion_informal1, educacion_informal2)
    assert_not_equal(educacion_informal1, educacion_informal3)
  end

  # Tests de la función duración total
  def test_duracion_total
    recurso1 = Recursos::RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "leccion", "20 minutos", "material", [:abstraccion, :patrones], "uri", "2023-10-01")
    recurso2 = Recursos::RecursosDigitalesAbiertos.new(202300001, "Code.org", "Write your first computer program", "Learn the basic concepts of Computer Science", Recursos::BEGINNER, "Self-led tutorial", "Plugged", "60 minutos", "Smartphone or tablet", [:algoritmos, :codificacion], "https://studio.code.org/s/course1", "2013-12-01")
    educacion_informal_prueba = Recursos::EducacionInformal.new(1, "nombre", "leccion", [recurso1, recurso2], "600 euros")
    assert_equal(80, Recursos::duracion_total(educacion_informal_prueba))
  end

  # Función de creación de colección de recursos
  def test_crear_coleccion
    recurso1 = Recursos::RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "leccion", "categoria", "100 minutos", "material", [:abstraccion, :patrones], "uri", "2023-10-01")
    recurso2 = Recursos::RecursosDigitalesAbiertos.new(202300001, "Code.org", "titulo", "descripcion", Recursos::BEGINNER, "leccion", "categoria", "20 minutos", "material", [:algoritmos, :codificacion], "uri", "2013-12-01")
    educacion_informal1 = Recursos::EducacionInformal.new(1, "nombre", "leccion", [], "0 euros")
    educacion_informal2 = Recursos::crear_coleccion(educacion_informal1, [recurso1, recurso2])
    assert_equal(false, educacion_informal1 == educacion_informal2)
  end
end