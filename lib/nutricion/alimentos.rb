class Alimentos
  # Clase para representar un alimento
  attr_reader :nombre, :proteinas, :carbohidratos, :lipidos, :gei, :terreno
  include Comparable
  
  # Constructor que inicializa el objeto según los parametros obtenidos
  def initialize (nombre, proteinas, carbohidratos, lipidos, gei, terreno)
    @nombre = nombre
    @proteinas = proteinas
    @carbohidratos = carbohidratos
    @lipidos = lipidos
    @gei = gei
    @terreno = terreno
  end

  # Salida formateada
  def to_s
    "nombre: #{@nombre}, proteinas: #{@proteinas}, carbohidratos: #{@carbohidratos}, lipidos: #{@lipidos}, gei: #{@gei}, terreno: #{@terreno}" 
  end

  # Funcion que devuelve el valor energético de un alimento
  def valor_energetico
    valor = (@proteinas * 4) + (@lipidos * 9) + (@carbohidratos * 4)
  end

  # Definición del operador <=> según el valor energético de un alimento
def <=> an0ther
  self.valor_energetico <=> an0ther.valor_energetico()
end

end