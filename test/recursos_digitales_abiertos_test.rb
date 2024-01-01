# frozen_string_literal: true

require "test_helper"

class RecursosDigitalesTest < Test::Unit::TestCase

  # Probar la herencia de la clase
  def test_simple_herencia
    recurso = Recursos::RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "temp", "material", [:abstraccion, :patrones], "uri", "2013-12-01")
    assert do
      # Jerarquía de clases
      recurso.is_a?(Recursos::RecursosDigitalesAbiertos)
      recurso.is_a?(Recursos::Ejercicio)
      recurso.is_a?(Object)
      recurso.is_a?(BasicObject)
      recurso.is_a?(Comparable)
      recurso.is_a?(Enumerable)
    end
  end

  # Probar los getters
  def test_simple_getters
    recurso = Recursos::RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "temp", "material", [:abstraccion, :patrones], "uri", "2013-12-01")
    assert do
      # Clase padre
      recurso.respond_to?(:id)
      recurso.respond_to?(:marca)
      # Clase hija
      recurso.respond_to?(:uri)
      recurso.respond_to?(:fecha_creacion)
    end
    assert_equal(1, recurso.id)
  end

  # Probar el to_s
  def test_simple_to_s
    recursos_prueba = Recursos::RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "temp", "material", [:abstraccion, :patrones], "uri", "2013-12-01")
    recursos_prueba2 = Recursos::RecursosDigitalesAbiertos.new(202300001, "Code.org", "Write your first computer program", "Learn the basic concepts of Computer Science", Recursos::BEGINNER, "Self-led tutorial", "Plugged", "60 minutos", "Smartphone or tablet", [:algoritmos, :codificacion], "https://studio.code.org/s/course1", "2013-12-01")
    assert_equal("ID: 1\nMarca: marca\nTítulo: titulo\nDescripción: descripcion\nNivel: beginner\nTipo: tipo\nCategoría: categoria\nTemporalización: temp\nMaterial: material\nConceptos: [:abstraccion, :patrones]\nURI: uri\nFecha de creación: 2013-12-01", recursos_prueba.to_s)
    assert_equal("ID: 202300001\nMarca: Code.org\nTítulo: Write your first computer program\nDescripción: Learn the basic concepts of Computer Science\nNivel: beginner\nTipo: Self-led tutorial\nCategoría: Plugged\nTemporalización: 60 minutos\nMaterial: Smartphone or tablet\nConceptos: [:algoritmos, :codificacion]\nURI: https://studio.code.org/s/course1\nFecha de creación: 2013-12-01", recursos_prueba2.to_s)
  end

  # Probar las comparaciones
  def test_simple_comparaciones
    recurso = Recursos::RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "60 minutos", "material", [:abstraccion, :patrones], "uri", "2013-12-01")
    recurso2 = Recursos::RecursosDigitalesAbiertos.new(202300001, "Code.org", "Write your first computer program", "Learn the basic concepts of Computer Science", Recursos::BEGINNER, "Self-led tutorial", "Plugged", "2 horas", "Smartphone or tablet", [:algoritmos, :codificacion], "https://studio.code.org/s/course1", "2013-12-01")
    assert_equal(60, Recursos::duracion(recurso))
    assert_equal(120, Recursos::duracion(recurso2))
    assert_equal(false, recurso < recurso)
    assert_equal(false, recurso > recurso)
    assert_equal(true, recurso <= recurso)
    assert_equal(true, recurso >= recurso)
  end

  # Probar las igualdades
  def test_simple_igualdad
    recurso = Recursos::RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "60 minutos", "material", [:abstraccion, :patrones], "uri", "2013-12-01")
    recurso2 = Recursos::RecursosDigitalesAbiertos.new(1, "Code.org", "Write your first computer program", "Learn the basic concepts of Computer Science", Recursos::BEGINNER, "Self-led tutorial", "Plugged", "2 horas", "Smartphone or tablet", [:algoritmos, :codificacion], "https://studio.code.org/s/course1", "2013-12-01")
    assert_equal(false, recurso == recurso2)
    assert_equal(true, recurso == recurso)
    assert_equal(false, recurso.equal?(recurso2))
    assert_equal(false, recurso.eql?(recurso2))
  end

  # Probar el método check_fecha
  def test_simple_fecha
    recurso = Recursos::RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "60 minutos", "material", [:abstraccion, :patrones], "uri", "2013-12-01")
    assert_equal(true, recurso.check_fecha("2013-12-01"))
    assert_equal(false, recurso.check_fecha("2013-12-32"))
    assert_equal(false, recurso.check_fecha("2013-13-01"))
    assert_equal(false, recurso.check_fecha("2013-00-01"))
  end

  # Probamos Enumerable
  def test_simple_enumerable
    recurso = Recursos::RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "60 minutos", "material", [:abstraccion, :patrones], "uri", "2013-12-01")
    # Probamos el each
    assert do
      array = []
      recurso.each { |x| array << x }
    end
    # Probamos el count
    assert_equal(13, recurso.count)
    # Probamos el take
    assert_equal([1, "marca", "titulo"], recurso.take(3))
    # Probamos el any
    assert_equal(true, recurso.any?(String))
    # Probamos el grep
    assert_equal(["marca"], recurso.grep(/marca/))
    # Probamos el find_index
    assert_equal(1, recurso.find_index("marca"))
  end
end