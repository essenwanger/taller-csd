class Faquiu
    def initialize destino=Destino.new, viento = nil
        @destino = destino
        @viento = viento
        @objetivo
        @valorViento = 0
    end
    def lanzar numeroJugador=0
        if (@viento.nil?) then
            numeroDestino = @destino.aleatorio
        else
            @valorViento = @viento.factor
            numeroDestino = @destino.aleatorio + @valorViento
        end
        @objetivo = numeroDestino
        if (numeroJugador == numeroDestino) then
            @res = "Bien! El destino se hizo cargo de esa persona... 8-)"
        else
            @res = "Pucha... Lamentablemente esa persona seguirá viviendo un tiempo más :'("
        end
        return @res
    end
    
    def objetivo
        @objetivo
    end
    
    def valorViento
        @valorViento 
    end
    
end