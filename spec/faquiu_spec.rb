require './lib/faquiu'

describe Faquiu do
    it "lanzamiento con fuerza automática y resultado positivo" do
        faquiu = Faquiu.new
        res = faquiu.lanzar
        expect(res).to eq "Bien! El destino se hizo cargo de esa persona... 8-)"
    end
    
    it "lanzamiento con fuerza automática y resultado negativo" do
        faquiu = Faquiu.new
        res = faquiu.lanzar
        expect(res).to eq "Pucha... Lamentablemente esa persona seguirá viviendo un tiempo más :'("
    end
end