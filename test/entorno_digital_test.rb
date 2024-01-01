# frozen_string_literal: true

require "test_helper"

class EntornoDigitalTest < Test::Unit::TestCase

  # Tests de la herencia
  def test_simple_jerarquia
    entorno = Recursos::EntornoDigital.new(1, "nombre", "leccion", [])
    assert do
      entorno.is_a?(Recursos::EntornoDigital)
      entorno.is_a?(Object)
      entorno.is_a?(BasicObject)
    end

  end

  # Tests de la herencia
  def test_simple_instanciar
    assert_raise(ArgumentError) { Recursos::EntornoDigital.new() }
    assert_not_nil(Recursos::EntornoDigital.new(1, "nombre", "leccion", []))  
    recurso1 = Recursos::RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "temp", "material", [:abstraccion, :patrones], "uri", "2023-10-01")
    recurso2 = Recursos::RecursosDigitalesAbiertos.new(202300001, "Code.org", "Write your first computer program", "Learn the basic concepts of Computer Science", Recursos::BEGINNER, "Self-led tutorial", "Plugged", "60 minutos", "Smartphone or tablet", [:algoritmos, :codificacion], "https://studio.code.org/s/course1", "2013-12-01")
    assert_not_nil(Recursos::EntornoDigital.new(1, "nombre", "leccion", [recurso1, recurso2]))
  end

  # Tests de los getters
  def test_getters_entorno_digital
    recurso1 = Recursos::RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "temp", "material", [:abstraccion, :patrones], "uri", "2023-10-01")
    recurso2 = Recursos::RecursosDigitalesAbiertos.new(202300001, "Code.org", "Write your first computer program", "Learn the basic concepts of Computer Science", Recursos::BEGINNER, "Self-led tutorial", "Plugged", "60 minutos", "Smartphone or tablet", [:algoritmos, :codificacion], "https://studio.code.org/s/course1", "2013-12-01")
    entorno_prueba = Recursos::EntornoDigital.new(1, "nombre", "leccion", [recurso1, recurso2])
    assert_equal(1, entorno_prueba.identificacion)
  end

  # Tests del método to_s
  def test_to_s_entorno_digital
    recurso1 = Recursos::RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "temp", "material", [:abstraccion, :patrones], "uri", "2023-10-01")
    recurso2 = Recursos::RecursosDigitalesAbiertos.new(202300001, "Code.org", "Write your first computer program", "Learn the basic concepts of Computer Science", Recursos::BEGINNER, "Self-led tutorial", "Plugged", "60 minutos", "Smartphone or tablet", [:algoritmos, :codificacion], "https://studio.code.org/s/course1", "2013-12-01")
    entorno_prueba = Recursos::EntornoDigital.new(1, "nombre", "leccion", [recurso1, recurso2])
    assert_equal("Identificación: 1\nNombre: nombre\nCategoría: leccion\nRecursos: [ID: 1\nMarca: marca\nTítulo: titulo\nDescripción: descripcion\nNivel: beginner\nTipo: tipo\nCategoría: categoria\nTemporalización: temp\nMaterial: material\nConceptos: [:abstraccion, :patrones]\nURI: uri\nFecha de creación: 2023-10-01, ID: 202300001\nMarca: Code.org\nTítulo: Write your first computer program\nDescripción: Learn the basic concepts of Computer Science\nNivel: beginner\nTipo: Self-led tutorial\nCategoría: Plugged\nTemporalización: 60 minutos\nMaterial: Smartphone or tablet\nConceptos: [:algoritmos, :codificacion]\nURI: https://studio.code.org/s/course1\nFecha de creación: 2013-12-01]", entorno_prueba.to_s)
  end

  # Tests del método de número de objetos de aprendizaje
  def test_num_objetos
    recurso1 = Recursos::RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "leccion", "temp", "material", [:abstraccion, :patrones], "uri", "2023-10-01")
    recurso2 = Recursos::RecursosDigitalesAbiertos.new(202300001, "Code.org", "Write your first computer program", "Learn the basic concepts of Computer Science", Recursos::BEGINNER, "Self-led tutorial", "Plugged", "60 minutos", "Smartphone or tablet", [:algoritmos, :codificacion], "https://studio.code.org/s/course1", "2013-12-01")
    entorno_prueba = Recursos::EntornoDigital.new(1, "nombre", "leccion", [recurso1, recurso2])
    assert_equal(2, entorno_prueba.numero_objetos_aprendizaje)
  end

  # Tests del método del nivel medio
  def test_media
    recurso1 = Recursos::RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "leccion", "temp", "material", [:abstraccion, :patrones], "uri", "2023-10-01")
    recurso2 = Recursos::RecursosDigitalesAbiertos.new(202300001, "Code.org", "Write your first computer program", "Learn the basic concepts of Computer Science", Recursos::BEGINNER, "Self-led tutorial", "Plugged", "60 minutos", "Smartphone or tablet", [:algoritmos, :codificacion], "https://studio.code.org/s/course1", "2013-12-01")
    entorno_prueba = Recursos::EntornoDigital.new(1, "nombre", "leccion", [recurso1, recurso2])
    assert_equal(Recursos::BEGINNER, entorno_prueba.nivel_medio)
  end

  # Tests de igualar dos entornos digitales
  def test_igualar_entornos
    recurso1 = Recursos::RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "leccion", "temp", "material", [:abstraccion, :patrones], "uri", "2023-10-01")
    recurso2 = Recursos::RecursosDigitalesAbiertos.new(202300001, "Code.org", "Write your first computer program", "Learn the basic concepts of Computer Science", Recursos::BEGINNER, "Self-led tutorial", "Plugged", "60 minutos", "Smartphone or tablet", [:algoritmos, :codificacion], "https://studio.code.org/s/course1", "2013-12-01")
    entorno_prueba1 = Recursos::EntornoDigital.new(1, "nombre", "leccion", [recurso1, recurso2])
    entorno_prueba2 = Recursos::EntornoDigital.new(1, "nombre", "leccion", [recurso1, recurso2])
    assert_equal(entorno_prueba1, entorno_prueba2)
  end

  # Tests de la duración total
  def test_duracion_total
    recurso1 = Recursos::RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "Self-led tutorial", "Plugged", "20 minutos", "Smartphone or tablet", [:abstraccion, :patrones], "uri", "2023-10-01")
    recurso2 = Recursos::RecursosDigitalesAbiertos.new(202300001, "Code.org", "Write your first computer program", "Learn the basic concepts of Computer Science", Recursos::BEGINNER, "Self-led tutorial", "Plugged", "60 minutos", "Smartphone or tablet", [:algoritmos, :codificacion], "https://studio.code.org/s/course1", "2013-12-01")
    entorno_prueba = Recursos::EntornoDigital.new(1, "nombre", "leccion", [recurso1, recurso2])
    assert_equal(80, Recursos::duracion_total(entorno_prueba))
  end

  # Función de creación de colección
  def test_crear_coleccion
    recurso1 = Recursos::RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "leccion", "categoria", "100 minutos", "material", [:abstraccion, :patrones], "uri", "2023-10-01")
    recurso2 = Recursos::RecursosDigitalesAbiertos.new(202300001, "Code.org", "titulo", "descripcion", Recursos::BEGINNER, "leccion", "categoria", "20 minutos", "material", [:algoritmos, :codificacion], "uri", "2013-12-01")
    entorno_prueba = Recursos::EntornoDigital.new(1, "nombre", "leccion", [recurso1, recurso2])
    entorno_prueba2 = Recursos::crear_coleccion(entorno_prueba, [])
    assert_equal(true, entorno_prueba == entorno_prueba2)
  end

  # Tests de polimorfismo
  def test_polimorfismo_entornos
    recurso1 = Recursos::RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "leccion", "30 minutos", "material", [:abstraccion, :patrones], "uri", "2023-10-01")
    recurso2 = Recursos::RecursosDigitalesAbiertos.new(202300001, "Code.org", "Write your first computer program", "Learn the basic concepts of Computer Science", Recursos::BEGINNER, "Self-led tutorial", "Plugged", "60 minutos", "Smartphone or tablet", [:algoritmos, :codificacion], "https://studio.code.org/s/course1", "2013-12-01")
    entorno_prueba1 = Recursos::EntornoDigital.new(1, "nombre", "leccion", [recurso1, recurso2])
    educacion_formal1 = Recursos::EducacionFormal.new(1, "nombre", "leccion", [recurso1, recurso2], 4)
    educacion_informal1 = Recursos::EducacionInformal.new(1, "nombre", "leccion", [recurso1, recurso2], "600 euros")
    # Respuestas a getters
    assert do
      entorno_prueba1.respond_to?(:identificacion)
      educacion_formal1.respond_to?(:identificacion)
      educacion_informal1.respond_to?(:identificacion)
      entorno_prueba1.respond_to?(:nombre)
      educacion_formal1.respond_to?(:nombre)
      educacion_informal1.respond_to?(:nombre)
      !entorno_prueba1.respond_to?(:precio)
      !educacion_formal1.respond_to?(:precio)
      !educacion_informal1.respond_to?(:nivel)
    end
    # Respuestas al to_s
    assert do
      entorno_prueba1.respond_to?(:to_s)
      educacion_formal1.respond_to?(:to_s)
      educacion_informal1.respond_to?(:to_s)
    end
    # Respuestas al ==
    assert do
      entorno_prueba1.respond_to?(:==)
      educacion_formal1.respond_to?(:==)
      educacion_informal1.respond_to?(:==)
    end
    # Respuestas al método de duración total
    assert do
      Recursos::duracion_total(entorno_prueba1)
      Recursos::duracion_total(educacion_formal1)
      Recursos::duracion_total(educacion_informal1)
    end
    # Respuestas al método de crear colección
    assert do
      Recursos::crear_coleccion(entorno_prueba1, [recurso1, recurso2])
      Recursos::crear_coleccion(educacion_formal1, [recurso1, recurso2])
      Recursos::crear_coleccion(educacion_informal1, [recurso1, recurso2])
    end
    
  end

end