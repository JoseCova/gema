# Fichero Rspec que ejecuta las pruebas unitarias 
RSpec.describe Nutricion do
  it "has a version number" do
    expect(Nutricion::VERSION).not_to be nil
  end
end

  RSpec.describe Nutricion do
    # Antes de todo definimos los alimentos para los que vamos a generar pruebas
    before :each do
      @alimento = Alimentos.new("carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
      @alimento2 = Alimentos.new("chocolate", 5.3, 47.0, 30.0, 2.3, 3.4)
      @alimento3 = Alimentos.new("salmon", 19.9, 0.0, 13.6, 6.0, 3.7)
      @alimento4 = Alimentos.new("huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
      @alimento5 = Alimentos.new("tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
    end

    # Pruebas para comprobar el atributo nombre
    it "Existe un nombre para el alimento" do
      expect(@alimento).to have_attributes(:nombre => "carne de vaca")
      expect(@alimento2).to have_attributes(:nombre => "chocolate")
      expect(@alimento3).to have_attributes(:nombre => "salmon")
      expect(@alimento4).to have_attributes(:nombre => "huevos")
      expect(@alimento5).to have_attributes(:nombre => "tofu")
    end

    # Pruebas para comprobar el atributo proteinas
    it "Existe una cantidad de proteinas del alimento" do
    expect(@alimento).to have_attributes(:proteinas => 21.1)
    expect(@alimento2).to have_attributes(:proteinas => 5.3)
    expect(@alimento3).to have_attributes(:proteinas => 19.9)
    expect(@alimento4).to have_attributes(:proteinas => 13.0)
    expect(@alimento5).to have_attributes(:proteinas => 8.0)
    end

    # Pruebas para comprobar el atributo carbohidratos
    it "Existe una cantidad de carbohidratos del alimento" do
      expect(@alimento).to have_attributes(:carbohidratos => 0.0)
      expect(@alimento2).to have_attributes(:carbohidratos => 47.0)
      expect(@alimento3).to have_attributes(:carbohidratos => 0.0)
      expect(@alimento4).to have_attributes(:carbohidratos => 1.1)
      expect(@alimento5).to have_attributes(:carbohidratos => 1.9)
    end

    # Pruebas para comprobar el atributo lipido
    it "Existe una cantidad de lipidos del alimento" do 
      expect(@alimento).to have_attributes(:lipidos => 3.1)
      expect(@alimento2).to have_attributes(:lipidos => 30.0)
      expect(@alimento3).to have_attributes(:lipidos => 13.6)
      expect(@alimento4).to have_attributes(:lipidos => 11.0)
      expect(@alimento5).to have_attributes(:lipidos => 4.8)
    end

    # Pruebas para comprobar el gei
    it "Existe una cantidad de emisión gases de efecto invernadero" do
      expect(@alimento).to have_attributes(:gei => 50.0)
      expect(@alimento2).to have_attributes(:gei => 2.3)
      expect(@alimento3).to have_attributes(:gei => 6.0)
      expect(@alimento4).to have_attributes(:gei => 4.2)
      expect(@alimento5).to have_attributes(:gei => 2.0)
    end

    # Pruebas para comprobar el terreno
    it "Existe una cantidad de terreno utilizado" do
      expect(@alimento).to have_attributes(:terreno => 164.0)
      expect(@alimento2).to have_attributes(:terreno => 3.4)
      expect(@alimento3).to have_attributes(:terreno => 3.7)
      expect(@alimento4).to have_attributes(:terreno => 5.7)
      expect(@alimento5).to have_attributes(:terreno => 2.2)
    end

    # Getter del nombre
    it "Existe un método para obtener el nombre" do
      expect(@alimento.nombre).to eq("carne de vaca")
      expect(@alimento2.nombre).to eq("chocolate")
      expect(@alimento3.nombre).to eq("salmon")
      expect(@alimento4.nombre).to eq("huevos")
      expect(@alimento5.nombre).to eq("tofu")
    end

    # Getter de las proteinas
    it "Existe un método para obtener la cantidad de proteínas" do
      expect(@alimento.proteinas).to eq(21.1)
      expect(@alimento2.proteinas).to eq(5.3)
      expect(@alimento3.proteinas).to eq(19.9)
      expect(@alimento4.proteinas).to eq(13.0)
      expect(@alimento5.proteinas).to eq(8.0)
    end
    
    # Getter de los carbohidratos
    it "Existe un método para obtener la cantidad de carbohidratos" do
      expect(@alimento.carbohidratos).to eq(0.0)
      expect(@alimento2.carbohidratos).to eq(47.0)
      expect(@alimento3.carbohidratos).to eq(0.0)
      expect(@alimento4.carbohidratos).to eq(1.1)
      expect(@alimento5.carbohidratos).to eq(1.9)
    end
    
    # Getter de los lípidos
    it "Existe un método para obtener la cantidad de lípidos" do
      expect(@alimento.lipidos).to eq(3.1)
      expect(@alimento2.lipidos).to eq(30.0)
      expect(@alimento3.lipidos).to eq(13.6)
      expect(@alimento4.lipidos).to eq(11.0)
      expect(@alimento5.lipidos).to eq(4.8)
    end

    # Getter del gei
    it "Existe un método para obtener la cantidad de emisiones de gases de efecto invernadero" do
      expect(@alimento.gei).to eq(50.0)
      expect(@alimento2.gei).to eq(2.3)
      expect(@alimento3.gei).to eq(6.0)
      expect(@alimento4.gei).to eq(4.2)
      expect(@alimento5.gei).to eq(2.0)
    end

    # Getter del terreno
    it "Existe un método para obtener la cantidad de terreno utilizado" do
      expect(@alimento.terreno).to eq(164.0)
      expect(@alimento2.terreno).to eq(3.4)
      expect(@alimento3.terreno).to eq(3.7)
      expect(@alimento4.terreno).to eq(5.7)
      expect(@alimento5.terreno).to eq(2.2)
    end

    # Pruebas para el método to_s
    it "Existe un método para obtener el alimento formateado" do
      expect(@alimento.to_s).to eq("nombre: carne de vaca, proteinas: 21.1, carbohidratos: 0.0, lipidos: 3.1, gei: 50.0, terreno: 164.0")
      expect(@alimento2.to_s).to eq("nombre: chocolate, proteinas: 5.3, carbohidratos: 47.0, lipidos: 30.0, gei: 2.3, terreno: 3.4")
      expect(@alimento3.to_s).to eq("nombre: salmon, proteinas: 19.9, carbohidratos: 0.0, lipidos: 13.6, gei: 6.0, terreno: 3.7")
      expect(@alimento4.to_s).to eq("nombre: huevos, proteinas: 13.0, carbohidratos: 1.1, lipidos: 11.0, gei: 4.2, terreno: 5.7")
      expect(@alimento5.to_s).to eq("nombre: tofu, proteinas: 8.0, carbohidratos: 1.9, lipidos: 4.8, gei: 2.0, terreno: 2.2")
    end
    
    # Pruebas para el valor energético de un alimento
    it "Existe un método para obtener el valor energético de un alimento" do 
      expect(@alimento.valor_energetico).to eq(112.30000000000001)
      expect(@alimento2.valor_energetico).to eq(479.2)
      expect(@alimento3.valor_energetico).to eq(202.0)
      expect(@alimento4.valor_energetico).to eq(155.4)
      expect(@alimento5.valor_energetico).to eq(82.79999999999998)
      end

      # Prueba donde se calcula el impacto ambiental en un hombre
      it "Se calcula correctamente el impacto ambiental diario de un hombre de 20-39 años" do 
        expect(@alimento2.gei + @alimento3.gei + @alimento4.gei + @alimento2.terreno + @alimento3.terreno + @alimento4.terreno).to eq(25.3)
      end

      # Prueba donde se calcula el impacto ambiental en una mujer
      it "Se calcula correctamente el impacto ambiental diario de una mujer de 20-39 años" do 
        expect(@alimento2.gei + @alimento3.gei + @alimento4.gei + @alimento2.terreno + @alimento3.terreno + @alimento4.terreno).to eq(25.3)
      end
end

# Pruebas para la clase lista
RSpec.describe Lista do
  
  # Antes de todo definimos una lista vacía y un alimento
  before :each do
    @lista = Lista.new()
    @alimento = Alimentos.new("carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)  
  end 

  # Prueba para crear un nodo
  context "Debe existir un nodo en la lista con sus datos, su siguiente y su previo" do
    it "Se crea correctamente un nodo" do
    node = Node.new()
    end
  end

  # Getters de la cabeza y la cola
  context "Debe existir una lista con su cabeza y su cola" do
    it "Getters de la cabeza y la cola" do
      expect(@lista.head).to eq(nil)
      expect(@lista.tail).to eq(nil)
    end
  end

  context "Se puede insertar un elemento en la lista" do
     # Prueba para comprobar que existe el método insert_head
    it "Insert head" do
      expect(@lista).to respond_to(:insert_head)
    end

     # Prueba para comprobar que existe el método insert_tail
    it "Insert tail" do
      expect(@lista).to respond_to(:insert_tail)
    end
  end

  # Pruebas para comprobar la existencia de los método each e insert_nodes
  context "Se pueden insertar varios elementos en la lista" do
    it "Método each" do
      expect(@lista).to respond_to(:each)
    end

    it "Metodo insert_nodes" do
      expect(@lista).to respond_to(:insert_nodes)
  end
end

context "Se pueden extraer nodos de la lista" do
  # Prueba del método extract_head
  it "Se extrae el primer elemento de la lista" do 
      @lista.insert_head(@alimento)
      expect(@lista.extract_head).to eq(@alimento)
  end

  # Prueba del método extract_tail
  it "Se extrae el ultimo elemento de la lista" do
      expect(@lista.extract_tail).to eq(nil)
  end
end

context "Se pueden calcular los gases y los metros cuadrados" do
  # Prueba para calcular el gei diario
  it "Se calcula el gei diario para cada dieta " do
    @lista.insert_head(@alimento)
    expect(@lista.gei_diario).to eq(50.0)
  end

  # Prueba para calcular el anual
  it "Se calcula el gei anual para cada dieta" do
    @lista.insert_head(@alimento)
    expect(@lista.gei_año).to eq(18250.0)
  end

  # Prueba para comprobar el terreno
  it "Se calcula el terreno para cada dieta" do
    @lista.insert_head(@alimento)
    expect(@lista.terreno).to eq(164.0)
  end
end

  # Prueba de la salida formateada
  context "Se puede mostrar los elementos de una lista formateados" do
    it " Metodo to_s " do
      @lista.insert_head(@alimento)
      expect(@lista.to_s).to eq(@alimento.to_s)
    end 
  end
end

RSpec.describe Alimentos do
  # Antes de nada definimos los alimentos 
  before :each do 
    @alimento = Alimentos.new("carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
    @alimento2 = Alimentos.new("chocolate", 5.3, 47.0, 30.0, 2.3, 3.4)
    @alimento3 = Alimentos.new("salmon", 19.9, 0.0, 13.6, 6.0, 3.7)
  end
   
  # Pruebas módulo comparable
  context "Las instancias de alimentos son comparables" do

    # Prueba <
    it " Un alimento es menor que otro" do
      expect(@alimento < @alimento2).to eq(true)
    end

    # Prueba >
    it " Un alimento es mayor que otro" do
      expect(@alimento > @alimento2).to eq(false)
    end

    # Prueba <=
    it " Un alimento es menor igual que otro" do
      expect(@alimento <= @alimento2).to eq(true)
  end

  # Prueba >=
  it " Un alimento es mayor o igual que otro" do
    expect(@alimento >= @alimento2).to eq(false)
  end

  # Prueba ==
  it " Un alimento es igual que otro" do
    expect(@alimento == @alimento).to eq(true)
  end
  
  # Prueba between
  it "Un alimento está between otro" do
    expect(@alimento3.between?(@alimento, @alimento2)).to eq(true)
  end
  end
end 

RSpec.describe Lista do
  
  # Antes de nada definimos una lista e insertamos un array con números
    before :each do
      @lista = Lista.new()
      @lista.insert_nodes([1,2,3,4,5])
    end

    # Pruebas módulo enumerable
    context "Las instancias de listas son enumerables" do

      # Collect
      it "método collect" do
        expect(@lista.collect {2}).to eq([2,2,2,2,2])
      end

      # Select
      it "método select" do
        expect(@lista.select{ |i| i.even?}).to eq([4,2])
      end

      # Max y min
      it "método max y min" do
        expect(@lista.max).to eq(5)
        expect(@lista.min).to eq(1)
      end

      # Sort
      it "método sort" do
        expect(@lista.sort { |i, j| j <=> i }).to eq([5,4,3,2,1])
      end
    end
end 

# Pruebas para un plato básico
RSpec.describe Basicplato do

  # Antes de nada definimos unos alimentos, una lista con sus gramos e instanciamos un plato
  before :each do
    @alimento = Alimentos.new("carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
    @alimento4 = Alimentos.new("huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
    @alimento5 = Alimentos.new("tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
    @lista = Lista.new()
    @lista2 = Lista.new()
    @lista.insert_nodes([@alimento, @alimento4, @alimento5])
    @lista2.insert_nodes([300, 150, 240])
    @plato = Basicplato.new("combinado",@lista, @lista2)
  end

    # Pruebas
  context "Expectativas que tiene que tener un plato" do 

    # Getter del nombre
    it "Se espera que un plato tenga un nombre" do
      expect(@plato.nombre).to eq("combinado")
    end 

    # Getter de la lista con los alimentos
    it "Se espera que un plato tenga un conjunto de alimentos" do
      expect(@plato.listaalim).not_to eq(nil)
    end
  
    # Getter con la lista de cantidades en gramos
    it "Se espera que un plato tenga un conjunto de cantidades de alimentos en gramos" do
      expect(@plato.listagram).not_to eq(nil)
    end

    # Prueba para comprobar las proteinas de un plato
  it "Porcentaje de proteinas de un plato" do
    expect(@plato.proteins).to eq(102.0)
  end

  # Prueba para comprobar los lípidos de un plato
  it "Porcentaje de lipidos de un plato" do
    expect(@plato.lipidos).to eq(37.32)
  end

  # Prueba para comprobar los hidratos de carbono de un plato
  it "Porcentaje de hidratos de carbono de un plato" do
    expect(@plato.hidratos).to eq(6.2)
    end

  # Prueva para calcular el valor calórico total de un plato
    it "Valor calorico total de un plato" do
      expect(@plato.vct).to eq(350.5)
    end

    # Salida formateada de un plato, muestra su nombre
    it " Se obtiene el plato formateado" do 
      expect(@plato.to_s).to eq("combinado")
    end
  end
end

# Pruebas para un plato completo
RSpec.describe Plato do

  # Antes de todo nos definimos unos alimentos, unas listas y unos platos
  before :each do
  @alimento = Alimentos.new("carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
  @alimento4 = Alimentos.new("huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
  @alimento5 = Alimentos.new("tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
  @alimento2 = Alimentos.new("chocolate", 5.3, 47.0, 30.0, 2.3, 3.4)
  @alimento3 = Alimentos.new("salmon", 19.9, 0.0, 13.6, 6.0, 3.7)
  @alimento6 = Alimentos.new("cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
  @alimento7 = Alimentos.new("lentejas", 23.5, 52.0, 1.4, 0.4, 3.4)
  @alimento8 = Alimentos.new("nuez", 20.0, 21.1, 54.0, 0.3, 7.9)
  @alimento9 = Alimentos.new("cerdo", 21.5, 0.0, 6.3, 7.6, 11.0)
  
  # Listas
  @lista = Lista.new()
  @lista2 = Lista.new()
  @lista3 = Lista.new()
  @lista4 = Lista.new()
  @lista5 = Lista.new()
  @lista6 = Lista.new()

  # Inserciones
  @lista.insert_nodes([@alimento, @alimento4, @alimento5])
  @lista2.insert_nodes([300, 150, 240])
  @lista3.insert_nodes([@alimento2, @alimento3, @alimento4])
  @lista4.insert_nodes([@alimento8, @alimento7, @alimento5])
  @lista5.insert_nodes([@alimento4, @alimento7, @alimento5])
  @lista6.insert_nodes([@alimento9, @alimento6, @alimento2])

  # Platos
  @plato = Basicplato.new("combinado",@lista, @lista2)
  @plato2 = Basicplato.new("mezcla",@lista3, @lista2)
  @platofull = Plato.new("combinado", @lista, @lista2)
  @platofull2 = Plato.new("mezcla", @lista3, @lista2)
  @platofull3 = Plato.new("vega", @lista4, @lista2)
  @platofull4 = Plato.new("vege", @lista5, @lista2)
  @platofull5 = Plato.new("vasco", @lista6, @lista2)

  @lista7 = Lista.new()
  @lista8 = Lista.new()
  @lista9 = Lista.new()
  @lista10 = Lista.new()
  @lista11 = Lista.new()
  
  # Dietas
  @dietaesp = @lista7.insert_nodes([@plato, @plato2, @platofull])
  @dietavasc = @lista8.insert_nodes([@platofull5, @plato, @platofull])
  @dietaveg = @lista9.insert_nodes([@platofull4, @platofull5, @platofull])
  @dietavegetal = @lista10.insert_nodes([@platofull3, @platofull4, @plato2])
  @dietacarne = @lista11.insert_nodes([@platofull2, @plato2, @plato])
  end

  # Pruebas de un plato completo
  context " Métodos de la clase plato" do 
    # Prueba para el gei
    it "Valor total de la emisiones diarias de de gases de efecto invernadero" do
      expect(@platofull.gei).to eq(56.2)
    end
    
    # Prueba para el terreno
    it "Estimacion de los metros cuadrados de uso de terreno." do 
      expect(@platofull.terreno).to eq(171.9)
    end

    # Prueba para calcular la eficiencia energética
    it "Se obtiene la eficiencia energetica formateada" do
      expect(@platofull.eficiencia).to eq("350.5")
    end
  end

  # Pruebas para comprobar la jererquia de clase
  context "Pruebas para comprobar la clase, el tipo y la jerarquía de un objeto" do
     
    # Comprobaciones de las clases
    it "Comprobacion de la clase" do 
        expect(@alimento.class).to eq(Alimentos)
        expect(@lista.class).to eq(Lista)
        expect(@plato.class).to eq(Basicplato)
        expect(@platofull.class).to eq(Plato)
      end

      # Comprobaciones del tipo de instancia
      it "Comprobacion del tipo" do 
        expect(@alimento.instance_of? Alimentos).to eq(true)
        expect(@lista.instance_of? Lista).to eq(true)
        expect(@plato.instance_of? Basicplato).to eq(true)
        expect(@platofull.instance_of? Basicplato).to eq(false)
        expect(@platofull.instance_of? Plato).to eq(true)
      end

     # Comprobacion de la jerarquia de clases
      it "Comprobacion de la jerarquia" do 
        expect(@alimento.kind_of?Alimentos).to eq(true)
        expect(@lista.kind_of?Lista).to eq(true)
        expect(@plato.kind_of?Basicplato).to eq(true)
        expect(@platofull.kind_of?Basicplato).to eq(true)
        expect(@platofull.kind_of?Object).to eq(true)
        expect(@platofull.kind_of?Plato).to eq(true)
      end
  end

    # Pruebas del módulo enumerable en un plato
    context "Pruebas del modulo comparable" do
    
    # Prueba <
    it " Un plato es menor que otro" do
      expect(@platofull < @platofull2).to eq(false)
    end

    # Prueba >
    it " Un plato es mayor que otro" do
      expect(@platofull > @platofull2).to eq(true)
    end

    # Prueba <=
    it " Un plato es menor igual que otro" do
      expect(@platofull <= @platofull2).to eq(false)
  end

  # Prueba >=
  it " Un plato es mayor o igual que otro" do
    expect(@platofull >= @platofull2).to eq(true)
  end

  # Prueba ==
  it " Un plato es igual que otro" do
    expect(@platofull == @platofull2).to eq(false)
  end

  # Prueba between
  it "Un plato está between otro" do
    expect(@platofull3.between?(@platofull, @platofull2)).to eq(false)
  end
  end

  # Pruebas del módulo enumerable
  context "Pruebas modulo enumerable" do

    # Collect
    it "método collect" do
      expect(@dietaesp.collect { |i| i.proteins }).to eq([102.0, 76.95, 102.0])
    end

    # Max y min 
    it "método max y min" do
      expect(@dietaveg.max.vct).to eq(350.5)
      expect(@dietavegetal.min.vct).to eq(836.5999999999999)
    end

    # Prueba select
    it "método select" do
       expect(@dietavasc.select { |i|  i.nombre == "vasco" }.first.hidratos).to eq(118.2)
    end

    # Prueba sort
    it "metodo sort" do
      expect(@dietaveg.sort { |x| x.gei}.first.gei).to eq(56.2)
    end
  end
end

# Pruebas para la practica 9
RSpec.describe Plato do

  # Antes de todo definimos las cosas que vamos a utilizar
before :each do
  # Alimentos
  @alimento = Alimentos.new("carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
  @alimento2 = Alimentos.new("huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
  @alimento3 = Alimentos.new("tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
  @alimento4 = Alimentos.new("chocolate", 5.3, 47.0, 30.0, 2.3, 3.4)
  @alimento5 = Alimentos.new("salmon", 19.9, 0.0, 13.6, 6.0, 3.7)
  @alimento6 = Alimentos.new("cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
  @alimento7 = Alimentos.new("lentejas", 23.5, 52.0, 1.4, 0.4, 3.4)
  @alimento8 = Alimentos.new("nuez", 20.0, 21.1, 54.0, 0.3, 7.9)
  @alimento9 = Alimentos.new("cerdo", 21.5, 0.0, 6.3, 7.6, 11.0)

  # Listas
  @lista = Lista.new()
  @lista2 = Lista.new()
  @lista3 = Lista.new()
  @lista4 = Lista.new()

  # Inserciones
  @lista.insert_nodes([@alimento, @alimento2, @alimento3])
  @lista2.insert_nodes([300, 150, 240])
  @lista3.insert_nodes([@alimento4, @alimento5, @alimento6])
  @lista4.insert_nodes([@alimento7, @alimento8, @alimento9])

  # Platos
  @plato = Basicplato.new("combinado",@lista, @lista2)
  @platofull = Plato.new("combinado", @lista, @lista2)
  @plato2 = Basicplato.new("mezcla",@lista3, @lista2)
  @platofull2 = Plato.new("mezcla", @lista3, @lista2)
  @plato3 = Basicplato.new("mar y montaña",@lista4, @lista2)
  @platofull3 = Plato.new("mar y montaña", @lista4, @lista2)
  end

  # Pruebas de la practicaS
  context " Pruebas para calcular el plato con mayor huella nutricional de un menú" do
   
    # Prueba para el calculo del plato con mayor huella nutricional
  it " Calculo del plato con mayor huella nutricional" do
      menu = [@platofull, @platofull2, @platofull3]
      expect(menu.max).to eq(@platofull)
    end

    # Incremento de precios según huella de los platos
    it "Incremento de precios segun el plato con mayor huella nutricional" do
      menu = [@platofull, @platofull2, @platofull3]
      precios = [7, 6.5, 8]
      expect(precios.collect { |i| ((menu.max.huella * i) / 100).round(1) }).to eq([16.0, 14.8, 18.2])
      
    end

  end

end

RSpec.describe Platodsl do
  before :each do
    vaca = Alimentos.new('Carne de vaca', 50.00,164.00,21.10,3.10,0.00)
    huevo = Alimentos.new("Huevo", 13.0, 1.1, 11.0, 4.2, 5.7)
    @plato_dsl = Platodsl.new("Hamburguesa con huevo") do
      alimento :descripcion => vaca,
      :gramos => 200
      alimento :descripcion => huevo,
      :gramos => 20
    end
  end

  context "Pruebas de la clase Platodsl" do
  it "Prueba para ver a que clase pertenece" do
    expect(@plato_dsl.is_a?Platodsl).to eq(true)
  end

  it "Prueba para comprobar el método to_s" do
    expect(@plato_dsl.to_s).to eq("Hamburguesa con huevo\n=====================\nAlimentos: (Carne de vaca)(200 g), (Huevo)(20 g)\n")
    end
  end
end


RSpec.describe Menudsl do
  before :each do
    vaca = Alimentos.new('Carne de vaca', 50.00,164.00,21.10,3.10,0.00)
    huevo = Alimentos.new("Huevo", 13.0, 1.1, 11.0, 4.2, 5.7)
    cerveza = Alimentos.new("Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
    chocolate = Alimentos.new("Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4)

 

    plato1 = Platodsl.new("Hamburguesa con Huevo") do
      alimento :descripcion => vaca,
      :gramos => 200
      alimento :descripcion => huevo,
      :gramos => 20
    end

    plato2 = Platodsl.new("Cerveza") do
      alimento :descripcion => cerveza,
      :gramos => 60
    end

    plato3 = Platodsl.new("Flan de chocolate") do
      alimento :descripcion => chocolate,
      :gramos => 300
    end

    @menu = Menudsl.new("Combinado nº 1") do
      platos :nombre => plato1,
      :precio => 2.5, :valornutri => 370,
      :valorambi => 520
      platos :nombre => plato2,
      :precio => 1.5, :valornutri => 120,
      :valorambi => 200
      platos :nombre => plato3,
      :precio => 1.3, :valornutri => 200,
      :valorambi => 80
    end
  end

  it "Prueba para ver a que clase pertenece" do
    expect(@menu.is_a?Menudsl).to eq(true)
  end

  it "Prueba para comprobar el formato" do
    expect(@menu.to_s).to eq("Combinado nº 1\n==============\nPlatos: (Hamburguesa con Huevo)(2.5 €), (Cerveza)(1.5 €), (Flan de chocolate)(1.3 €)\nPrecio total del menú: 5.3\nValor nutricional del menú: 690\nValor ambiental del menú: 800\n")
  end
end