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
    # Instancia de educacion informal "Programación Creativa para Niños"
    @educacion_informal1 = RecursosEducativos::EducacionInformal.new(
      40350001,
      "Programación Creativa para Niños",
      :taller,
      [@actividad5, @actividad6, @actividad7],
      79.99
    )
    # Instancia de educación informal "Explorando Ciencia de Datos"
    @educacion_informal2 = RecursosEducativos::EducacionInformal.new(
      40350002,
      "Explorando Ciencia de Datos",
      :curso,
      [@actividad2, @actividad3, @actividad8],
      120.00
    )
    # Instancia de educación informal "Introducción a la Robótica"
    @educacion_informal3 = RecursosEducativos::EducacionInformal.new(
      40350003,
      "Introducción a la Robótica",
      :curso,
      [@actividad1, @actividad4, @actividad6],
      199.95
    )
  end

  describe "# Pruebas sobre la instanciacion de una clase de EducacionInformal" do
    it "Prueba de la colección de la educación informal 'Programación Creativa para Niños'" do
      expect(@educacion_informal1).to be_instance_of(RecursosEducativos::EducacionInformal)
    end
    it "Prueba de la colección de la educación informal 'Explorando Ciencia de Datos'" do
      expect(@educacion_informal2).to be_instance_of(RecursosEducativos::EducacionInformal)
    end
    it "Prueba de la colección de la educación informal 'Introducción a la Robótica'" do
      expect(@educacion_informal3).to be_instance_of(RecursosEducativos::EducacionInformal)
    end
  end

  describe "# Pruebas sobre los getters de la clase EducacionInformal" do
    it "Prueba del getter de codigo" do
      expect(@educacion_informal1.codigo).to eq(40350001)
    end
    it "Prueba del getter de nombre" do
      expect(@educacion_informal1.nombre).to eq("Programación Creativa para Niños")
    end
    it "Prueba del getter de categoria" do
      expect(@educacion_informal1.categoria).to eq(:taller)
    end
    it "Prueba del getter de recursos" do
      expect(@educacion_informal1.recursos).to eq([@actividad5, @actividad6, @actividad7])
    end
    it "Prueba del getter de precio" do
      expect(@educacion_informal1.precio).to eq(79.99)
    end
  end

  describe "# Pruebas sobre el método to_s de la clase EducacionInformal" do
    it "Prueba de la colección de la educación informal 'Programación Creatica para Niños'" do
      expect(@educacion_informal1.to_s).to eq("RecursosEducativos::EducacionInformal, Identificador: 40350001\nNombre: Programación Creativa para Niños\nCategoría: taller\nRecursos: [Pattern Recognition with Cards, Logical Puzzles for Kids, Unplugged Coding Activities]\nPrecio: 79.99")
    end
    it "Prueba de la colección de la educación informal 'Explorando Ciencia de Datos'" do
      expect(@educacion_informal2.to_s).to eq("RecursosEducativos::EducacionInformal, Identificador: 40350002\nNombre: Explorando Ciencia de Datos\nCategoría: curso\nRecursos: [Introduction to Logic and Algorithms, Advanced Data Structures Workshop, Introduction to Abstraction]\nPrecio: 120.0")
    end
    it "Prueba de la colección de la educación informal 'Introducción a la Robótica'" do
      expect(@educacion_informal3.to_s).to eq("RecursosEducativos::EducacionInformal, Identificador: 40350003\nNombre: Introducción a la Robótica\nCategoría: curso\nRecursos: [Write your first computer program, Cryptography and Network Security Seminar, Logical Puzzles for Kids]\nPrecio: 199.95")
    end
  end

  describe "# Pruebas sobre la herencia de las instancias de la clase EducacionInformal" do
    it "Prueba de la herencia de la colección de la educación informal 'Programación Creativa para Niños'" do
      expect(@educacion_informal1).to be_instance_of(RecursosEducativos::EducacionInformal)
    end
    it "Prueba de la herencia de la colección de la educación informal 'Explorando Ciencia de Datos'" do
      expect(@educacion_informal2).to be_instance_of(RecursosEducativos::EducacionInformal)
    end
    it "Prueba de la herencia de la colección de la educación informal 'Introducción a la Robótica'" do
      expect(@educacion_informal3).to be_instance_of(RecursosEducativos::EducacionInformal)
    end
    it "Prueba de la herencia de la colección de la educación informal 'Programación Creativa para Niños', con EducacionInformal" do
      expect(@educacion_informal1).to be_kind_of(RecursosEducativos::EducacionInformal)
    end
    it "Prueba de la herencia de la colección de la educación informal 'Explorando Ciencia de Datos', con EducacionInformal" do
      expect(@educacion_informal2).to be_kind_of(RecursosEducativos::EducacionInformal)
    end
    it "Prueba de la herencia de la colección de la educación informal 'Introducción a la Robótica', con EducacionInformal" do
      expect(@educacion_informal3).to be_kind_of(RecursosEducativos::EducacionInformal)
    end
    it "Prueba de la herencia de la colección de la educación informal 'Programación Creativa para Niños', con EntornoDigital" do
      expect(@educacion_informal1).to be_kind_of(RecursosEducativos::EntornoDigital)
    end
    it "Prueba de la herencia de la colección de la educación informal 'Explorando Ciencia de Datos', con EntornoDigital" do
      expect(@educacion_informal2).to be_kind_of(RecursosEducativos::EntornoDigital)
    end
    it "Prueba de la herencia de la colección de la educación informal 'Introducción a la Robótica', con EntornoDigital" do
      expect(@educacion_informal3).to be_kind_of(RecursosEducativos::EntornoDigital)
    end
    it "Prueba de la herencia de la colección de la educación informal 'Programación Creativa para Niños', con Object" do
      expect(@educacion_informal1).to be_kind_of(Object)
    end
    it "Prueba de la herencia de la colección de la educación informal 'Explorando Ciencia de Datos', con Object" do
      expect(@educacion_informal2).to be_kind_of(Object)
    end
    it "Prueba de la herencia de la colección de la educación informal 'Introducción a la Robótica', con Object" do
      expect(@educacion_informal3).to be_kind_of(Object)
    end
    it "Prueba de la herencia de la colección de la educación informal 'Programación Creativa para Niños', con BasicObject" do
      expect(@educacion_informal1).to be_kind_of(BasicObject)
    end
    it "Prueba de la herencia de la colección de la educación informal 'Explorando Ciencia de Datos', con BasicObject" do
      expect(@educacion_informal2).to be_kind_of(BasicObject)
    end
    it "Prueba de la herencia de la colección de la educación informal 'Introducción a la Robótica', con BasicObject" do
      expect(@educacion_informal3).to be_kind_of(BasicObject)
    end
  end

  describe "# Pruebas sobre el polimorfismo" do
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Programación Creativa para Niños', responde con codigo" do
      expect(@educacion_informal1).to respond_to(:codigo)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Programación Creativa para Niños', responde con nombre" do
      expect(@educacion_informal1).to respond_to(:nombre)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Programación Creativa para Niños', responde con categoria" do
      expect(@educacion_informal1).to respond_to(:categoria)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Programación Creativa para Niños', responde con recursos" do
      expect(@educacion_informal1).to respond_to(:recursos)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Programación Creativa para Niños', responde con precio" do
      expect(@educacion_informal1).to respond_to(:precio)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Programación Creativa para Niños', responde con to_s" do
      expect(@educacion_informal1).to respond_to(:to_s)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Explorando Ciencia de Datos', responde con codigo" do
      expect(@educacion_informal2).to respond_to(:codigo)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Explorando Ciencia de Datos', responde con nombre" do
      expect(@educacion_informal2).to respond_to(:nombre)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Explorando Ciencia de Datos', responde con categoria" do
      expect(@educacion_informal2).to respond_to(:categoria)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Explorando Ciencia de Datos', responde con recursos" do
      expect(@educacion_informal2).to respond_to(:recursos)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Explorando Ciencia de Datos', responde con precio" do
      expect(@educacion_informal2).to respond_to(:precio)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Explorando Ciencia de Datos', responde con to_s" do
      expect(@educacion_informal2).to respond_to(:to_s)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Introducción a la Robótica', responde con codigo" do
      expect(@educacion_informal3).to respond_to(:codigo)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Introducción a la Robótica', responde con nombre" do
      expect(@educacion_informal3).to respond_to(:nombre)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Introducción a la Robótica', responde con categoria" do
      expect(@educacion_informal3).to respond_to(:categoria)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Introducción a la Robótica', responde con recursos" do
      expect(@educacion_informal3).to respond_to(:recursos)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Introducción a la Robótica', responde con precio" do
      expect(@educacion_informal3).to respond_to(:precio)
    end
    it "Pruebas sobre el polimorfismo de la colección de la educación informal 'Introducción a la Robótica', responde con to_s" do
      expect(@educacion_informal3).to respond_to(:to_s)
    end
  end

end