# frozen_string_literal: true

require "test_helper"

class RecursosTest < Test::Unit::TestCase
  
  # Probar las constantes
  test "CONSTANTES" do
    assert do
      ::Recursos.const_defined?(:VERSION)
      ::Recursos.const_defined?(:BEGINNER)
      ::Recursos.const_defined?(:INTERMEDIATE)
      ::Recursos.const_defined?(:ADVANCED)
    end
  end

  # Comprobamos el polimorfismo
  def test_simple_polimorfismo
    ejercicio = Recursos::Ejercicio.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "60 minutos", "material", [:abstraccion, :patrones])
    recurso = Recursos::RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "2 horas", "material", [:abstraccion, :patrones], "uri", "2013-12-01")
    assert do
      # Probamos los getters
      recurso.respond_to?(:id)
      ejercicio.respond_to?(:id)
      recurso.respond_to?(:uri)
      !ejercicio.respond_to?(:uri)
      # Probamos si responden a to_s
      recurso.respond_to?(:to_s)
      ejercicio.respond_to?(:to_s)
      # Polimorfismo en duración
      Recursos::duracion(recurso)
      Recursos::duracion(ejercicio)
    end
  end

  # Probar el fallo al instanciar
  def test_fail_instanciar_ejercicio
    assert_raise(ArgumentError) {(Recursos::Ejercicio.new())}
  end

  # Probar la herencia de la clase
  def test_instanciar_ejercicio
    assert_not_nil(Recursos::Ejercicio.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "temp", "material", [:abstraccion, :patrones]))
    assert_not_nil(Recursos::Ejercicio.new(202300001, "Code.org", "Write your first computer program", "Learn the basic concepts of Computer Science", Recursos::BEGINNER, "Self-led tutorial", "Plugged", "60 minutos", "Smartphone or tablet", [:algoritmos, :codificacion]))
    assert_nothing_raised {(Recursos::Ejercicio.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "temp", "material", [:abstraccion, :patrones]))}
  end

  # Probar los getters
  def test_getters_ejercicio
    ejercicio = Recursos::Ejercicio.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "temp", "material", [:abstraccion, :patrones])
    ejercicio2 = Recursos::Ejercicio.new(202300001, "Code.org", "Write your first computer program", "Learn the basic concepts of Computer Science", Recursos::BEGINNER, "Self-led tutorial", "Plugged", "60 minutos", "Smartphone or tablet", [:algoritmos, :codificacion])
    assert_equal(1, ejercicio.id)
  end

  # Probar la variable
  def test_simple_variable_clase
    # Borramos las isntancias creadas
    Recursos::Ejercicio.class_variable_set(:@@num_recursos, 0)
    # Creamos nuevas
    assert_equal(0, Recursos::Ejercicio.num_recursos)
    recurso = Recursos::Ejercicio.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "temp", "material", [:abstraccion, :patrones])
    assert_equal(1, Recursos::Ejercicio.num_recursos)
    recurso2 = Recursos::Ejercicio.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "temp", "material", [:abstraccion, :patrones])
    assert_equal(2, Recursos::Ejercicio.num_recursos)
  end

  # Probar el método to_s
  def test_to_s_ejercicio
    ejercicio = Recursos::Ejercicio.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "temp", "material", [:abstraccion, :patrones])
    ejercicio2 = Recursos::Ejercicio.new(202300001, "Code.org", "Write your first computer program", "Learn the basic concepts of Computer Science", Recursos::BEGINNER, "Self-led tutorial", "Plugged", "60 minutos", "Smartphone or tablet", [:algoritmos, :codificacion])
    assert_equal("ID: 1\nMarca: marca\nTítulo: titulo\nDescripción: descripcion\nNivel: beginner\nTipo: tipo\nCategoría: categoria\nTemporalización: temp\nMaterial: material\nConceptos: [:abstraccion, :patrones]", ejercicio.to_s)
    assert_equal("ID: 202300001\nMarca: Code.org\nTítulo: Write your first computer program\nDescripción: Learn the basic concepts of Computer Science\nNivel: beginner\nTipo: Self-led tutorial\nCategoría: Plugged\nTemporalización: 60 minutos\nMaterial: Smartphone or tablet\nConceptos: [:algoritmos, :codificacion]", ejercicio2.to_s)
  end

  # Probar el método check_conceptos
  def test_check_conceptos
    assert_raise(ArgumentError) {(Recursos::Ejercicio.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "temp", "material", [:abstraccion, :patrones, :concepto_no_valido]))}
    assert_nothing_raised {(Recursos::Ejercicio.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "temp", "material", [:abstraccion, :patrones]))}
  end

  # Probar el método check_nivel
  def test_check_nivel
    assert_raise(ArgumentError) {(Recursos::Ejercicio.new(1, "marca", "titulo", "descripcion", :nivel_no_valido, "tipo", "categoria", "temp", "material", [:abstraccion, :patrones]))}
    assert_nothing_raised {(Recursos::Ejercicio.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "temp", "material", [:abstraccion, :patrones]))}
  end

  # Probar el método duracion
  def test_duracion_recurso
    ejercicio = Recursos::Ejercicio.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "60 minutos", "material", [:abstraccion, :patrones])
    ejercicio2 = Recursos::Ejercicio.new(202300001, "Code.org", "Write your first computer program", "Learn the basic concepts of Computer Science", Recursos::BEGINNER, "Self-led tutorial", "Plugged", "2 horas", "Smartphone or tablet", [:algoritmos, :codificacion])
    assert_equal(60, Recursos::duracion(ejercicio))
    assert_equal(120, Recursos::duracion(ejercicio2))
  end

  # Probar la comparación
  def test_comparacion_ejercicios
    ejercicio = Recursos::Ejercicio.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "60 minutos", "material", [:abstraccion, :patrones])
    ejercicio2 = Recursos::Ejercicio.new(202300001, "Code.org", "Write your first computer program", "Learn the basic concepts of Computer Science", Recursos::BEGINNER, "Self-led tutorial", "Plugged", "2 horas", "Smartphone or tablet", [:algoritmos, :codificacion])
    assert_equal(-1, ejercicio <=> ejercicio2)
    assert_equal(1, ejercicio2 <=> ejercicio)
    assert_equal(0, ejercicio <=> ejercicio)
    assert_equal(false, ejercicio > ejercicio2)
    assert_equal(true, ejercicio < ejercicio2)
    assert_equal(false, ejercicio >= ejercicio2)
    assert_equal(true, ejercicio <= ejercicio2)
  end

  # Probar Enumerable
  def test_enumerable
    # Creamos los ejercicios
    ejercicio = Recursos::Ejercicio.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "60 minutos", "material", [:abstraccion, :patrones])
    # Probamos el each
    assert do
      array = []
      ejercicio.each {|x| array << x}
    end
    # Probamos el find
    assert_equal(1, ejercicio.find {|x| x == 1})
    # Probamos el count
    assert_equal(11, ejercicio.count)
    # Probamos el método take
    array1 = [1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "60 minutos", "material", [:abstraccion, :patrones]]
    array2 = [1, "marca", "titulo", "descripcion", Recursos::BEGINNER]
    assert_equal(array1, ejercicio.take(10))
    assert_equal(array2, ejercicio.take(5))
    # Probamos el método any
    assert_equal(true, ejercicio.any?(String))
    # Probamos el método grep
    assert_equal(["marca"], ejercicio.grep(/marca/))
    # Los string de seis o mas letras
    expr = Regexp.new("^[a-zA-Z]{6,}$")
    assert_equal(["titulo", "descripcion", :beginner, "categoria", "material"], ejercicio.grep(expr))
    # Probamos el método find_index
    assert_equal(0, ejercicio.find_index(1))
    assert_equal(2, ejercicio.find_index("titulo"))
  end
end