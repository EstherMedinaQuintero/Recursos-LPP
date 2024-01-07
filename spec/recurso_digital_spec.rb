# frozen_string_literal: true

RSpec.describe RecursosEducativos do

  before :all do
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
  end

  describe "# Pruebas sobre la instanciación de un objeto de la clase RecursoDigital" do
    it "Instanción del recurso digital abierto 'Intro to JavaScript: Drawing & Animation'" do
      expect(@recurso_digital1).not_to be(nil)
    end
    it "Instanción del recurso digital abierto 'Machine Learning'" do
      expect(@recurso_digital2).not_to be(nil)
    end
    it "Instanción del recurso digital abierto 'Creative Computing'" do
      expect(@recurso_digital3).not_to be(nil)
    end
  end

  describe "# Pruebas sobre los getters de la clase RecursoDigital" do
    it "Comprobación del getter id" do
      expect(@recurso_digital1.id).to eq (203200000)
    end
    it "Comprobación del getter proveedor" do
      expect(@recurso_digital2.marca).to eq ("Coursera")
    end
    it "Comprobación del getter titulo" do 
      expect(@recurso_digital3.titulo).to eq ("Creative Computing")
    end
    it "Comprobación del getter descripcion" do
      expect(@recurso_digital1.descripcion).to eq ("Learn how to use the JavaScript language and the ProcessingJS library to create fun drawings and animations. No prior programming experience is required!")
    end
    it "Comprobación del getter nivel_experiencia" do
      expect(@recurso_digital2.nivel_experencia).to eq (RecursosEducativos::NVL_E)
    end
    it "Comprobación del getter tipo" do
      expect(@recurso_digital3.tipo).to eq ("Workshop")
    end
    it "Comprobación del getter categoria" do
      expect(@recurso_digital1.categoria).to eq (:unplugged)
    end
    it "Comprobación del getter material_necesario" do
      expect(@recurso_digital2.material_necesario).to eq ("Laptop with Python installed")
    end
    it "Comprobación del getter temporalizacion" do
      expect(@recurso_digital3.temporalizacion).to eq (120)
    end
    it "Comprobación del getter conceptos" do
      expect(@recurso_digital1.conceptos).to eq ([:abstraccion, :patrones, :algoritmos])
    end
    it "Comprobación del getter uri" do
      expect(@recurso_digital2.uri).to eq ("https://www.coursera.org/machine-learning")
    end
    it "Comprobación del getter fecha_creacion" do
      expect(@recurso_digital3.fecha_creacion).to eq (2017)
    end
  end

  describe "# Metodo de instancia to_s de la clase RecursoDigital" do
    it "Prueba del método to_s del recurso digital abierto 'Intro to JavaScript: Drawing & Animation'" do
      expect(@recurso_digital1.to_s).to eq("RecursosEducativos::RecursoDigital, Identificador: 203200000\nMarca: Khan Academy\nTítulo: Learn how to use the JavaScript language and the ProcessingJS library to create fun drawings and animations. No prior programming experience is required!\nNivel de experiencia: beginner\nTipo de actividad: Guided lesson\nCategoría: unplugged\nMaterial necesario: Computer with internet connection\nTemporalización: 90 minutos\nConceptos: abstraccion patrones algoritmos \nURI: https://www.khanacademy.org/computer-programming/drawing-animation\nFecha de creación: 2023")
    end
    it "Prueba del método to_s del recurso digital abierto 'Machine Learning'" do
      expect(@recurso_digital2.to_s).to eq("RecursosEducativos::RecursoDigital, Identificador: 203200001\nMarca: Coursera\nTítulo: An in-depth, technical introduction to machine learning for tech professionals. Learn the concepts and application of machine learning, its algorithms, and how to use them to solve real-world problems.\nNivel de experiencia: expert\nTipo de actividad: Course\nCategoría: plugged\nMaterial necesario: Laptop with Python installed\nTemporalización: 180 minutos\nConceptos: validacion algoritmos razonamiento_logico \nURI: https://www.coursera.org/machine-learning\nFecha de creación: 2005")
    end
    it "Prueba del método to_s del recurso digital abierto 'Creative Computing'" do
      expect(@recurso_digital3.to_s).to eq("RecursosEducativos::RecursoDigital, Identificador: 203200002\nMarca: Scratch\nTítulo: Introduction to computer science and creative expression through Scratch, developed by Harvard University. Create your own interactive stories, games, and animations.\nNivel de experiencia: intermediate\nTipo de actividad: Workshop\nCategoría: unplugged\nMaterial necesario: Computer with Scratch software\nTemporalización: 120 minutos\nConceptos: descomposicion razonamiento_logico codificacion \nURI: https://scratch.mit.edu/projects/editor/?tip_bar=getStarted\nFecha de creación: 2017")
    end
  end

  describe "# Pruebas sobre la herencia de la clase RecursoDigital" do
    it "Comprobar la instancia del objeto 'Intro to JavaScript: Drawing & Animation'" do
      expect(@recurso_digital1).to be_instance_of(RecursosEducativos::RecursoDigital)
    end
    it "Comprobar la instancia del objeto 'Machine Learning'" do
      expect(@recurso_digital2).to be_instance_of(RecursosEducativos::RecursoDigital)
    end
    it "Comprobar la instancia del objeto 'Creative Computing'" do
      expect(@recurso_digital3).to be_instance_of(RecursosEducativos::RecursoDigital)
    end
    it "Comprobar la instancia del objeto 'Intro to JavaScript: Drawing & Animation' es un RecursoDigital" do
      expect(@recurso_digital1).to be_a(RecursosEducativos::RecursoDigital)
    end
    it "Comprobar la instancia del objeto 'Intro to JavaScript: Drawing & Animation' es una Actividad" do
      expect(@recurso_digital1).to be_a(RecursosEducativos::Actividad)
    end
    it "Comprobar la instancia del objeto 'Intro to JavaScript: Drawing & Animation' es un Object" do
      expect(@recurso_digital1).to be_a(Object)
    end
    it "Comprobar la instancia del objeto 'Intro to JavaScript: Drawing & Animation' es un BasicObject" do
      expect(@recurso_digital1).to be_a(BasicObject)
    end
    it "Comprobar la instancia del objeto 'Intro to JavaScript: Drawing & Animation' es comparable" do
      expect(@recurso_digital1).to be_a(Comparable)
    end
    it "Comprobar la instancia del objeto 'Intro to JavaScript: Drawing & Animation' es enumerable" do
      expect(@recurso_digital1).to be_a(Enumerable)
    end
  end

  describe "# Pruebas sobre el método de clase, de la clase RecursoDigital" do
    it "Comprobar el método de clase RecursoDigital.count" do
      # expect(RecursosEducativos::RecursoDigital.count).to eq(3)
    end
  end

  describe "# Pruebas sobre los operadores de comparación para la clase RecursoDigital" do
    it "Pruebas sobre el operador de comparación ==" do
      expect(@recurso_digital1 == @recurso_digital2).to eq(false)
    end
    it "Pruebas sobre el operador de comparación <" do
      expect(@recurso_digital1 < @recurso_digital2).to eq(true)
    end
    it "Pruebas sobre el operador de comparación >" do
      expect(@recurso_digital1 > @recurso_digital2).to eq(false)
    end
    it "Pruebas sobre el operador de comparación <=" do
      expect(@recurso_digital1 <= @recurso_digital2).to eq(true)
    end
    it "Pruebas sobre el operador de comparación >=" do
      expect(@recurso_digital1 >= @recurso_digital2).to eq(false)
    end
    it "Pruebas sobre el operador de comparación between?" do
      expect(@recurso_digital3.between?(@recurso_digital1,@recurso_digital2)).to eq(true)
    end
  end

  describe "# Pruebas para comprobar el polimorfismo de la clase RecursoDigital" do
    it "Prueba con un objeto de la clase RecursoDigital, responde a id" do 
      expect(@recurso_digital1).to respond_to(:id)
    end
    it "Prueba con un objeto de la clase RecursoDigital, responde a marca" do
      expect(@recurso_digital2).to respond_to(:marca)
    end
    it "Prueba con un objeto de la clase RecursoDigital, responde a titulo" do
      expect(@recurso_digital3).to respond_to(:titulo)
    end
    it "Prueba con un objeto de la clase RecursoDigital, responde a descripcion" do
      expect(@recurso_digital1).to respond_to(:descripcion)
    end
    it "Prueba con un objeto de la clase RecursoDigital, responde a nivel_experiencia" do
      expect(@recurso_digital2).to respond_to(:nivel_experencia)
    end
    it "Prueba con un objeto de la clase RecursoDigital, responde a tipo" do
      expect(@recurso_digital3).to respond_to(:tipo)
    end
    it "Prueba con un objeto de la clase RecursoDigital, responde a categoria" do
      expect(@recurso_digital1).to respond_to(:categoria)
    end
    it "Prueba con un objeto de la clase RecursoDigital, responde a material_necesario" do
      expect(@recurso_digital2).to respond_to(:material_necesario)
    end
    it "Prueba con un objeto de la clase RecursoDigital, responde a temporalizacion" do
      expect(@recurso_digital3).to respond_to(:temporalizacion)
    end
    it "Prueba con un objeto de la clase RecursoDigital, responde a conceptos" do
      expect(@recurso_digital1).to respond_to(:conceptos)
    end
    it "Prueba con un objeto de la clase RecursoDigital, responde a uri" do
      expect(@recurso_digital2).to respond_to(:uri)
    end
    it "Prueba con un objeto de la clase RecursoDigital, responde a fecha_creacion" do
      expect(@recurso_digital3).to respond_to(:fecha_creacion)
    end
  end

  describe "# Pruebas sobre la enumeracion de objetos de la clase RecursoDigital" do
    it "Prueba del método max, con el objeto 'Intro to JavaScript: Drawing & Animation'" do
      expect(@recurso_digital1.max).to eq(2023)
    end
    it "Prueba del método min, con el objeto 'Intro to JavaScript: Drawing & Animation'" do
      expect(@recurso_digital1.min).to eq(90)
    end
    it "Prueba del método sort, con el objeto 'Intro to JavaScript: Drawing & Animation'" do
      expect(@recurso_digital1.sort).to eq([90, 2023])
    end
    it "Prueba del método count, con el objeto 'Intro to JavaScript: Drawing & Animation'" do
      expect(@recurso_digital1.count).to eq(2)
    end
    it "Prueba del método drop, con el objeto 'Intro to JavaScript: Drawing & Animation'" do
      expect(@recurso_digital1.drop(1)).to eq([2023])
    end
    it "Prueba del método max, con el objeto 'Machine Learning'" do
      expect(@recurso_digital2.max).to eq(2005)
    end
    it "Prueba del método min, con el objeto 'Machine Learning'" do
      expect(@recurso_digital2.min).to eq(180)
    end
    it "Prueba del método sort, con el objeto 'Machine Learning'" do
      expect(@recurso_digital2.sort).to eq([180, 2005])
    end
    it "Prueba del método count, con el objeto 'Machine Learning'" do
      expect(@recurso_digital2.count).to eq(2)
    end
    it "Prueba del método drop, con el objeto 'Machine Learning'" do
      expect(@recurso_digital2.drop(1)).to eq([2005])
    end
    it "Prueba del método max, con el objeto 'Creative Computing'" do
      expect(@recurso_digital3.max).to eq(2017)
    end
    it "Prueba del método min, con el objeto 'Creative Computing'" do
      expect(@recurso_digital3.min).to eq(120)
    end
    it "Prueba del método sort, con el objeto 'Creative Computing'" do
      expect(@recurso_digital3.sort).to eq([120, 2017])
    end
    it "Prueba del método count, con el objeto 'Creative Computing'" do
      expect(@recurso_digital3.count).to eq(2)
    end
    it "Prueba del método drop, con el objeto 'Creative Computing'" do
      expect(@recurso_digital3.drop(1)).to eq([2017])
    end
  end

end