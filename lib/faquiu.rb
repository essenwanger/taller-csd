class Faquiu
    def initialize
        @destino = Destino.new
    end
    def lanzar
        numero = @destino.aleatorio
        "Bien! El destino se hizo cargo de esa persona... 8-)"
    end
end