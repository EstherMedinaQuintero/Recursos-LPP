# frozen_string_literal: true

require "test_helper"

class EntornosDslTest < Test::Unit::TestCase

  def test_entornos_dsl_jerarquia
    # Comprobamos la jerarquía de EntornoDSL con is_a?
    assert do
    Recursos::EntornosDSL.is_a?(Class)
    Recursos::EntornosDSL.is_a?(Object)
    Recursos::EntornosDSL.is_a?(BasicObject)
    !Recursos::EntornosDSL.is_a?(String)
    !Recursos::EntornosDSL.is_a?(Recursos::Ejercicio)
    !Recursos::EntornosDSL.is_a?(Recursos::RecursosDigitalesAbiertos)
    end
  end


  def test_entornos_dsl_resultados
      
    # Creamos los recursos
    recurso2 = Recursos::Ejercicio.new(2, "ULL", "El reino de las variables", "Variables", Recursos::BEGINNER, "guiada", "desenchufada", "30 minutos", "papel", [:algoritmos])
    recurso3 = Recursos::Ejercicio.new(3, "ULL", "Kidsort: de cifra en cifra", "Bucles", Recursos::BEGINNER, "guiada", "desenchufada", "30 minutos", "papel", [:algoritmos])
    recurso15 = Recursos::Ejercicio.new(15, 'ULL', "Exploradores de secuencias", 'Secuencias', Recursos::BEGINNER, :guiada, :desenchufada, "30 minutos", "papel", [:algoritmos])
    recurso21 = Recursos::Ejercicio.new(21, 'ULL', "¡Alerta! condicionales", 'Condicionales', Recursos::BEGINNER, :guiada, :desenchufada, "30 minutos", "papel", [:algoritmos])
    recurso22 = Recursos::Ejercicio.new(22, 'ULL', "La búsqueda de Camelot...", 'Funciones', Recursos::BEGINNER, :guiada, :desenchufada, "30 minutos", "papel", [:algoritmos])

    # Creamos los array de loris
    loris1 = [5, 5, 3, 1, 3, 5, 2, 3]

    # e1 ~ (001, ’Vestibulo’, :taller, [d15, d3, d2, d21, d22]), 0,0
    entorno_dsl_1 = Recursos::EntornosDSL.new("Vestibulo") do
      # Registramos los recursos
      resgistrar_recurso recurso15
      resgistrar_recurso recurso3
      resgistrar_recurso recurso2
      resgistrar_recurso recurso21
      resgistrar_recurso recurso22
      # Evaluamos los recursos
      evaluar_recurso recurso15, loris1
      evaluar_recurso recurso3, loris1
      evaluar_recurso recurso2, loris1
      evaluar_recurso recurso21, loris1
      evaluar_recurso recurso22, loris1
      # Manejamos los temas
      manejar_tema recurso15
      manejar_tema recurso3
      manejar_tema recurso2
      manejar_tema recurso21
      manejar_tema recurso22
    end

    # Imprimimos los entornos
    puts entorno_dsl_1

    # Comprobaciones del nombre (asserts)
    assert_equal("Vestibulo", entorno_dsl_1.nombre)

    # Comprobaciones de los temas (asserts)
    assert_equal(5, entorno_dsl_1.temas.size)

    # Comprobaciones de los to_s (asserts)
    assert_equal("\n ---> Itinerario: Vestibulo\nEquipo 15: Exploradores de secuencias\nEquipo 3: Kidsort: de cifra en cifra\nEquipo 2: El reino de las variables\nEquipo 21: ¡Alerta! condicionales\nEquipo 22: La búsqueda de Camelot...\n", entorno_dsl_1.to_s)
  end      
    
end
