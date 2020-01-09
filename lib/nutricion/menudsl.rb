class Menudsl 
  include Enumerable

  attr_reader :platos, :precios, :valoresnutri, :valoresambi
  def initialize(name, &block)
    @name = name
    @platos = []
    @precios = []
    @valoresnutri = []
    @valoresambi = []

    if block_given?
      if block.arity == 1
        yield self
      else
       instance_eval(&block)
      end
    end
  end

  def to_s
    output = @name
    output << "\n#{'=' * @name.size}\n"
    output << "Platos: #{@platos.join(', ')}\n"
    output << "Precio total del menú: #{@precios.reduce(:+)}\n"
    output << "Valor nutricional del menú: #{@valoresnutri.reduce(:+)}\n"
    output << "Valor ambiental del menú: #{@valoresambi.reduce(:+)}\n"
  end

  def platos(options = {})
    plato = options[:nombre]
    nombre_plato = plato.name
    precio_plato = options[:precio]
    valor_nutri = options[:valornutri]
    valor_ambi = options[:valorambi]

    @valoresnutri << valor_nutri
    @valoresambi << valor_ambi
    @precios << precio_plato

  
    plato = "(#{nombre_plato})"
    plato << "(#{precio_plato} €)"
    @platos << plato
  end
end