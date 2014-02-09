require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'   # DB config
require './models/warmup'          # Add warmup class

get '/' do
  haml :index
end

post '/submit' do
  @warmup = Warmup.new(params[:warmup])
  if @warmup.save
    redirect '/warmup'
  else
    'Sorry, error!'
  end
end

get '/warmup' do
  @warmups = Warmup.all
  @warmup = @warmups.sample
  haml :warmup
end

get '/strength' do 
  @strengths = Model.where(["category = ?", strength]).all
  @strength = @strengths.sample
end

  # warmup
  # strength
  # power endurance
  # smmf
  # smmf - light load
  # recovery
  # rest
  # power [explosive]
  # power [cardio]
  # job specific - fuck!
  # job specific - long 
  # job specific - short
  # progression + >30 ladder
  # circuit - complimentary 
  # circuit - focus
  # circuit - short
  # strength [maintenance]
  # sport specific
  # oly lifting
  # endurance +60 minutes
  # density
  # progression [light]
  # accumulation




