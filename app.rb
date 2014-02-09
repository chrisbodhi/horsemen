require 'sinatra'
require 'sinatra/activerecord'
require './config/environments' #db config

get '/' do
  "Hola, mundo."  
end
