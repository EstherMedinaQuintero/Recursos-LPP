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
    # Entorno Digital 'Informática Avanzada'
    @entorno_digital1 = RecursosEducativos::EntornoDigital.new(40350000, "Informática Avanzada", :curso, [@actividad1, @actividad2, @actividad3, @actividad4, @actividad5, @actividad6, @actividad7])
    # Entorno Digital 'Unidades Didacticas 1'
    @entorno_digital2 = RecursosEducativos::EntornoDigital.new(40350001, "Unidades Didácticas 1", :unidad_didactica, [@actividad1, @actividad2])
    # Entorno Digital 'Primeras Lecciones'
    @entorno_digital3 = RecursosEducativos::EntornoDigital.new(40350002, "Primeras Lecciones", :leccion, [@actividad5, @actividad6])
    # Entorno Digital 'Talleres Data & Criptography'
    @entorno_digital4 = RecursosEducativos::EntornoDigital.new(40350003, "Talleres Data & Criptography", :taller, [@actividad3, @actividad4])
  end

  describe "# Pruebas sobre la instanciación de un objeto de la clase EntornoDigital" do
    it "Instanción del entorno digital 'Informática Avanzada'" do
      expect(@entorno_digital1).not_to be(nil)
    end
    it "Instanción del entorno digital 'Unidades Didacticas 1'" do
      expect(@entorno_digital2).not_to be(nil)
    end
    it "Instanción del entorno digital 'Primeras Lecciones'" do
      expect(@entorno_digital3).not_to be(nil)
    end
    it "Instanción del entorno digital 'Talleres Data & Criptography'" do
      expect(@entorno_digital4).not_to be(nil)
    end
  end

  describe "# Pruebas sobre los getters de la clase EntornoDigital" do
    it "Comprobación del getter codigo" do
      expect(@entorno_digital1.codigo).to eq (40350000)
    end
    it "Comprobación del getter nombre" do
      expect(@entorno_digital2.nombre).to eq ("Unidades Didácticas 1")
    end
    it "Comprobación del getter categoria" do 
      expect(@entorno_digital3.categoria).to eq (:leccion)
    end
    it "Comprobación del getter recursos" do
      expect(@entorno_digital4.recursos).to eq ([@actividad3, @actividad4])
    end
  end

  describe "# Pruebas sobre el método to_s de la clase EntornoDigital" do
    it "Comprobación del método to_s con el objeto 'Informática Avanzada'" do
      expect(@entorno_digital1.to_s).to eq ("RecursosEducativos::EntornoDigital, Identificador: 40350000\nNombre: Informática Avanzada\nCategoría: curso\nRecursos: [Write your first computer program, Introduction to Logic and Algorithms, Advanced Data Structures Workshop, Cryptography and Network Security Seminar, Pattern Recognition with Cards, Logical Puzzles for Kids, Unplugged Coding Activities]")
    end
    it "Comprobación del método to_s con el objeto 'Unidades Didacticas 1'" do
      expect(@entorno_digital2.to_s).to eq ("RecursosEducativos::EntornoDigital, Identificador: 40350001\nNombre: Unidades Didácticas 1\nCategoría: unidad_didactica\nRecursos: [Write your first computer program, Introduction to Logic and Algorithms]")
    end
    it "Comprobación del método to_s con el objeto 'Primeras Lecciones'" do
      expect(@entorno_digital3.to_s).to eq ("RecursosEducativos::EntornoDigital, Identificador: 40350002\nNombre: Primeras Lecciones\nCategoría: leccion\nRecursos: [Pattern Recognition with Cards, Logical Puzzles for Kids]")
    end
    it "Comprobación del método to_s con el objeto 'Talleres Data & Criptography'" do
      expect(@entorno_digital4.to_s).to eq ("RecursosEducativos::EntornoDigital, Identificador: 40350003\nNombre: Talleres Data & Criptography\nCategoría: taller\nRecursos: [Advanced Data Structures Workshop, Cryptography and Network Security Seminar]")
    end
  end

  describe "Comprobación de la herencia de la clase EntornoDigital" do
    it "Prueba del tipo de instancia de los objetos EntornoDigital con el objeto 'Informática Avanzada'" do
      expect(@entorno_digital1).to be_instance_of(RecursosEducativos::EntornoDigital)
    end
    it "Prueba del tipo de instancia de los objetos EntornoDigital con el objeto 'Unidades Didacticas 1'" do
      expect(@entorno_digital2).to be_instance_of(RecursosEducativos::EntornoDigital)
    end
    it "Prueba del tipo de instancia de los objetos EntornoDigital con el objeto 'Primeras Lecciones'" do
      expect(@entorno_digital3).to be_instance_of(RecursosEducativos::EntornoDigital)
    end
    it "Prueba del tipo de instancia de los objetos EntornoDigital con el objeto 'Talleres Data & Criptography'" do
      expect(@entorno_digital4).to be_instance_of(RecursosEducativos::EntornoDigital)
    end
    it "Prueba is_a? de los objetos EntornoDigital para la clase EntornoDigital" do
      expect(@entorno_digital1).to be_a(RecursosEducativos::EntornoDigital)
    end
    it "Prueba is_a? de los objetos EntornoDigital para la clase Object" do
      expect(@entorno_digital1).to be_a(Object)
    end
    it "Prueba is_a? de los objetos EntornoDigital para la clase BasicObject" do
      expect(@entorno_digital1).to be_a(BasicObject)
    end
  end

  describe "Comprobación del método de instancia num_objetos_aprendizaje" do
    it "Comprobación del método num_objetos_aprendizaje con el objeto 'Informática Avanzada'" do
      expect(@entorno_digital1.num_objetos_aprendizaje).to eq(7)
    end
    it "Comprobación del método num_objetos_aprendizaje con el objeto 'Unidades Didacticas 1'" do
      expect(@entorno_digital2.num_objetos_aprendizaje).to eq(2)
    end
    it "Comprobación del método num_objetos_aprendizaje con el objeto 'Primeras Lecciones'" do
      expect(@entorno_digital3.num_objetos_aprendizaje).to eq(2)
    end
    it "Comprobación del método num_objetos_aprendizaje con el objeto 'Talleres Data & Criptography'" do
      expect(@entorno_digital4.num_objetos_aprendizaje).to eq(2)
    end
  end

  describe "Comprobación del método de instancia nivel_medio" do
    it "Comprobación del método nivel_medio con el objeto 'Informática Avanzada'" do
      expect(@entorno_digital1.nivel_medio).to eq(RecursosEducativos::NVL_I)
    end
    it "Comprobación del método nivel_medio con el objeto 'Unidades Didacticas 1'" do
      expect(@entorno_digital2.nivel_medio).to eq(RecursosEducativos::NVL_P)
    end
    it "Comprobación del método nivel_medio con el objeto 'Primeras Lecciones'" do
      expect(@entorno_digital3.nivel_medio).to eq(RecursosEducativos::NVL_P)
    end
    it "Comprobación del método nivel_medio con el objeto 'Talleres Data & Criptography'" do
      expect(@entorno_digital4.nivel_medio).to eq(RecursosEducativos::NVL_A)
    end
  end

  describe "Pruebas sobre el polimorfismo de la clase Entorno Digital" do
    it "Prueba con un objeto de la clase EntornoDigital, responde a codigo" do
      expect(@entorno_digital1).to respond_to(:codigo)
    end
    it "Prueba con un objeto de la clase EntornoDigital, responde a nombre" do
      expect(@entorno_digital2).to respond_to(:nombre)
    end
    it "Prueba con un objeto de la clase EntornoDigital, responde a categoria" do
      expect(@entorno_digital3).to respond_to(:categoria)
    end
    it "Prueba con un objeto de la clase EntornoDigital, responde a recursos" do
      expect(@entorno_digital4).to respond_to(:recursos)
    end
    it "Prueba con un objeto de la clase EntornoDigital, responde a to_s" do
      expect(@entorno_digital1).to respond_to(:to_s)
    end
    it "Prueba con un objeto de la clase EntornoDigital, responde a num_objetos_aprendizaje" do
      expect(@entorno_digital2).to respond_to(:num_objetos_aprendizaje)
    end
    it "Prueba con un objeto de la clase EntornoDigital, responde a nivel_medio" do
      expect(@entorno_digital3).to respond_to(:nivel_medio)
    end
  end

end
