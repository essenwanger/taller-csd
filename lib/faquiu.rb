class Faquiu
    def initialize destino=Destino.new, viento = nil
        @destino = destino
        @viento = viento
    end
    def lanzar numeroJugador=0
        if (@viento.nil?) then
            numeroDestino = @destino.aleatorio
        else
            numeroDestino = @destino.aleatorio + @viento.factor
        end
        puts numeroJugador
        puts numeroDestino
        if (numeroJugador == numeroDestino) then
            puts "win"
            @res = "Bien! El destino se hizo cargo de esa persona... 8-)"
        else
            puts "loose"
            @res = "Pucha... Lamentablemente esa persona seguirá viviendo un tiempo más :'("
        end
        return @res
    end
end