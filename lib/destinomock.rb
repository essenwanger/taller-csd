class DestinoMock < Destino
    def initialize ganar=true
        @ganar = ganar
    end
    def aleatorio
        if @ganar == true
            return 1;
        else
            return 10;
        end
    end
end