# frozen_string_literal: true

RSpec.describe RecursosEducativos do

  before :all do
    # Actividad Educativa "Write your first computer program"
    @actividad1 = RecursosEducativos::Actividad.new(
      202300001,
      "Code.org",
      "Write your first computer program",
      "Learn the basic concepts of Computer Science with drag and drop programming. This is a game-like, self-directed tutorial starring video lectures by Bill Gates, Mark Zuckerberg, Angry Birds and Plants vs. Zombies. Learn repeat-loops, conditionals, and basic algorithms. Available in 37 languages.",
      RecursosEducativos::NVL_P,
      "Self-led tutorial",
      :plugged,
      "Smartphone or tablet",
      60,
      [:algoritmos, :codificacion]
    )
    # Actividad Educativa "Introduction to Logic and Algorithms"
    @actividad2 = RecursosEducativos::Actividad.new(
      202300002,
      "Tech Academy",
      "Introduction to Logic and Algorithms",
      "A comprehensive course introducing logic and algorithms. Suitable for intermediate users who want to enhance their problem-solving skills and understanding of algorithms.",
      RecursosEducativos::NVL_I,
      "Online Course",
      :plugged,
      "Computer with internet access",
      90,
      [:razonamiento_logico, :algoritmos]
    )
    # Actividad Educativa "Advanced Data Structures Workshop"
    @actividad3 = RecursosEducativos::Actividad.new(
      202300003,
      "Coding Institute",
      "Advanced Data Structures Workshop",
      "An advanced workshop on data structures, suitable for advanced users who want to dive deep into data organization and advanced algorithms.",
      RecursosEducativos::NVL_A,
      "Workshop",
      :plugged,
      "Laptop with development environment",
      120,
      [:descomposición, :patrones]
    )
    # Actividad Educativa "Cryptography and Network Security Seminar"
    @actividad4 = RecursosEducativos::Actividad.new(
      202300004,
      "Security Institute",
      "Cryptography and Network Security Seminar",
      "An expert-level seminar on cryptography and network security. Recommended for expert users who want to explore advanced encryption techniques and network security protocols.",
      RecursosEducativos::NVL_E,
      "Seminar",
      :plugged,
      "Secure computer and network access",
      150,
      [:algoritmos, :validacion]
    )
    # Actividad Educativa "Aprendizaje de Patrones"
    @actividad5 = RecursosEducativos::Actividad.new(
      202300005,
      "Kids Learning Co.",
      "Pattern Recognition with Cards",
      "An interactive card game designed for kids to learn pattern recognition and problem-solving. Ideal for children with no prior experience in computational thinking.",
      RecursosEducativos::NVL_P,
      "Card Game",
      :unplugged,
      "Card deck and instruction booklet",
      45,
      [:patrones]
    )
    # Actividad Educativa "Logical Puzzles for Kids"
    @actividad6 = RecursosEducativos::Actividad.new(
      202300006,
      "Educational Games Inc.",
      "Logical Puzzles for Kids",
      "A collection of logic puzzles and brain teasers designed specifically for kids. These puzzles help children develop logical thinking skills and problem-solving abilities.",
      RecursosEducativos::NVL_P,
      "Puzzle Book",
      :unplugged,
      "Puzzle book and pencil",
      30,
      [:razonamiento_logico]
    )
    # Actividad Educativa "Unplugged Coding Activities"
    @actividad7 = RecursosEducativos::Actividad.new(
      202300007,
      "Young Coders Club",
      "Unplugged Coding Activities",
      "Engaging unplugged coding activities for kids to learn the basics of coding without a computer. Suitable for children who are new to programming.",
      RecursosEducativos::NVL_P,
      "Hands-on Activities",
      :unplugged,
      "Coding cards and activity sheets",
      60,
      [:algoritmos, :codificacion]
    )
    # Actividad Educativa "Learn with Abstraction"
    @actividad8 = RecursosEducativos::Actividad.new(
      202300008,
      "Learn with Abstraction",
      "Introduction to Abstraction",
      "An introductory course that focuses on the concept of abstraction in problem-solving and computer science. Suitable for intermediate users who want to understand the importance of abstraction.",
      RecursosEducativos::NVL_I,
      "Online Course",
      :plugged,
      "Computer with internet access",
      75,
      [:abstraccion, :razonamiento_logico]
    )
    # Recurso digital abierto "Intro to JavaScript: Drawing & Animation"
    @recurso_digital1 = RecursosEducativos::RecursoDigital.new(
      203200000,
      "Khan Academy",
      "Intro to JavaScript: Drawing & Animation",
      "Learn how to use the JavaScript language and the ProcessingJS library to create fun drawings and animations. No prior programming experience is required!",
      RecursosEducativos::NVL_P,
      "Guided lesson",
      :unplugged,
      "Computer with internet connection",
      90,
      [:abstraccion, :patrones, :algoritmos],
      "https://www.khanacademy.org/computer-programming/drawing-animation",
      Date.new(2023, 2, 15)
    )
    # Recurso digital abierto "Machine Learning"
    @recurso_digital2 = RecursosEducativos::RecursoDigital.new(
      203200001,
      "Coursera",
      "Machine Learning",
      "An in-depth, technical introduction to machine learning for tech professionals. Learn the concepts and application of machine learning, its algorithms, and how to use them to solve real-world problems.",
      RecursosEducativos::NVL_E,
      "Course",
      :plugged,
      "Laptop with Python installed",
      180,
      [:validacion, :algoritmos, :razonamiento_logico],
      "https://www.coursera.org/machine-learning",
      Date.new(2023, 3, 20)
    )
    # Recurso digital abierto "Creative Computing"
    @recurso_digital3 = RecursosEducativos::RecursoDigital.new(
      203200002,
      "Scratch",
      "Creative Computing",
      "Introduction to computer science and creative expression through Scratch, developed by Harvard University. Create your own interactive stories, games, and animations.",
      RecursosEducativos::NVL_I,
      "Workshop",
      :unplugged,
      "Computer with Scratch software",
      120,
      [:descomposicion, :razonamiento_logico, :codificacion],
      "https://scratch.mit.edu/projects/editor/?tip_bar=getStarted",
      Date.new(2023, 4, 10)
    )
    # Instancia de educación formal "Curso Avanzado de Programación"
    @educacion_formal_recursos1 = RecursosEducativos::EducacionFormal.new(
      50360001,
      "Curso Avanzado de Programación",
      :curso,
      [@actividad1, @actividad2, @actividad3],
      5
    )
    # Instancia de educación formal "Historia a través de Juegos"
    @educacion_formal_recursos2 = RecursosEducativos::EducacionFormal.new(
      50360002,
      "Historia a través de Juegos",
      :curso,
      [@actividad4, @actividad5, @actividad6],
      4
    )
    # Instancia de educación formal "Explorando la Ciencia con Experimentos"
    @educacion_formal_recursos3 = RecursosEducativos::EducacionFormal.new(
      50360003,
      "Explorando la Ciencia con Experimentos",
      :curso,
      [@actividad7, @actividad8, @recurso_digital1],
      6
    )
  end

  describe "# Pruebas sobre la instanciacion de una clase de EducacionFormal" do
    it "Instanciado del objeto de la clase EducacionFormal 'Curso Avanzado de Programación'" do
      expect(@educacion_formal_recursos1).to be_an_instance_of(RecursosEducativos::EducacionFormal)
    end
    it "Instanciado del objeto de la clase EducacionFormal 'Historia a través de Juegos'" do
      expect(@educacion_formal_recursos2).to be_an_instance_of(RecursosEducativos::EducacionFormal)
    end
    it "Instanciado del objeto de la clase EducacionFormal 'Explorando la Ciencia con Experimentos'" do
      expect(@educacion_formal_recursos3).to be_an_instance_of(RecursosEducativos::EducacionFormal)
    end
  end

  describe "# Pruebas sobre los getters de una clase de EducacionFormal" do
    it "Comprobación del getter de codigo" do
      expect(@educacion_formal_recursos1.codigo).to eq(50360001)
    end
    it "Comprobación del getter de nombre" do
      expect(@educacion_formal_recursos1.nombre).to eq("Curso Avanzado de Programación")
    end
    it "Comprobación del getter de categoria" do
      expect(@educacion_formal_recursos1.categoria).to eq(:curso)
    end
    it "Comprobación del getter de recursos" do
      expect(@educacion_formal_recursos1.recursos).to eq([@actividad1, @actividad2, @actividad3])
    end
    it "Comprobación del getter de num_niveles" do
      expect(@educacion_formal_recursos1.num_niveles).to eq(5)
    end
  end

  describe "# Pruebas del método to_s de la clase EducacionFormal" do
    it "Comprobación del método to_s con el objeto 'Curso Avanzado de Programación'" do
      expect(@educacion_formal_recursos1.to_s).to eq("RecursosEducativos::EducacionFormal, Identificador: 50360001\nNombre: Curso Avanzado de Programación\nCategoría: curso\nRecursos: [Write your first computer program, Introduction to Logic and Algorithms, Advanced Data Structures Workshop]\nNúmero de niveles: 5")
    end
    it "Comprobación del método to_s con el objeto 'Historia a través de Juegos'" do
      expect(@educacion_formal_recursos2.to_s).to eq("RecursosEducativos::EducacionFormal, Identificador: 50360002\nNombre: Historia a través de Juegos\nCategoría: curso\nRecursos: [Cryptography and Network Security Seminar, Pattern Recognition with Cards, Logical Puzzles for Kids]\nNúmero de niveles: 4")
    end
    it "Comprobación del método to_s con el objeto 'Explorando la Ciencia con Experimentos'" do
      expect(@educacion_formal_recursos3.to_s).to eq("RecursosEducativos::EducacionFormal, Identificador: 50360003\nNombre: Explorando la Ciencia con Experimentos\nCategoría: curso\nRecursos: [Unplugged Coding Activities, Introduction to Abstraction, Intro to JavaScript: Drawing & Animation]\nNúmero de niveles: 6")
    end
  end

  describe "# Pruebas sobre la herencia de la clase EducacionFormal" do
    it "Comprobación de la herencia del objeto 'Curso Avanzado de Programación', si es una instancia de EducacionFormal" do
      expect(@educacion_formal_recursos1).to be_an_instance_of(RecursosEducativos::EducacionFormal)
    end
    it "Comprobación de la herencia del objeto 'Historia a través de Juegos', si es una instancia de EducacionFormal" do
      expect(@educacion_formal_recursos2).to be_an_instance_of(RecursosEducativos::EducacionFormal)
    end
    it "Comprobación de la herencia del objeto 'Explorando la Ciencia con Experimentos', si es una instancia de EducacionFormal" do
      expect(@educacion_formal_recursos3).to be_an_instance_of(RecursosEducativos::EducacionFormal)
    end
    it "Comprobación de la herencia con la clase del objeto 'Curso Avanzado de Programación', con EducacionFormal" do
      expect(@educacion_formal_recursos1).to be_a(RecursosEducativos::EducacionFormal)
    end
    it "Comprobación de la herencia con la clase del objeto 'Historia a través de Juegos', con EducacionFormal" do
      expect(@educacion_formal_recursos2).to be_a(RecursosEducativos::EducacionFormal)
    end
    it "Comprobación de la herencia con la clase del objeto 'Explorando la Ciencia con Experimentos', con EducacionFormal" do
      expect(@educacion_formal_recursos3).to be_a(RecursosEducativos::EducacionFormal)
    end
    it "Comprobación de la herencia con la clase del objeto 'Curso Avanzado de Programación', con EntornoDigital" do
      expect(@educacion_formal_recursos1).to be_a(RecursosEducativos::EntornoDigital)
    end
    it "Comprobación de la herencia con la clase del objeto 'Historia a través de Juegos', con EntornoDigital" do
      expect(@educacion_formal_recursos2).to be_a(RecursosEducativos::EntornoDigital)
    end
    it "Comprobación de la herencia con la clase del objeto 'Explorando la Ciencia con Experimentos', con EntornoDigital" do
      expect(@educacion_formal_recursos3).to be_a(RecursosEducativos::EntornoDigital)
    end
    it "Comprobación de la herencia con la clase Object, del objeto 'Curso Avanzado de Programación', con Object" do
      expect(@educacion_formal_recursos1).to be_a(Object)
    end
    it "Comprobación de la herencia con la clase Object, del objeto 'Historia a través de Juegos', con Object" do
      expect(@educacion_formal_recursos2).to be_a(Object)
    end
    it "Comprobación de la herencia con la clase Object, del objeto 'Explorando la Ciencia con Experimentos', con Object" do
      expect(@educacion_formal_recursos3).to be_a(Object)
    end
    it "Comprobación de la herencia con la clase BasicObject, del objeto 'Curso Avanzado de Programación', con BasicObject" do
      expect(@educacion_formal_recursos1).to be_a(BasicObject)
    end
    it "Comprobación de la herencia con la clase BasicObject, del objeto 'Historia a través de Juegos', con BasicObject" do
      expect(@educacion_formal_recursos2).to be_a(BasicObject)
    end
    it "Comprobación de la herencia con la clase BasicObject, del objeto 'Explorando la Ciencia con Experimentos', con BasicObject" do
      expect(@educacion_formal_recursos3).to be_a(BasicObject)
    end
  end

  describe "# Pruebas sobre el polimorfismo" do
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Curso Avanzado de Programación', sobre el método codigo" do
      expect(@educacion_formal_recursos1).to respond_to(:codigo)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Curso Avanzado de Programación', sobre el método nombre" do
      expect(@educacion_formal_recursos1).to respond_to(:nombre)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Curso Avanzado de Programación', sobre el método categoria" do
      expect(@educacion_formal_recursos1).to respond_to(:categoria)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Curso Avanzado de Programación', sobre el método recursos" do
      expect(@educacion_formal_recursos1).to respond_to(:recursos)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Curso Avanzado de Programación', sobre el método num_niveles" do
      expect(@educacion_formal_recursos1).to respond_to(:num_niveles)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Curso Avanzado de Programación' sobre el método to_s" do
      expect(@educacion_formal_recursos1).to respond_to(:to_s)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Historia a través de Juegos', sobre el método codigo" do
      expect(@educacion_formal_recursos2).to respond_to(:codigo)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Historia a través de Juegos', sobre el método nombre" do
      expect(@educacion_formal_recursos2).to respond_to(:nombre)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Historia a través de Juegos', sobre el método categoria" do
      expect(@educacion_formal_recursos2).to respond_to(:categoria)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Historia a través de Juegos', sobre el método recursos" do
      expect(@educacion_formal_recursos2).to respond_to(:recursos)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Historia a través de Juegos', sobre el método num_niveles" do
      expect(@educacion_formal_recursos2).to respond_to(:num_niveles)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Historia a través de Juegos' sobre el método to_s" do
      expect(@educacion_formal_recursos2).to respond_to(:to_s)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Explorando la Ciencia con Experimentos', sobre el método codigo" do
      expect(@educacion_formal_recursos3).to respond_to(:codigo)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Explorando la Ciencia con Experimentos', sobre el método nombre" do
      expect(@educacion_formal_recursos3).to respond_to(:nombre)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Explorando la Ciencia con Experimentos', sobre el método categoria" do
      expect(@educacion_formal_recursos3).to respond_to(:categoria)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Explorando la Ciencia con Experimentos', sobre el método recursos" do
      expect(@educacion_formal_recursos3).to respond_to(:recursos)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Explorando la Ciencia con Experimentos', sobre el método num_niveles" do
      expect(@educacion_formal_recursos3).to respond_to(:num_niveles)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Explorando la Ciencia con Experimentos' sobre el método to_s" do
      expect(@educacion_formal_recursos3).to respond_to(:to_s)
    end
  end
  
end