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
      2023
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
      2005
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
      2017
    )
    # Coleccion de recursos 'Informática Avanzada'
    @entorno_digital1 = RecursosEducativos::EntornoDigital.new(40350000, "Informática Avanzada", :curso, [@actividad1, @actividad2, @actividad3, @actividad4, @actividad5, @actividad6, @actividad7])
    # Coleccion de recursos 'Unidades Didacticas 1'
    @entorno_digital2 = RecursosEducativos::EntornoDigital.new(40350001, "Unidades Didácticas 1", :unidad_didactica, [@actividad1, @actividad2])
    # Coleccion de recursos 'Primeras Lecciones'
    @entorno_digital3 = RecursosEducativos::EntornoDigital.new(40350002, "Primeras Lecciones", :leccion, [@actividad5, @actividad6])
    # Coleccion de recursos 'Talleres Data & Criptography'
    @entorno_digital4 = RecursosEducativos::EntornoDigital.new(40350003, "Talleres Data & Criptography", :taller, [@actividad3, @actividad4])
     # Instancia de educación formal "Curso Avanzado de Programación"
    @educacion_formal1 = RecursosEducativos::EducacionFormal.new(
      50360001,
      "Curso Avanzado de Programación",
      :curso,
      [@actividad1, @actividad2, @actividad3],
      5
    )
    # Instancia de educación formal "Historia a través de Juegos"
    @educacion_formal2 = RecursosEducativos::EducacionFormal.new(
      50360002,
      "Historia a través de Juegos",
      :curso,
      [@actividad4, @actividad5, @actividad6],
      4
    )
    # Instancia de educación formal "Explorando la Ciencia con Experimentos"
    @educacion_formal3 = RecursosEducativos::EducacionFormal.new(
      50360003,
      "Explorando la Ciencia con Experimentos",
      :curso,
      [@actividad7, @actividad8, @recurso_digital1],
      6
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

  describe "# Pruebas sobre la versión de la gema." do
    it "Cuenta la gema con una versión" do
      expect(RecursosEducativos::VERSION).not_to be nil
    end
  end

  describe "# Pruebas sobre las constantes definidas" do
    it "Comprobación de la constante NVL_P" do
      expect(RecursosEducativos::NVL_P).to eq(:beginner)
    end
    it "Comprobación de la constante NVL_I" do
      expect(RecursosEducativos::NVL_I).to eq(:intermediate)
    end
    it "Comprobación de la constante NVL_A" do
      expect(RecursosEducativos::NVL_A).to eq(:advanced)
    end
    it "Comprobación de la constante NVL_E" do
      expect(RecursosEducativos::NVL_E).to eq(:expert)
    end
  end 

  describe "# Pruebas sobre la instanciación de un objeto de la clase Actividad" do
    it "Instanción de la actividad 'Write your first computer program'" do
      expect(@actividad1).not_to be(nil)
    end
    it "Instanción de la actividad 'Introduction to Logic and Algorithms'" do
      expect(@actividad2).not_to be(nil)
    end
    it "Instanción de la actividad 'Advanced Data Structures Workshop'" do
      expect(@actividad3).not_to be(nil)
    end
    it "Instanción de la actividad 'Cryptography and Network Security Seminar'" do
      expect(@actividad4).not_to be(nil)
    end
    it "Instanción de la actividad 'Pattern Recognition with Cards'" do
      expect(@actividad5).not_to be(nil)
    end
    it "Instanción de la actividad 'Logical Puzzles for Kids'" do
      expect(@actividad6).not_to be(nil)
    end
    it "Instanción de la actividad 'Unplugged Coding Activities'" do
      expect(@actividad7).not_to be(nil)
    end
    it "Instanción de la actividad 'Introduction to Abstraction'" do
      expect(@actividad8).not_to be(nil)
    end
  end

  describe "# Pruebas sobre los getters de la clase Actividad" do
    it "Comprobación del getter id" do
      expect(@actividad1.id).to eq(202300001)
    end
    it "Comprobación del getter marca" do
      expect(@actividad2.marca).to eq("Tech Academy")
    end
    it "Comprobación del getter titulo" do
      expect(@actividad3.titulo).to eq("Advanced Data Structures Workshop")
    end
    it "Comprobación del getter descripcion" do
      expect(@actividad4.descripcion).to eq("An expert-level seminar on cryptography and network security. Recommended for expert users who want to explore advanced encryption techniques and network security protocols.")
    end
    it "Comprobación del getter nivel_experencia" do
      expect(@actividad5.nivel_experencia).to eq(RecursosEducativos::NVL_P)
    end
    it "Comprobación del getter tipo" do
      expect(@actividad6.tipo).to eq("Puzzle Book")
    end
    it "Comprobación del getter categoria" do
      expect(@actividad7.categoria).to eq(:unplugged)
    end
    it "Comprobación del getter material_necesario" do
      expect(@actividad8.material_necesario).to eq("Computer with internet access")
    end
    it "Comprobación del getter temporalizacion" do
      expect(@actividad1.temporalizacion).to eq(60)
    end
    it "Comprobación del getter conceptos" do
      expect(@actividad2.conceptos).to eq([:razonamiento_logico, :algoritmos])
    end
  end

  describe "# Pruebas sobre el método to_s de la clase Actividad" do
    it "Prueba del método to_s de la actividad 'Write your first computer program'" do
      expect(@actividad1.to_s).to eq("RecursosEducativos::Actividad, Identificador: 202300001\nMarca: Code.org\nTítulo: Learn the basic concepts of Computer Science with drag and drop programming. This is a game-like, self-directed tutorial starring video lectures by Bill Gates, Mark Zuckerberg, Angry Birds and Plants vs. Zombies. Learn repeat-loops, conditionals, and basic algorithms. Available in 37 languages.\nNivel de experiencia: beginner\nTipo de actividad: Self-led tutorial\nCategoría: plugged\nMaterial necesario: Smartphone or tablet\nTemporalización: 60 minutos\nConceptos: algoritmos codificacion ")
    end 
    it "Prueba del método to_s de la actividad 'Introduction to Logic and Algorithms'" do
      expect(@actividad2.to_s).to eq("RecursosEducativos::Actividad, Identificador: 202300002\nMarca: Tech Academy\nTítulo: A comprehensive course introducing logic and algorithms. Suitable for intermediate users who want to enhance their problem-solving skills and understanding of algorithms.\nNivel de experiencia: intermediate\nTipo de actividad: Online Course\nCategoría: plugged\nMaterial necesario: Computer with internet access\nTemporalización: 90 minutos\nConceptos: razonamiento_logico algoritmos ")
    end
    it "Prueba del método to_s de la actividad 'Advanced Data Structures Workshop'" do
      expect(@actividad3.to_s).to eq("RecursosEducativos::Actividad, Identificador: 202300003\nMarca: Coding Institute\nTítulo: An advanced workshop on data structures, suitable for advanced users who want to dive deep into data organization and advanced algorithms.\nNivel de experiencia: advanced\nTipo de actividad: Workshop\nCategoría: plugged\nMaterial necesario: Laptop with development environment\nTemporalización: 120 minutos\nConceptos: descomposición patrones ")
    end
    it "Prueba del método to_s de la actividad 'Cryptography and Network Security Seminar'" do
      expect(@actividad4.to_s).to eq("RecursosEducativos::Actividad, Identificador: 202300004\nMarca: Security Institute\nTítulo: An expert-level seminar on cryptography and network security. Recommended for expert users who want to explore advanced encryption techniques and network security protocols.\nNivel de experiencia: expert\nTipo de actividad: Seminar\nCategoría: plugged\nMaterial necesario: Secure computer and network access\nTemporalización: 150 minutos\nConceptos: algoritmos validacion ")
    end
    it "Prueba del método to_s de la actividad 'Pattern Recognition with Cards'" do
      expect(@actividad5.to_s).to eq("RecursosEducativos::Actividad, Identificador: 202300005\nMarca: Kids Learning Co.\nTítulo: An interactive card game designed for kids to learn pattern recognition and problem-solving. Ideal for children with no prior experience in computational thinking.\nNivel de experiencia: beginner\nTipo de actividad: Card Game\nCategoría: unplugged\nMaterial necesario: Card deck and instruction booklet\nTemporalización: 45 minutos\nConceptos: patrones ")
    end
    it "Prueba del método to_s de la actividad 'Logical Puzzles for Kids'" do
      expect(@actividad6.to_s).to eq("RecursosEducativos::Actividad, Identificador: 202300006\nMarca: Educational Games Inc.\nTítulo: A collection of logic puzzles and brain teasers designed specifically for kids. These puzzles help children develop logical thinking skills and problem-solving abilities.\nNivel de experiencia: beginner\nTipo de actividad: Puzzle Book\nCategoría: unplugged\nMaterial necesario: Puzzle book and pencil\nTemporalización: 30 minutos\nConceptos: razonamiento_logico ")
    end
    it "Prueba del método to_s de la actividad 'Unplugged Coding Activities'" do
      expect(@actividad7.to_s).to eq("RecursosEducativos::Actividad, Identificador: 202300007\nMarca: Young Coders Club\nTítulo: Engaging unplugged coding activities for kids to learn the basics of coding without a computer. Suitable for children who are new to programming.\nNivel de experiencia: beginner\nTipo de actividad: Hands-on Activities\nCategoría: unplugged\nMaterial necesario: Coding cards and activity sheets\nTemporalización: 60 minutos\nConceptos: algoritmos codificacion ")
    end
    it "Prueba del método to_s de la actividad 'Introduction to Abstraction'" do
      expect(@actividad8.to_s).to eq("RecursosEducativos::Actividad, Identificador: 202300008\nMarca: Learn with Abstraction\nTítulo: An introductory course that focuses on the concept of abstraction in problem-solving and computer science. Suitable for intermediate users who want to understand the importance of abstraction.\nNivel de experiencia: intermediate\nTipo de actividad: Online Course\nCategoría: plugged\nMaterial necesario: Computer with internet access\nTemporalización: 75 minutos\nConceptos: abstraccion razonamiento_logico ")
    end
  end

  describe "# Pruebas a la funcion duracion_estimada" do
    it "Prueba con la actividad 'Write your first computer program'" do
      expect(RecursosEducativos::duracion_estimada(@actividad1)).to eq(60)
    end
    it "Prueba con la actividad 'Introduction to Logic and Algorithms'" do
      expect(RecursosEducativos::duracion_estimada(@actividad2)).to eq(90)
    end
    it "Prueba con la actividad 'Advanced Data Structures Workshop'" do
      expect(RecursosEducativos::duracion_estimada(@actividad3)).to eq(120)
    end
    it "Prueba con la actividad 'Cryptography and Network Security Seminar'" do
      expect(RecursosEducativos::duracion_estimada(@actividad4)).to eq(150)
    end
    it "Prueba con la actividad 'Pattern Recognition with Cards'" do
      expect(RecursosEducativos::duracion_estimada(@actividad5)).to eq(45)
    end
    it "Prueba con la actividad 'Logical Puzzles for Kids'" do
      expect(RecursosEducativos::duracion_estimada(@actividad6)).to eq(30)
    end
    it "Prueba con la actividad 'Unplugged Coding Activities'" do
      expect(RecursosEducativos::duracion_estimada(@actividad7)).to eq(60)
    end
    it "Prueba con la actividad 'Introduction to Abstraction'" do
      expect(RecursosEducativos::duracion_estimada(@actividad8)).to eq(75)
    end
    it "Prueba con el recurso digital 'Intro to JavaScript: Drawing & Animation'" do
      expect(RecursosEducativos::duracion_estimada(@recurso_digital1)).to eq(90)
    end
    it "Prueba con el recurso digital 'Machine Learning'" do
      expect(RecursosEducativos::duracion_estimada(@recurso_digital2)).to eq(180)
    end
    it "Prueba con el recurso digital 'Creative Computing'" do
      expect(RecursosEducativos::duracion_estimada(@recurso_digital3)).to eq(120)
    end
  end

  describe "# Pruebas acerca de la herencia de la clase Actividad" do
    it "Prueba del tipo de instancia de la actividad 'Write your first computer program'" do
      expect(@actividad1).to be_instance_of(RecursosEducativos::Actividad)
    end
    it "Prueba del tipo de instancia de la actividad 'Introduction to Logic and Algorithms'" do
      expect(@actividad2).to be_instance_of(RecursosEducativos::Actividad)
    end
    it "Prueba del tipo de instancia de la actividad 'Advanced Data Structures Workshop'" do
      expect(@actividad3).to be_instance_of(RecursosEducativos::Actividad)
    end
    it "Prueba del tipo de instancia de la actividad 'Cryptography and Network Security Seminar'" do
      expect(@actividad4).to be_instance_of(RecursosEducativos::Actividad)
    end
    it "Prueba del tipo de instancia de la actividad 'Pattern Recognition with Cards'" do
      expect(@actividad5).to be_instance_of(RecursosEducativos::Actividad)
    end
    it "Prueba del tipo de instancia de la actividad 'Logical Puzzles for Kids'" do
      expect(@actividad6).to be_instance_of(RecursosEducativos::Actividad)
    end
    it "Prueba del tipo de instancia de la actividad 'Unplugged Coding Activities'" do
      expect(@actividad7).to be_instance_of(RecursosEducativos::Actividad)
    end
    it "Prueba del tipo de instancia de la actividad 'Introduction to Abstraction'" do
      expect(@actividad8).to be_instance_of(RecursosEducativos::Actividad)
    end
    it "Prueba is_a? de la actividad 'Write your first computer program', con la clase Actividad" do
      expect(@actividad1).to be_a(RecursosEducativos::Actividad)
    end
    it "Prueba is_a? de la actividad 'Write your first computer program', con la clase Object" do
      expect(@actividad1).to be_a(Object)
    end
    it "Prueba is_a? de la actividad 'Write your first computer program', con la clase BasicObject" do
      expect(@actividad1).to be_a(BasicObject)
    end
    it "Prueba is_a? de la actividad 'Introduction to Logic and Algorithms', con la clase Actividad" do
      expect(@actividad2).to be_a(RecursosEducativos::Actividad)
    end
    it "Prueba is_a? de la actividad 'Introduction to Logic and Algorithms', con la clase Object" do
      expect(@actividad2).to be_a(Object)
    end
    it "Prueba is_a? de la actividad 'Introduction to Logic and Algorithms', con la clase BasicObject" do
      expect(@actividad2).to be_a(BasicObject)
    end
    it "Prueba is_a? de la actividad 'Introduction to Logic and Algorithms', con el modulo Comparable" do
      expect(@actividad2).to be_a(Comparable)
    end
    it "Prueba is_a? de la actividad 'Introduction to Logic and Algorithms', con el modulo Enumerable" do
      expect(@actividad2).to be_a(Enumerable)
    end
  end

  describe "# Pruebas sobre el método de clase count" do
    it "Prueba del método de clase count" do
      # expect(RecursosEducativos::Actividad.count).to eq(8)
    end
  end

  describe "# Pruebas sobre la comparación de objetos de la clase actividad" do
    it "Prueba del operador ==" do
      expect(@actividad1 == @actividad2).to eq(false)
    end
    it "Prueba del operador <" do
      expect(@actividad1 < @actividad2).to eq(true)
    end
    it "Prueba del operador >" do
      expect(@actividad1 > @actividad2).to eq(false)
    end
    it "Prueba del operador <=" do
      expect(@actividad1 <= @actividad2).to eq(true)
    end
    it "Prueba del operador >=" do
      expect(@actividad1 >= @actividad2).to eq(false)
    end
    it "Prueba del operador between?" do
      expect(@actividad2.between?(@actividad1, @actividad3)).to eq(true)
    end
  end

  describe "# Pruebas sobre el polimorfismo de la clase Actividad" do
    it "Prueba con un objeto de la clase Actividad, responde a id" do
      expect(@actividad1).to respond_to(:id)
    end
    it "Prueba con un objeto de la clase Actividad, responde a marca" do
      expect(@actividad2).to respond_to(:marca)
    end
    it "Prueba con un objeto de la clase Actividad, responde a titulo" do
      expect(@actividad3).to respond_to(:titulo)
    end
    it "Prueba con un objeto de la clase Actividad, responde a descripcion" do
      expect(@actividad4).to respond_to(:descripcion)
    end
    it "Prueba con un objeto de la clase Actividad, responde a nivel_experencia" do
      expect(@actividad5).to respond_to(:nivel_experencia)
    end
    it "Prueba con un objeto de la clase Actividad, responde a tipo" do
      expect(@actividad6).to respond_to(:tipo)
    end
    it "Prueba con un objeto de la clase Actividad, responde a categoria" do
      expect(@actividad7).to respond_to(:categoria)
    end
    it "Prueba con un objeto de la clase Actividad, responde a material_necesario" do
      expect(@actividad8).to respond_to(:material_necesario)
    end
    it "Prueba con un objeto de la clase Actividad, responde a temporalizacion" do
      expect(@actividad1).to respond_to(:temporalizacion)
    end
    it "Prueba con un objeto de la clase Actividad, responde a conceptos" do
      expect(@actividad2).to respond_to(:conceptos)
    end
    it "Prueba con un objeto de la clase Actividad, responde a to_s" do
      expect(@actividad3).to respond_to(:to_s)
    end
    it "Prueba con un objeto de la clase Actividad, responde a <=>(other)" do
      expect(@actividad4).to respond_to(:<=>)
    end
    it "Prueba con un objeto de la clase Actividad, responde a ==(other)" do
      expect(@actividad5).to respond_to(:==)
    end
  end 

  describe "# Pruebas sobre la enumeracion de objetos de la clase actividad" do
    it "Prueba del método max, con el objeto 'Write your first computer program'" do
      expect(@actividad1.max).to eq(60)
    end
    it "Prueba del método min, con el objeto 'Write your first computer program'" do
      expect(@actividad1.min).to eq(60)
    end
    it "Prueba del método sort, con el objeto 'Write your first computer program'" do
      expect(@actividad1.sort).to eq([60])
    end
    it "Prueba del método count, con el objeto 'Write your first computer program'" do
      expect(@actividad1.count).to eq(1)
    end
    it "Prueba del método drop, con el objeto 'Write your first computer program'" do
      expect(@actividad1.drop(1)).to eq([])
    end
    it "Prueba del método max, con el objeto 'Introduction to Logic and Algorithms'" do
      expect(@actividad2.max).to eq(90)
    end
    it "Prueba del método min, con el objeto 'Introduction to Logic and Algorithms'" do
      expect(@actividad2.min).to eq(90)
    end
    it "Prueba del método sort, con el objeto 'Introduction to Logic and Algorithms'" do
      expect(@actividad2.sort).to eq([90])
    end
    it "Prueba del método count, con el objeto 'Introduction to Logic and Algorithms'" do
      expect(@actividad2.count).to eq(1)
    end
    it "Prueba del método drop, con el objeto 'Introduction to Logic and Algorithms'" do
      expect(@actividad2.drop(1)).to eq([])
    end
    it "Prueba del método max, con el objeto 'Advanced Data Structures Workshop'" do
      expect(@actividad3.max).to eq(120)
    end
    it "Prueba del método min, con el objeto 'Advanced Data Structures Workshop'" do
      expect(@actividad3.min).to eq(120)
    end
    it "Prueba del método sort, con el objeto 'Advanced Data Structures Workshop'" do
      expect(@actividad3.sort).to eq([120])
    end
    it "Prueba del método count, con el objeto 'Advanced Data Structures Workshop'" do
      expect(@actividad3.count).to eq(1)
    end
    it "Prueba del método drop, con el objeto 'Advanced Data Structures Workshop'" do
      expect(@actividad3.drop(1)).to eq([])
    end
    it "Prueba del método max, con el objeto 'Cryptography and Network Security Seminar'" do
      expect(@actividad4.max).to eq(150)
    end
    it "Prueba del método min, con el objeto 'Cryptography and Network Security Seminar'" do
      expect(@actividad4.min).to eq(150)
    end
    it "Prueba del método sort, con el objeto 'Cryptography and Network Security Seminar'" do
      expect(@actividad4.sort).to eq([150])
    end
    it "Prueba del método count, con el objeto 'Cryptography and Network Security Seminar'" do
      expect(@actividad4.count).to eq(1)
    end
    it "Prueba del método drop, con el objeto 'Cryptography and Network Security Seminar'" do
      expect(@actividad4.drop(1)).to eq([])
    end
    it "Prueba del método max, con el objeto 'Pattern Recognition with Cards'" do
      expect(@actividad5.max).to eq(45)
    end
    it "Prueba del método min, con el objeto 'Pattern Recognition with Cards'" do
      expect(@actividad5.min).to eq(45)
    end
    it "Prueba del método sort, con el objeto 'Pattern Recognition with Cards'" do
      expect(@actividad5.sort).to eq([45])
    end
    it "Prueba del método count, con el objeto 'Pattern Recognition with Cards'" do
      expect(@actividad5.count).to eq(1)
    end
    it "Prueba del método drop, con el objeto 'Pattern Recognition with Cards'" do
      expect(@actividad5.drop(1)).to eq([])
    end
    it "Prueba del método max, con el objeto 'Logical Puzzles for Kids'" do
      expect(@actividad6.max).to eq(30)
    end
    it "Prueba del método min, con el objeto 'Logical Puzzles for Kids'" do
      expect(@actividad6.min).to eq(30)
    end
    it "Prueba del método sort, con el objeto 'Logical Puzzles for Kids'" do
      expect(@actividad6.sort).to eq([30])
    end
    it "Prueba del método count, con el objeto 'Logical Puzzles for Kids'" do
      expect(@actividad6.count).to eq(1)
    end
    it "Prueba del método drop, con el objeto 'Logical Puzzles for Kids'" do
      expect(@actividad6.drop(1)).to eq([])
    end
    it "Prueba del método max, con el objeto 'Unplugged Coding Activities'" do
      expect(@actividad7.max).to eq(60)
    end
    it "Prueba del método min, con el objeto 'Unplugged Coding Activities'" do
      expect(@actividad7.min).to eq(60)
    end
    it "Prueba del método sort, con el objeto 'Unplugged Coding Activities'" do
      expect(@actividad7.sort).to eq([60])
    end
    it "Prueba del método count, con el objeto 'Unplugged Coding Activities'" do
      expect(@actividad7.count).to eq(1)
    end
    it "Prueba del método drop, con el objeto 'Unplugged Coding Activities'" do
      expect(@actividad7.drop(1)).to eq([])
    end
    it "Prueba del método max, con el objeto 'Introduction to Abstraction'" do
      expect(@actividad8.max).to eq(75)
    end
    it "Prueba del método min, con el objeto 'Introduction to Abstraction'" do
      expect(@actividad8.min).to eq(75)
    end
    it "Prueba del método sort, con el objeto 'Introduction to Abstraction'" do
      expect(@actividad8.sort).to eq([75])
    end
    it "Prueba del método count, con el objeto 'Introduction to Abstraction'" do
      expect(@actividad8.count).to eq(1)
    end
    it "Prueba del método drop, con el objeto 'Introduction to Abstraction'" do
      expect(@actividad8.drop(1)).to eq([])
    end
  end

  describe "# Pruebas sobre la función duracion_estimada_coleccion" do
    it "Prueba con el objeto de la clase EntornoDigital 'Informática Avanzada'" do
      expect(RecursosEducativos::duracion_estimada_coleccion(@entorno_digital1)).to eq(555.0)
    end
    it "Prueba con el objeto de la clase EntornoDigital 'Unidades Didácticas 1'" do
      expect(RecursosEducativos::duracion_estimada_coleccion(@entorno_digital2)).to eq(150)
    end
    it "Prueba con el objeto de la clase EntornoDigital 'Primeras Lecciones'" do
      expect(RecursosEducativos::duracion_estimada_coleccion(@entorno_digital3)).to eq(75)
    end
    it "Prueba con el objeto de la clase EducacionFormal 'Curso Avanzado de Programación'" do
      expect(RecursosEducativos::duracion_estimada_coleccion(@educacion_formal1)).to eq(270)
    end
    it "Prueba con el objeto de la clase EducacionFormal 'Historia a través de Juegos'" do
      expect(RecursosEducativos::duracion_estimada_coleccion(@educacion_formal2)).to eq(225)
    end
    it "Prueba con el objeto de la clase EducacionFormal 'Explorando la Ciencia con Experimentos'" do
      expect(RecursosEducativos::duracion_estimada_coleccion(@educacion_formal3)).to eq(225)
    end
    it "Prueba con el objeto de la clase EducacionInformal 'Programación Creativa para Niños'" do
      expect(RecursosEducativos::duracion_estimada_coleccion(@educacion_informal1)).to eq(135)
    end
    it "Prueba con el objeto de la clase EducacionInformal 'Explorando Ciencia de Datos'" do
      expect(RecursosEducativos::duracion_estimada_coleccion(@educacion_informal2)).to eq(285)
    end
    it "Prueba con el objeto de la clase EducacionInformal 'Introducción a la Robótica'" do
      expect(RecursosEducativos::duracion_estimada_coleccion(@educacion_informal3)).to eq(240)
    end
  end

  describe "# Pruebas sobre el método de clase añadir_recursos" do
    it "Pruebas sobre el método de clase añadir_recursos, con el objeto de la clase EntornoDigital 'Informática Avanzada'" do
      expect(RecursosEducativos::añadir_recursos(@entorno_digital1, [@actividad8]).recursos).to eq([@actividad1, @actividad2, @actividad3, @actividad4, @actividad5, @actividad6, @actividad7, @actividad8])
    end
    it "Pruebas sobre el método de clase añadir_recursos, con el objeto de la clase EntornoDigital 'Unidades Didácticas 1'" do
      expect(RecursosEducativos::añadir_recursos(@entorno_digital2, [@actividad3, @actividad4]).recursos).to eq([@actividad1, @actividad2, @actividad3, @actividad4])
    end
    it "Pruebas sobre el método de clase añadir_recursos, con el objeto de la clase EntornoDigital 'Primeras Lecciones'" do
      expect(RecursosEducativos::añadir_recursos(@entorno_digital3, [@actividad1, @actividad2]).recursos).to eq([@actividad5, @actividad6, @actividad1, @actividad2])
    end
    it "Pruebas sobre el método de clase añadir_recursos, con el objeto de la clase EntornoDigital 'Talleres Data & Criptography'" do
      expect(RecursosEducativos::añadir_recursos(@entorno_digital4, [@actividad5, @actividad6]).recursos).to eq([@actividad3, @actividad4, @actividad5, @actividad6])
    end
    it "Pruebas sobre el método de clase añadir_recursos, con el objeto de la clase EducacionFormal 'Curso Avanzado de Programación'" do
      expect(RecursosEducativos::añadir_recursos(@educacion_formal1, [@actividad5, @actividad6]).recursos).to eq([@actividad1, @actividad2, @actividad3, @actividad5, @actividad6])
    end
    it "Pruebas sobre el método de clase añadir_recursos, con el objeto de la clase EducacionFormal 'Historia a través de Juegos'" do
      expect(RecursosEducativos::añadir_recursos(@educacion_formal2, [@actividad1, @actividad2]).recursos).to eq([@actividad4, @actividad5, @actividad6, @actividad1, @actividad2])
    end
    it "Pruebas sobre el método de clase añadir_recursos, con el objeto de la clase EducacionFormal 'Explorando la Ciencia con Experimentos'" do
      expect(RecursosEducativos::añadir_recursos(@educacion_formal3, [@actividad3, @actividad4]).recursos).to eq([@actividad7, @actividad8, @recurso_digital1, @actividad3, @actividad4])
    end
    it "Pruebas sobre el método de clase añadir_recursos, con el objeto de la clase EducacionInformal 'Programación Creativa para Niños'" do
      expect(RecursosEducativos::añadir_recursos(@educacion_informal1, [@actividad8]).recursos).to eq([@actividad5, @actividad6, @actividad7, @actividad8])
    end
    it "Pruebas sobre el método de clase añadir_recursos, con el objeto de la clase EducacionInformal 'Explorando Ciencia de Datos'" do
      expect(RecursosEducativos::añadir_recursos(@educacion_informal2, [@actividad4, @actividad5]).recursos).to eq([@actividad2, @actividad3, @actividad8, @actividad4, @actividad5])
    end
    it "Pruebas sobre el método de clase añadir_recursos, con el objeto de la clase EducacionInformal 'Introducción a la Robótica'" do
      expect(RecursosEducativos::añadir_recursos(@educacion_informal3, [@actividad7, @actividad8]).recursos).to eq([@actividad1, @actividad4, @actividad6, @actividad7, @actividad8])
    end
  end

end
