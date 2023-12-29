# Práctica completa de "Recursos Educativos"

> [!IMPORTANT] 
> ¡Buenas! Este repositorio es para tener un repositorio común con la práctica final de LPP corregida.

## Práctica 8: POO. Gema.

Desarrollar una gema **Ruby** para representar recursos educativos para el desarrollo del **Pensamiento Computacional**. Ha de contar con una clase para representar un único ejercicio o actividad que permite la enseñanza aprendizaje de esta técnica de resolución de problemas, constantes para representar el nivel de experiencia recomendado para los ejercicios o actividades y una función que dado un recurso devuelva su duración estimada en minutos. El recurso _“Write your first computer program”_ de **Code.org2** se puede representar de la siguiente forma:

- _Identificador:_ 202300001
- _Marca:_ Code.org
- _Título:_ Write your first computer program
- _Descripción:_ Learn the basic concepts of Computer Science with drag and drop programming. This is a game-like, self-directed tutorial starring video lectures by Bill Gates, Mark Zuckerberg, Angry Birds and Plants vs. Zombies. Learn repeat-loops, conditionals, and basic algorithms. Available in 37 languages
- _Nivel de experiencia:_ Beginner
- _Tipo de actividad:_ Self-led tutorial
- _Categoría del recurso:_ Plugged
- _Material necesario:_ Smartphone or tablet
- _Temporalización:_ 60 minutos
- _Conceptos:_ Algoritmos, Codificación

El pensamiento computacional utiliza los siguientes conceptos para resolver un problema:

- _Razonamiento lógico:_ utilizar el conocimiento existente de un sistema para hacer predicciones confiables sobre su comportamiento futuro.
- _Abstracción:_ identificar lo que es importante y eliminar detalles innecesarios.
- _Descomposición:_ dividir el problema complejo en piezas más pequeñas y sencillas de resolver.
- _Patrones:_ identificar similitudes o características entre problemas y resolver el problema usando soluciones previamente definidas en otros problemas y basado en experiencias previas.
- _Algoritmos:_ construir una secuencia de pasos o un conjunto de reglas para hacer algo.
- _Codificación:_ escribir un conjunto de instrucciones que pueda ejecutar una máquina.
- _Validación:_ asegurar que la solución, ya sea una algoritmo, sistema o proceso, es adecuado para resolver el problema.

## Práctica 9: POO. Herencia.

Partiendo de la clase para representar un único ejercicio o actividad que permite la enseñanzaaprendizaje del pensamiento computacional cree una jerarquía de clases Ruby para representar recursos digitales abiertos que cuenten con un _URI (Uniform Resource Identifier)_ y una fecha de creación. Se ha de contar con un mecanismo para determinar el número de recursos que se ha instanciado. Los recursos educativos han de ser comparables según el tiempo estimado para su realización y su fecha de creación.

Cree una jerarquía de clases Ruby para representar un **entorno digital** de recursos educativos. Se trata de una colección de recursos educativos estructurado didácticamente dirigido a facilitar el desarrollo de experiencias de aprendizaje en torno a una unidad de saber o competencia. Las colecciones han de contar como mínimo con un código para su identificación, un nombre, una categoría que indique si se trata de una lección, una unidad didáctica, un curso o un taller y finalmente, un conjunto de recursos. Además, dada una colección de recursos se ha de poder obtener el número de objetos de aprendizaje que la componen y el nivel medio de la misma.

## Práctica 10: POO. Polimorfismo.

Partiendo de la clase para representar un **entorno digital** de recursos educativos cree una jerarquía de clases para representar dos tipos dependiendo del público objetivo: la educación formal o la educación informal. Los entornos digitales de la educación formal se refieren al sistema educativo estructurado y organizado, que se imparte en escuelas colegios y otros establecimientos educativos. Estos han de almacenar el número de niveles con los que cuenta. Los entornos digitales de la educación no formal se refieren a los que no están regulados y la pueden impartir en bibliotecas, centros comunitarios, organizaciones no gubernamentales, etc. Estos han de almacenar el precio de la cuota de registro.

Todos los recursos que representan un ejercicio o actividad que permite la enseñanza aprendizaje del pensamiento computacional han de ser _Enumerables_. El módulo de recursos educativos debe contar con una función que dada una colección de recursos educativos devuelva su duración estimada en minutos. El módulo de recursos educativos debe contar con una función que dado un conjunto de recursos educativos los añada a una colección especificada.

## Práctica 11: Programación funcional. Bloques.

En la actualidad para la educación se ha generado un cúmulo significativo y variado de medios y materiales digitales por ello resulta de vital importancia el empleo de instrumentos de evaluación que garanticen la calidad de estos recursos educativos digitales, tanto desde el punto de vista didáctico como tecnológico. El instrumento **LORI (Learning Object Review Instrument)** permite la evaluación de un recursos educativos digital a través de ocho criterios sobre los cuales el usuario ha de dar su opinión mediante una escala Likert de cinco niveles, mostrando su acuerdo o desacuerdo: Calidad del contenido, Objetivos de aprendizaje, Motivación, Diseño de presentación, Usabilidad en la interacción, Accesibilidad, Reusabilidad, Valor educativo.

El conjunto de pruebas ha de validar el correcto funcionamiento de todos los elementos que se propongan en el código, así como, el concepto de bloque. Implemente una función para aplicar el instrumento LORI a un recurso digital abierto. Implemente una función para aplicar el instrumento *LORI* a un entorno digital de recursos educativos. Considere un conjunto de recursos digitales abiertos. Implemente una función que seleccione el recurso que tiene mayor valor educativo de entre las que tienen la misma fecha y duración en minutos. Considere un conjunto de entornos digitales de recursos educativos. Implemente una función que seleccione la oferta con mayor número de objetos de aprendizaje y mejor calidad del contenido.

## Práctica 12: Programación funcional. DLS.

Diseñar e implementar un **Lenguaje de Dominio Específico (Domain Specific Language - DSL)**, que permita la interacción entre recursos educativos y entornos digitales. Los DSL son herramientas útiles que permiten expresar fácilmente la lógica específica de un problema particular (dominio) que de otro modo sería difícil o farragoso de escribir en otro idioma. Por lo general, se trata de definir una gramática que se asemeja más al léxico utilizado por el dominio de destino. Por ejemplo, un matemático que trabaja con matrices no piensa en bucles, iteradores o arrays, sino que piensa en términos de vectores, productos y transformaciones. El uso de un lenguaje de propósito general, como Ruby, con sólo arrays e iteradores requeriría que el matemático practicara gimnasia mental para traducir mentalmente entre el dominio de su problema y el del lenguaje con el que escribe el código (Ruby). El uso de un DSL diseñado para las operaciones que le interesan eliminaría esta traducción mental y proporcionaría un código más conciso. Los DSL tienen dos formas: _externos e internos_. Los DSL externos existen independientemente de cualquier otro lenguaje. Los DSL internos estan alojados dentro de otro lenguaje de programación - por ejemplo, Rails es un DSL interno que se aloja en el lenguaje de programación Ruby.

El DSL que se solicita ha de permitir la interacción entre recursos educativos y un entorno digital de recursos educativos de una forma natural. Por ejemplo, se puede implementar una funcionalidad para registrar un recurso educativo, otra para evaluar un recurso educativo, otra para crear un itinerario de recursos educativos de un entorno digital, etc. Finalmente, se deben hacer pruebas para comprobar que un entorno digital de recursos educativos se muestra correctamente formateado incluyendo el resultado de su evaluación.
