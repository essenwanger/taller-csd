require './lib/faquiu'
require './lib/destino'
require './lib/destinomock'
require './lib/viento'
require './lib/vientomock'

describe Faquiu do
    it "lanzamiento con fuerza 1 SIN viento y resultado POSITIVO" do
        destino = DestinoMock.new true #1
        viento = VientoMock.new false #0
        faquiu = Faquiu.new destino, viento
        res = faquiu.lanzar 1
        expect(res).to eq "Bien! El destino se hizo cargo de esa persona... 8-)"
    end
    it "lanzamiento con fuerza 2 CON viento y resultado POSITIVO" do
        destino = DestinoMock.new true #1
        viento = VientoMock.new true #1
        faquiu = Faquiu.new destino, viento
        res = faquiu.lanzar 2
        expect(res).to eq "Bien! El destino se hizo cargo de esa persona... 8-)"
    end
    
    it "lanzamiento con fuerza 1 SIN viento y resultado NEGATIVO" do
        destino = DestinoMock.new false #10
        viento = VientoMock.new false #0
        faquiu = Faquiu.new destino
        res = faquiu.lanzar 9
        expect(res).to eq "Pucha... Lamentablemente esa persona seguirá viviendo un tiempo más :'("
    end
    it "lanzamiento con fuerza 2 CON viento y resultado NEGATIVO" do
        destino = DestinoMock.new false #10
        viento = VientoMock.new true #1
        faquiu = Faquiu.new destino, viento
        res = faquiu.lanzar 9
        expect(res).to eq "Pucha... Lamentablemente esa persona seguirá viviendo un tiempo más :'("
    end
end