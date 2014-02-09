require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'   # DB config
require './models/model'          # Add models

get '/' do
  "Hola, mundo."  
end
