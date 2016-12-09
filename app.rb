require 'sinatra'
require 'better_errors'
require './lib/faquiu'
require './lib/destino'
require './lib/destinomock'
require './lib/viento'
require './lib/vientomock'

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

enable :sessions
set :session_secret, 'thisIsAKleerSecret'

get '/' do
	erb :index
end

post '/iniciar' do
    erb :inicio
end

post '/resultado' do
    fuerza=params["fuerza"]
    ambiente=params["ambiente"]
    resultado=params["resultado"]
    viento=params["viento"]
    fuerza=fuerza.to_i
    if fuerza<=10 and fuerza>=0
        if ambiente == "produccion"
            destino = Destino.new #Random
            viento = Viento.new #Random
            faquiu = Faquiu.new destino, viento
            session["respuesta"] = faquiu.lanzar 5
        else
          destino = DestinoMock.new true #1
          if (viento == "1")
            viento = VientoMock.new true #+1
          else
            viento = VientoMock.new false #0
          end
          faquiu = Faquiu.new destino, viento
          session["respuesta"] = faquiu.lanzar fuerza.to_i
        end
    else
        session["respuesta"] = "El valor de la fuerza no es permitida"
    end
    erb :resultado
end