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
     puts "hola" +resultado
    if ambiente == "produccion"
        destino = Destino.new
        faquiu = Faquiu.new destino
        session["respuesta"] = faquiu.lanzar
    else
        destino = DestinoMock.new true
        faquiu = Faquiu.new destino
        session["respuesta"] = faquiu.lanzar resultado
    end
    erb :resultado
end