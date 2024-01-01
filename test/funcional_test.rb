# frozen_string_literal: true

require "test_helper"

class FuncionalTest < Test::Unit::TestCase
  
  # Apartado 2
  # Pruebas de la función aplicar_lori
  def test_funcional_aplicar_lori
    recurso = Recursos::RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "temp", "material", [:abstraccion, :patrones], "uri", "2013-12-01")
    recurso2 = Recursos::RecursosDigitalesAbiertos.new(2, "M2", "¡Recurso!", "Recurso maravilloso", Recursos::INTERMEDIATE, "tipo", "categoria", "temp", "material", [:abstraccion, :patrones], "uri", "2013-12-01")
    # Comprobar los parámetros
    assert_raise(ArgumentError) {(Recursos.aplicar_lori())}
    # Comprobar que es un recurso digital abierto
    assert_raise(ArgumentError) {(Recursos.aplicar_lori(recurso, [1,2,3,4,5,6,7,8]))}
    # Comprobar que el array tiene 8 valores
    assert_raise(ArgumentError) {(Recursos.aplicar_lori(recurso, [1,2,3,4,5,6,7]))}
    # Comprobar que los valores son del 1 al 5
    assert_raise(ArgumentError) {(Recursos.aplicar_lori(recurso, [1,2,3,4,5,6,7,8]))}
    # Comprobar que es un recurso digital abierto
    assert_nothing_raised {(Recursos.aplicar_lori(recurso, [1,2,3,4,5,4,3,2]))}
    # Comprobamos que devuelve lo correcto
    assert_equal([1,2,3,4,5,4,3,2], Recursos.aplicar_lori(recurso, [1,2,3,4,5,4,3,2]))
    assert_equal([1,2,3,1,1,1,3,2], Recursos.aplicar_lori(recurso2, [1,2,3,1,1,1,3,2]))
    assert_equal([1,1,1,1,1,1,1,1], Recursos.aplicar_lori(recurso2, [1,1,1,1,1,1,1,1]))
    # Comprobamos el tipo del resultado
    assert_instance_of(Array, Recursos.aplicar_lori(recurso, [1,2,3,4,5,4,3,2]))
  end

  # Apartado 3
  # Pruebas de la función aplicar_lori_entorno
  def test_funcional_aplicar_lori_entorno
    recurso1 = Recursos::RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "temp", "material", [:abstraccion, :patrones], "uri", "2023-10-01")
    recurso2 = Recursos::RecursosDigitalesAbiertos.new(2, "Code.org", "Write your first computer program", "Learn the basic concepts of Computer Science", Recursos::BEGINNER, "Self-led tutorial", "Plugged", "60 minutos", "Smartphone or tablet", [:algoritmos, :codificacion], "https://studio.code.org/s/course1", "2013-12-01")
    recurso3 = Recursos::RecursosDigitalesAbiertos.new(3, "algo.org", "Write", "Learn the basic concepts", Recursos::ADVANCED, "Self-led tutorial", "Plugged", "60 minutos", "Smartphone or tablet", [:algoritmos, :codificacion], "https://studio.code.org/s/course1", "2013-12-01")
    entorno_prueba = Recursos::EntornoDigital.new(1, "nombre", "leccion", [recurso1, recurso2, recurso3])
    # Comprobamos que devuelve lo correcto
    assert_equal([[1,2,3,4,5,4,3,2], [1,2,3,4,5,4,3,2], [1,2,3,4,5,4,3,2]], Recursos.aplicar_lori_entorno(entorno_prueba, [1,2,3,4,5,4,3,2]))
  end

  # Apartado 4
  # Pruebas de la función seleccionar_mejor_recurso
  def test_funcional_seleccionar_mejor_recurso
    recurso1 = Recursos::RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "60 minutos", "material", [:abstraccion, :patrones], "uri", "2023-10-01")
    recurso2 = Recursos::RecursosDigitalesAbiertos.new(2, "Code.org", "Write your first computer program", "Learn the basic concepts of Computer Science", Recursos::BEGINNER, "Self-led tutorial", "Plugged", "60 minutos", "Smartphone or tablet", [:algoritmos, :codificacion], "https://studio.code.org/s/course1", "2023-10-01")
    recurso3 = Recursos::RecursosDigitalesAbiertos.new(3, "algo.org", "Write", "Learn the basic concepts", Recursos::ADVANCED, "Self-led tutorial", "Plugged", "60 minutos", "Smartphone or tablet", [:algoritmos, :codificacion], "https://studio.code.org/s/course1", "2023-10-01")
    recurso4 = Recursos::RecursosDigitalesAbiertos.new(4, "cuatro.org", "w4", "Learn the basic concepts", Recursos::INTERMEDIATE, "Self-led tutorial", "Plugged", "60 minutos", "Smartphone or tablet", [:algoritmos, :codificacion], "https://studio.code.org/s/course1", "2023-11-01")
    recurso5 = Recursos::RecursosDigitalesAbiertos.new(5, "cinco.org", "w5", "Learn the basic concepts", Recursos::ADVANCED, "Self-led tutorial", "Plugged", "60 minutos", "Smartphone or tablet", [:algoritmos, :codificacion], "https://studio.code.org/s/course1", "2023-11-01")
    # Comprobamos la función
    assert_equal([recurso3, [1, 2, 1, 2, 3, 2, 5, 2]], Recursos.seleccionar_mejor_recurso([recurso3], [[1, 2, 1, 2, 3, 2, 5, 2]]))
  end 

  # Apartado 5
  # Pruebas de la función seleccionar_mejor_recurso_entorno
  def test_funcional_seleccionar_mejor_oferta
    recurso1 = Recursos::RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "60 minutos", "material", [:abstraccion, :patrones], "uri", "2023-10-01")
    recurso2 = Recursos::RecursosDigitalesAbiertos.new(2, "Code.org", "Write your first computer program", "Learn the basic concepts of Computer Science", Recursos::BEGINNER, "Self-led tutorial", "Plugged", "60 minutos", "Smartphone or tablet", [:algoritmos, :codificacion], "https://studio.code.org/s/course1", "2023-10-01")
    entorno_digital1 = Recursos::EntornoDigital.new(1, "nombre", "leccion", [recurso1, recurso2])
    # Comprobamos la función
    assert_equal([entorno_digital1, [1, 1, 1, 1, 1, 1, 1, 1]], Recursos.seleccionar_mejor_oferta([entorno_digital1, entorno_digital2], [[1, 1, 1, 1, 1, 1, 1, 1], [1, 2, 1, 2, 3, 2, 5, 2]]))
  end

end