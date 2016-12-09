require './lib/faquiu'
require './lib/destino'
require './lib/destinomock'

describe Faquiu do
    it "lanzamiento con fuerza automática y resultado positivo" do
        destino = DestinoMock.new true
        faquiu = Faquiu.new destino
        res = faquiu.lanzar 1
        expect(res).to eq "Bien! El destino se hizo cargo de esa persona... 8-)"
    end
    
    it "lanzamiento con fuerza automática y resultado negativo" do
        destino = DestinoMock.new false
        faquiu = Faquiu.new destino
        res = faquiu.lanzar 10
        expect(res).to eq "Pucha... Lamentablemente esa persona seguirá viviendo un tiempo más :'("
    end
end