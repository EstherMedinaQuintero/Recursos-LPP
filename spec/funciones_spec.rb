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
    # Nueva instancia de RecursoDigital
    @recurso_digital4 = RecursosEducativos::RecursoDigital.new(
      203200003,
      "edX",
      "Introduction to Artificial Intelligence",
      "Explore the basics of artificial intelligence and learn how AI is transforming various industries. This course covers fundamental concepts and practical applications.",
      RecursosEducativos::NVL_A,
      "Online course",
      :plugged,
      "Computer with internet access",
      90,
      [:algoritmos, :razonamiento_logico],
      "https://www.edx.org/course/introduction-to-artificial-intelligence",
      2023
    )
    # Otra nueva instancia de RecursoDigital
    @recurso_digital5 = RecursosEducativos::RecursoDigital.new(
      203200004,
      "Codecademy",
      "Web Development Fundamentals",
      "Learn the essential skills for web development, including HTML, CSS, and JavaScript. Build and deploy your own websites with hands-on projects.",
      RecursosEducativos::NVL_E,
      "Interactive course",
      :plugged,
      "Computer with Codecademy account",
      120,
      [:razonamiento_logico, :codificacion],
      "https://www.codecademy.com/learn/introduction-to-javascript",
      2017
    )
    # Otra nueva instancia de RecursoDigital
    @recurso_digital6 = RecursosEducativos::RecursoDigital.new(
      203200005,
      "MIT OpenCourseWare",
      "Introduction to Computer Science",
      "A comprehensive introduction to computer science, covering fundamental concepts and programming in Python. Suitable for beginners and those with some programming experience.",
      RecursosEducativos::NVL_I,
      "Open course",
      :plugged,
      "Computer with Python installed",
      180,
      [:algoritmos],
      "https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-00sc-introduction-to-computer-science-and-programming-spring-2011/index.htm",
      2005
    )
    # Coleccion de recursos 'Informática Avanzada'
    @entorno_digital1 = RecursosEducativos::EntornoDigital.new(40350000, "Informática Avanzada", :curso, [@actividad1, @actividad2, @actividad3, @actividad4, @actividad5, @actividad6, @actividad7])
    # Coleccion de recursos 'Unidades Didacticas 1'
    @entorno_digital2 = RecursosEducativos::EntornoDigital.new(40350001, "Unidades Didácticas 1", :unidad_didactica, [@actividad1, @actividad2])
    # Coleccion de recursos 'Primeras Lecciones'
    @entorno_digital3 = RecursosEducativos::EntornoDigital.new(40350002, "Primeras Lecciones", :leccion, [@actividad5, @actividad6])
    # Coleccion de recursos 'Talleres Data & Criptography'
    @entorno_digital4 = RecursosEducativos::EntornoDigital.new(40350003, "Talleres Data & Criptography", :taller, [@actividad3, @actividad4])
    @lori1 = [1, 1, 1, 1, 1, 1, 1, 1]
    @lori2 = [2, 2, 2, 2, 2, 2, 2, 2]
    @lori3 = [3, 3, 3, 3, 3, 3, 3, 3]
    @lori4 = [4, 4, 4, 4, 4, 4, 4, 4]
    @lori5 = [5, 5, 5, 5, 5, 5, 5, 5]
    @lori6 = [1, 2, 3, 4, 5, 1, 2, 3]
    @lori7 = [5, 4, 3, 2, 1, 5, 4, 3]
  end

  describe "# Pruebas sobre la función aplicar_lori para Recursos Digitales Abiertos" do
    it "Prueba con el recurso digital 'Intro to JavaScript: Drawing & Animation' y lori1" do
      expect(RecursosEducativos::evaluar_recurso_digital(@recurso_digital1, @lori1)).to eq(@lori1)
    end
    it "Prueba con el recurso digital 'Machine Learning' y lori2" do
      expect(RecursosEducativos::evaluar_recurso_digital(@recurso_digital2, @lori2)).to eq(@lori2)
    end
    it "Prueba con el recurso digital 'Creative Computing' y lori3" do
      expect(RecursosEducativos::evaluar_recurso_digital(@recurso_digital3, @lori3)).to eq(@lori3)
    end
    it "Prueba con el recurso digital 'Introduction to Artificial Intelligence' y lori4" do
      expect(RecursosEducativos::evaluar_recurso_digital(@recurso_digital4, @lori4)).to eq(@lori4)
    end
    it "Prueba con el recurso digital 'Web Development Fundamentals' y lori5" do
      expect(RecursosEducativos::evaluar_recurso_digital(@recurso_digital5, @lori5)).to eq(@lori5)
    end
    it "Prueba con el recurso digital 'Introduction to Computer Science' y lori6" do
      expect(RecursosEducativos::evaluar_recurso_digital(@recurso_digital6, @lori6)).to eq(@lori6)
    end
    it "Prueba con el recurso digital 'Intro to JavaScript: Drawing & Animation' y lori7" do
      expect(RecursosEducativos::evaluar_recurso_digital(@recurso_digital1, @lori7)).to eq(@lori7)
    end
  end

  describe "# Pruebas sobre la función evaluar_entorno_digital para Entornos Digitales" do
    it "Prueba con el entorno digital 'Informatica Avanzada'" do
      expect(RecursosEducativos::evaluar_entorno_digital(@entorno_digital1, @lori1)).to eq([@lori1, @lori1, @lori1, @lori1, @lori1, @lori1, @lori1])
    end
    it "Prueba con el entorno digital 'Unidades Didacticas 1'" do
      expect(RecursosEducativos::evaluar_entorno_digital(@entorno_digital2, @lori2)).to eq([@lori2, @lori2])
    end
    it "Prueba con el entorno digital 'Primeras Lecciones'" do
      expect(RecursosEducativos::evaluar_entorno_digital(@entorno_digital3, @lori3)).to eq([@lori3, @lori3])
    end
    it "Prueba con el entorno digital 'Talleres Data & Criptography'" do
      expect(RecursosEducativos::evaluar_entorno_digital(@entorno_digital4, @lori4)).to eq([@lori4, @lori4])
    end
    it "Prueba con el entorno digital 'Informatica Avanzada'" do
      expect(RecursosEducativos::evaluar_entorno_digital(@entorno_digital1, @lori5)).to eq([@lori5, @lori5, @lori5, @lori5, @lori5, @lori5, @lori5])
    end
    it "Prueba con el entorno digital 'Unidades Didacticas 1'" do
      expect(RecursosEducativos::evaluar_entorno_digital(@entorno_digital2, @lori6)).to eq([@lori6, @lori6])
    end
    it "Prueba con el entorno digital 'Primeras Lecciones'" do
      expect(RecursosEducativos::evaluar_entorno_digital(@entorno_digital3, @lori7)).to eq([@lori7, @lori7])
    end
  end

  describe "# Pruebas sobre la función mayor_valor_educativo" do
    it "Pruebas con los recursos educativos 1, 2, 4" do
      expect(RecursosEducativos::mayor_valor_educativo([@recurso_digital1, @recurso_digital2, @recurso_digital4], [@lori4, @lori5, @lori1])).to eq(@recurso_digital1)
    end
    it "Pruebas con los recursos educativos 3, 5, 6" do
      expect(RecursosEducativos::mayor_valor_educativo([@recurso_digital3, @recurso_digital5, @recurso_digital6], [@lori1, @lori2, @lori3])).to eq(@recurso_digital5)
    end
    it "Pruebas con los recursos educativos 1, 2, 6" do
      expect(RecursosEducativos::mayor_valor_educativo([@recurso_digital1, @recurso_digital2, @recurso_digital6], [@lori1, @lori2, @lori3])).to eq(@recurso_digital6)
    end
    it "Pruebas con los recursos educativos 1, 3, 6" do
      expect(RecursosEducativos::mayor_valor_educativo([@recurso_digital1, @recurso_digital3, @recurso_digital6], [@lori1, @lori2, @lori3])).to eq(nil)
    end
    it "Pruebas con los recursos educativos 2, 3, 4" do
      expect(RecursosEducativos::mayor_valor_educativo([@recurso_digital2, @recurso_digital3, @recurso_digital4], [@lori1, @lori2, @lori3])).to eq(nil)
    end
  end

  describe "# Pruebas sobre la función entorno_mejor_oferta" do
    it "Pruebas con los entornos digitales 1, 2, 3" do
      expect(RecursosEducativos::entorno_mejor_oferta([@entorno_digital1, @entorno_digital2, @entorno_digital3], [@lori1, @lori2, @lori3])).to eq(@entorno_digital1)
    end
    it "Pruebas con los entornos digitales 2, 3, 4" do
      expect(RecursosEducativos::entorno_mejor_oferta([@entorno_digital2, @entorno_digital3, @entorno_digital4], [@lori4, @lori5, @lori6])).to eq(@entorno_digital3)
    end
    it "Pruebas con los entornos digitales 1, 2, 4" do
      expect(RecursosEducativos::entorno_mejor_oferta([@entorno_digital1, @entorno_digital2, @entorno_digital4], [@lori7, @lori1, @lori2])).to eq(@entorno_digital1)
    end
    it "Pruebas con los entornos digitales 1, 3, 4" do
      expect(RecursosEducativos::entorno_mejor_oferta([@entorno_digital1, @entorno_digital3, @entorno_digital4], [@lori1, @lori2, @lori3])).to eq(@entorno_digital1)
    end
    it "Pruebas con los entornos digitales 2, 3, 4" do
      expect(RecursosEducativos::entorno_mejor_oferta([@entorno_digital2, @entorno_digital3, @entorno_digital4], [@lori3, @lori4, @lori5])).to eq(@entorno_digital4)
    end
    it "Pruebas con los entornos digitales 2, 3, 4" do
      expect(RecursosEducativos::entorno_mejor_oferta([@entorno_digital2, @entorno_digital3, @entorno_digital4], [@lori1, @lori3, @lori2])).to eq(@entorno_digital3)
    end
    it "Pruebas con los entornos digitales 1, 2, 3, 4" do
      expect(RecursosEducativos::entorno_mejor_oferta([@entorno_digital1, @entorno_digital2, @entorno_digital3, @entorno_digital4], [@lori1, @lori3, @lori4, @lori5])).to eq(@entorno_digital1)
    end
  end

end