# create a Struct with :value, :next and :prev
Node = Struct.new(:value, :next, :prev)

class Lista
  # Clase para representar una lista doblemente enlazada 
  include Enumerable 
  attr_reader :head, :tail
  
  # Constructor que inicializa la cabeza y la cola a nulo
  def initialize 
    @head = nil
    @tail = nil
  end

 # Método para insertar por la cabeza en una lista doblemente enlazada   
  def insert_head(valor)
  if @head == nil
    @head = Node.new(valor, nil, nil)
    @tail = @head 
  else
    nodo = Node.new(valor, nil, nil)
    nodo.next = @head
    @head.prev = nodo
    @head = nodo
  end
  end

  # Método para insertar por la cola en una lista doblemente enlazada
  def insert_tail(valor)
    if @tail == nil
      @tail = Node.new(valor, nil, nil)
      @tail = @head
    else
      nodo = Node.new(valor, nil, nil)
      nodo.prev = @tail
      @tail.next = nodo
      @tail = nodo
    end 
  end
 
# Metodo necesario para el modulo enumerable
  def each
    nodo = @head
    while nodo != nil do
      yield (nodo.value)
      nodo = nodo.next
    end
  end 

  # Método para insertar varios nodos en la lista
  def insert_nodes(nodos)
    nodos.each{ |i|
    insert_head(i)
  }
end

# Método para extraer por la cabeza de la lista
def extract_head
  if @head == nil
    return nil
  end

  nodo = @head
  @head = @head.next

  if @head == nil
    @tail = nil
  else
    @head.prev = nil
    nodo.next = nil
  end
   nodo.value
end
 
#Método para extraer por la cola de una lista
def extract_tail
  if @tail == nil 
    return nil
  end

  nodo = @tail
  @tail = @tail.prev

  if(@tail == nil)
    @head = nil
  else
    @tail.next = nil
    nodo.prev = nil
  end
  nodo.value
end

 # Función que calcula el gei diario
def gei_diario
  nodo = @head
  total = 0
  while(nodo != nil)
    total += nodo.value.gei
    nodo = nodo.next
  end
  total
end
 # Función que calcula el gei anual 
def gei_año
  valor = gei_diario() * 365
  end

# Funcion que calcula el terreno de una dieta
def terreno
  nodo = @head
  total = 0
  while(nodo != nil)
    total += nodo.value.terreno
    nodo = nodo.next
  end
  total
end

# Salida formateada de una lista doblemente enlazada
def to_s
  ptr=@head
  a = String.new
  while ptr != nil do
    a <<  ptr [:value].to_s
    ptr=ptr[:next]
  end
  a
end
end