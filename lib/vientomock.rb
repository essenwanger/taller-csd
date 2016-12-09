class VientoMock < Viento
    def initialize fuerte=true
        @magnitud = fuerte
    end
    def factor
        if @magnitud == true
            return 1
        else
            return 0
        end
    end
end