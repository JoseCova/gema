class Basicplato
  # Clase que representa un plato básico
  attr_reader :nombre, :listaalim, :listagram
  include Comparable
  include Enumerable

  # Constructor que inicializa un plato con su nombre, lista de alimentos y lista de gramos de estos alimentos
  def initialize nombre, listaalim, listagram
    @nombre = nombre
    @listaalim = listaalim
    @listagram = listagram
  end

  # Función que devuelve el porcentaje de proteinas de un plato
  def proteins
    node1 = @listaalim.head
    node2 = @listagram.head
    porcentajegramos = 0
    while(node1 != nil && node2 != nil) do
      porcentajegramos += (node1.value.proteinas * node2.value) / 100
      node1 = node1.next
      node2 = node2.next
    end
    return porcentajegramos
  end
 
  # Función que devuelve el porcentaje de lípidos de un plato
  def lipidos
    node1 = @listaalim.head
    node2 = @listagram.head
    porcentajelipidos = 0
    while(node1 != nil && node2 != nil) do
      porcentajelipidos += (node1.value.lipidos * node2.value) / 100
      node1 = node1.next
      node2 = node2.next
    end
    return porcentajelipidos
  end

  # Función que devuelve el porcentaje de hidratos de un plato
  def hidratos
    node1 = @listaalim.head
    node2 = @listagram.head
    porcentajehidratos = 0
    while(node1 != nil && node2 != nil) do
      porcentajehidratos += (node1.value.carbohidratos * node2.value) / 100
      node1 = node1.next
      node2 = node2.next
    end
    return porcentajehidratos.round(1)
  end
 
  # Función que devuelve el valor calórico total
  def vct
    node1 = @listaalim.head
    valor = 0
    while(node1 != nil) do
      valor += node1.value.valor_energetico
      node1 = node1.next
    end
    return valor
  end
  
  # Salida formateada
  def to_s
    "#{@nombre}"
  end

  # Sobrecarga del método <=> comparadando los valores calóricos totales de cada plato
  def <=> another
  self.vct <=> another.vct
  end
end

# Clase que representa un plato entero
class  Plato < Basicplato
 
  # Se inicializa con un plato básico
  def initialize nombre, listaalim, listagram
    super(nombre, listaalim, listagram)
  end

  # Gases de efecto invernadero
  def gei 
     @listaalim.gei_diario
  end

  # Terreno consumido
  def terreno
    @listaalim.terreno
  end

  # Eficiencia
  def eficiencia
    valor = 0
    @listaalim.each{ |i| valor += i.valor_energetico}
    "#{valor}"
  end
  
  def huella 
    @listaalim.gei_diario + @listaalim.terreno
  end

  # Sobrecarga del operador <=> para  comparar dos platos
  def <=> another
    self.huella() <=> another.huella
    end
end