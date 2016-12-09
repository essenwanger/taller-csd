class Faquiu
    def initialize destino=Destino.new
        @destino = destino
    end
    def lanzar numeroJugador=0
        numeroDestino = @destino.aleatorio
        puts numeroJugador
        puts numeroDestino
        if (numeroJugador == numeroDestino) then
            @res = "Bien! El destino se hizo cargo de esa persona... 8-)"
            puts "igual=" + @res
        else
            @res = "Pucha... Lamentablemente esa persona seguirá viviendo un tiempo más :'("
            puts "diff=" + @res
        end
        return @res
    end
end