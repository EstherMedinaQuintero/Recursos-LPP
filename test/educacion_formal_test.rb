# frozen_string_literal: true

require "test_helper"

class EducacionFormalTest < Test::Unit::TestCase

  # Tests de la herencia
  def test_simple_jerarquia
    educacion_formal = Recursos::EducacionFormal.new(1, "nombre", "leccion", [], 4)
    assert do
      educacion_formal.is_a?(Recursos::EducacionFormal)
      educacion_formal.is_a?(Recursos::EntornoDigital)
      educacion_formal.is_a?(Object)
      educacion_formal.is_a?(BasicObject)
    end
  end

  # Tests de los getters
  def test_getters_educacion_formal
    educacion_formal_prueba = Recursos::EducacionFormal.new(1, "nombre", "leccion", [], 4)
    assert_equal(1, educacion_formal_prueba.identificacion)
  end

  # Tests del método to_s
  def test_to_s_educacion_formal
    educacion_formal_prueba = Recursos::EducacionFormal.new(1, "nombre", "leccion", [], 4)
    assert_equal("Identificación: 1\nNombre: nombre\nCategoría: leccion\nRecursos: []\nNúmero de niveles: 4", educacion_formal_prueba.to_s)
  end
    
  # Tests de instanciar
  def test_simple_instanciar
    assert_raise(ArgumentError) { Recursos::EducacionFormal.new() }
    assert_not_nil(Recursos::EducacionFormal.new(1, "nombre", "leccion", [], 4))
  end

  # Tests de igualar dos educaciones formales
  def test_igualar_educaciones_formales
    recurso1 = Recursos::RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "leccion", "temp", "material", [:abstraccion, :patrones], "uri", "2023-10-01")
    recurso2 = Recursos::RecursosDigitalesAbiertos.new(202300001, "Code.org", "Write your first computer program", "Learn the basic concepts of Computer Science", Recursos::BEGINNER, "Self-led tutorial", "Plugged", "60 minutos", "Smartphone or tablet", [:algoritmos, :codificacion], "https://studio.code.org/s/course1", "2013-12-01")
    educacion_formal1 = Recursos::EducacionFormal.new(1, "nombre", "leccion", [recurso1, recurso2], 4)
    educacion_formal2 = Recursos::EducacionFormal.new(1, "nombre", "leccion", [recurso1, recurso2], 4)
    assert(educacion_formal1 == educacion_formal2)
  end

  # Test de la función de duración total
  def test_duracion_total
    recurso1 = Recursos::RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "leccion", "60 minutos", "material", [:abstraccion, :patrones], "uri", "2023-10-01")
    recurso2 = Recursos::RecursosDigitalesAbiertos.new(202300001, "Code.org", "Write your first computer program", "Learn the basic concepts of Computer Science", Recursos::BEGINNER, "Self-led tutorial", "leccion", "2 horas", "Smartphone or tablet", [:algoritmos, :codificacion], "https://studio.code.org/s/course1", "2013-12-01")
    educacion_formal1 = Recursos::EducacionFormal.new(1, "nombre", "leccion", [recurso1, recurso2], 4)
    assert_equal(180, Recursos::duracion_total(educacion_formal1))
  end

  # Función de creación de colección de recursos
  def test_crear_coleccion
    recurso1 = Recursos::RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "leccion", "categoria", "100 minutos", "material", [:abstraccion, :patrones], "uri", "2023-10-01")
    recurso2 = Recursos::RecursosDigitalesAbiertos.new(202300001, "Code.org", "titulo", "descripcion", Recursos::BEGINNER, "leccion", "categoria", "20 minutos", "material", [:algoritmos, :codificacion], "uri", "2013-12-01")
    educacion_formal1 = Recursos::EducacionFormal.new(1, "nombre", "leccion", [], 0)
    educacion_formal2 = Recursos::crear_coleccion(educacion_formal1, [recurso1, recurso2])
    assert_equal(false, educacion_formal1 == educacion_formal2)
  end

end