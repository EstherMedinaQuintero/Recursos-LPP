# frozen_string_literal: true

module Recursos

  def self.aplicar_lori(recurso_digital_abierto, valores)
    valores
  end

  def self.aplicar_lori_entorno(entorno_digital, valores)
    # recorrer el array de recursos del entorno
    loris = entorno_digital.recursos.map do |recurso|
        # aplicar la función del apartado 2 a cada recurso
        Recursos.aplicar_lori(recurso, valores)
    end
    # devolver el array de valores
    loris
  end

  def self.seleccionar_mejor_recurso(ejercicios_digitales, valoraciones)
    # Usamos zip para juntar los ejercicios digitales con sus valoraciones
    ejercicios_zip = ejercicios_digitales.zip(valoraciones)
    # Agrupar con group by por tiempo y por fecha en un array de tuplas
    # Primer elemento: tiempo y fecha
    # Segundo elemento: array de ejercicios digitales con ese tiempo y fecha
    ejercicios_agrupados = ejercicios_zip.group_by {|ejercicio| [ejercicio[0].fecha_creacion, ejercicio[0].temp]}
    # Con el select seleccionamos los que tengan más de un elemento
    ejercicios_seleccionados = ejercicios_agrupados.select {|ejercicio| ejercicio[1].length > 1}
    # Hay que coger el primer grupo con first
    ejercicios_primer_grupo = ejercicios_seleccionados.first
    # Y de ese grupo, coger el que tenga mayor valor educativo (el último elemento de LORI) con max by
    # Si hay varios solo devolvemos el primero
    ejercicios_primer_grupo[1].max_by {|ejercicio| ejercicio[1].last}
  end 

  def self.seleccionar_mejor_oferta(entornos_digitales, valoraciones)
    # Hacemos zip de las valoraciones
    entornos_zip = entornos_digitales.zip(valoraciones)
    # Buscamos el entorno con mayor número de objetos de aprendizaje y mejor calidad del contenido (primer elemento de LORI)
    entornos_zip.max_by {|entorno| [entorno[0].numero_objetos_aprendizaje, entorno[1].first]}
  end
  
end