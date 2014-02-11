require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'   # DB config
require './models/warmup'         # Add warmup class
require './models/workout'        # Add workout class

get '/' do
  @warmups = Warmup.all
  @warmup = @warmups.sample
  haml :index
end

get '/about' do
  haml :about
end

# post '/submit' do
#   @warmup = Warmup.new(params[:warmup])
#   if @warmup.save
#     redirect '/'
#   else
#     'Sorry, error!'
#   end
# end

# get '/warmup' do
#   @warmups = Warmup.all
#   @warmup = @warmups.sample
#   haml :warmup
# end

get '/strength' do 
  @strengths = Workout.where("category = ?", "strength").to_a
  @strength = @strengths.sample
  @endurances = Workout.where("category = ?", "endurance").to_a
  @endurance = @endurances.sample
  @jobs = Workout.where("category = ?", "job").to_a
  @job = @jobs.sample
  @jobslong = Workout.where...
  @joblong = @jobslong.sample
  @smmfs = Workout.where...
  @smmf = @smmfs.sample
  haml :strength
end

get '/endurance' do 
  @endurances = Workout.where("category = ?", "endurance").to_a
  @endurance = @endurances.sample
  haml :endurance
end

get '/job' do 
  @jobs = Workout.where("category = ?", "job").to_a
  @job = @jobs.sample
  haml :job
end

get '/maintain' do 
  @maintains = Workout.where("category = ?", "maintain").to_a
  @maintain = @maintains.sample
  haml :maintain
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




