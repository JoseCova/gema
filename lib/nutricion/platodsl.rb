class Platodsl
  attr_accessor :name, :alimentos

  def initialize(name, &block)
    @name = name
    @alimentos = []
 
  
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
    output << "Alimentos: #{@alimentos.join(', ')}\n"
  end
  

  def alimento(options = {})
    alimento = options[:descripcion]
    nombre_alimento = alimento.nombre
    alimento = "(#{nombre_alimento})"
    alimento << "(#{options[:gramos]} g)"
    @alimentos << alimento
  end
end

