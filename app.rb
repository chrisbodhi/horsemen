require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'   # DB config
require './models/warmup'         # Add warmup class
require './models/workout'        # Add workout class

helpers do  
  def strength_check(date)
    if date == 1 || date == 5 || date == 8 || date == 12 || date == 15 || date == 19 || date == 22 || date == 26
      "Strength Workout"
      "#{@strength.title}"

    elsif date == 2 || date == 24
      "Job Specific - Long - Workout"
      "#{@job_long.title}"

    elsif date == 3 || date == 11 || date == 23 
      "Power Endurance Workout"
      "#{@power_endure.title}"

    elsif date == 4
      "SMMF Workout"
      "#{@smmf.title}"

    elsif date == 9
      "Power - Explosive - Workout"
      "#{@power_expl.title}"

    elsif date == 10
      "Job Specific - FUCK!!! - Workout"
      "#{@fuck.title}"

    elsif date == 16
      "Power - Cardio - Workout"
      "#{@power_card.title}"

    elsif date == 17
      "Job Specific - Short - Workout"
      "#{@job_short.title}"

    elsif date == 18
      "Progression + Less Than 30 Breathing Ladder Workout"
      "#{@progression.title}"

    elsif date == 25
      "Circuit - Complimentary - Workout"
      "#{@circuit.title}"

    else
      "Recovery!" 
      "#{@recovery.title}"
    end
  end
end

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
  @power_endures = Workout.where("category = ?", "power_endure").to_a
  @power_endure = @power_endures.sample
  @jobs = Workout.where("category = ?", "job").to_a
  @job = @jobs.sample
  @jobs_long = Workout.where("category = ?", "jobs_long").to_a
  @job_long = @jobs_long.sample
  @smmfs = Workout.where("category = ?", "smmf").to_a
  @smmf = @smmfs.sample  
  @power_expls = Workout.where("category = ?", "power_expl").to_a
  @power_expl = @power_expls.sample
  @fucks = Workout.where("category = ?", "fuck").to_a
  @fuck = @fucks.sample
  @power_cards = Workout.where("category = ?", "power_card").to_a
  @power_card = @power_cards.sample
  @job_shorts = Workout.where("category = ?", "job_short").to_a
  @job_short = @job_shorts.sample
  @progressions = Workout.where("category = ?", "progression").to_a
  @progression = @progressions.sample
  @circuits = Workout.where("category = ?", "circuit").to_a
  @circuit = @circuits.sample
  @recoverys = Workout.where("category = ?", "recovery").to_a
  @recovery = @recoverys.sample
  haml :strength
end

get '/endurance' do 
  @endurances = Workout.where("category = ?", "endurance").to_a
  @endurance = @endurances.sample
  @strengths = Workout.where("category = ?", "strength").to_a
  @strength = @strengths.sample
  @power_endures = Workout.where("category = ?", "power_endure").to_a
  @power_endure = @power_endures.sample
  @jobs = Workout.where("category = ?", "job").to_a
  @job = @jobs.sample
  @jobs_long = Workout.where("category = ?", "jobs_long").to_a
  @job_long = @jobs_long.sample
  @smmfs = Workout.where("category = ?", "smmf").to_a
  @smmf = @smmfs.sample  
  @power_expls = Workout.where("category = ?", "power_expl").to_a
  @power_expl = @power_expls.sample
  @fucks = Workout.where("category = ?", "fuck").to_a
  @fuck = @fucks.sample
  @power_cards = Workout.where("category = ?", "power_card").to_a
  @power_card = @power_cards.sample
  @job_shorts = Workout.where("category = ?", "job_short").to_a
  @job_short = @job_shorts.sample
  @progressions = Workout.where("category = ?", "progression").to_a
  @progression = @progressions.sample
  @circuits = Workout.where("category = ?", "circuit").to_a
  @circuit = @circuits.sample
  @recoverys = Workout.where("category = ?", "recovery").to_a
  @recovery = @recoverys.sample
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




