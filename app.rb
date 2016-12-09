require 'sinatra'
require 'better_errors'
require './lib/faquiu'
require './lib/destino'
require './lib/destinomock'

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
    ambiente=params["ambiente"]
    resultado=params["resultado"]
    fuerza=params["fuerza"]
    fuerza=fuerza.to_i
    if fuerza<=10 and fuerza>0
        if ambiente == "produccion"
            destino = Destino.new
            faquiu = Faquiu.new destino
            session["respuesta"] = faquiu.lanzar 5
        else
            destino = DestinoMock.new true #1
            faquiu = Faquiu.new destino
            session["respuesta"] = faquiu.lanzar fuerza.to_i
        end
    else
        session["respuesta"] = "El valor de la fuerza no es permitida"
    end
    erb :resultado
end