require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'   # DB config
require './models/warmup'         # Add warmup class
require './models/workout'        # Add workout class

helpers do  
  def strength_check(date)
    if date == 1 || date == 5 || date == 8 || date == 12 || date == 15 || date == 19 || date == 22 || date == 26
      @strengths = Workout.where("category = ?", "strength").to_a
      @strength = @strengths.sample
      return "Strength Workout", @strength

    elsif date == 2 || date == 24
      @jobs_long = Workout.where("category = ?", "job_long").to_a
      @job_long = @jobs_long.sample
      return "Job Specific - Long - Workout", @job_long

    elsif date == 3 || date == 11 || date == 23 
      @power_endures = Workout.where("category = ?", "power_endure").to_a
      @power_endure = @power_endures.sample
      return "Power Endurance Workout", @power_endure

    elsif date == 4
      @smmfs = Workout.where("category = ?", "smmf").to_a
      @smmf = @smmfs.sample 
      return "SMMF Workout", @smmf

    elsif date == 9
      @power_expls = Workout.where("category = ?", "power_expl").to_a
      @power_expl = @power_expls.sample
      return "Power - Explosive - Workout", @power_expl

    elsif date == 10
      @fucks = Workout.where("category = ?", "fuck").to_a
      @fuck = @fucks.sample
      return "Job Specific - FUCK!!! - Workout", @fuck

    elsif date == 16
      @power_cards = Workout.where("category = ?", "power_card").to_a
      @power_card = @power_cards.sample
      return "Power - Cardio - Workout", @power_card

    elsif date == 17
      @job_shorts = Workout.where("category = ?", "job_short").to_a
      @job_short = @job_shorts.sample
      return "Job Specific - Short - Workout", @job_short

    elsif date == 18
      @progressions = Workout.where("category = ?", "progression").to_a
      @progression = @progressions.sample
      return "Progression + Less Than 30 Breathing Ladder Workout", @progression

    elsif date == 25
      @circuits = Workout.where("category = ?", "circuit_comp").where("category = ?", "circuit_short").where("category = ?", "circuit_focus").to_a
      @circuit = @circuits.sample
      return "Circuit - Complementary - Workout", @circuit

    else
      @recoverys = Workout.where("category = ?", "recovery").to_a
      @recovery = @recoverys.sample
      return "Recovery!", @recovery
    end
  end

  def endurance_check(date)
    if date == 1 || date == 4 || date == 8 || date == 11 || date == 15 || date == 22 || date == 26
      @power_endures = Workout.where("category = ?", "power_endure").to_a
      @power_endure = @power_endures.sample
      return "Power Endurance Workout", @power_endure
    elsif date == 2
      @job_shorts = Workout.where("category = ?", "job_short").to_a
      @job_short = @job_shorts.sample
      return "Job Specific - Short - Workout", @job_short
    elsif date == 3 || date == 16
      @strength_maintenances = Workout.where("category = ?", "strength_maintenance").to_a
      @strength_maintenance = @strength_maintenances.sample
      return "Strength - Maintenance - Workout", @strength_maintenance
    elsif date == 5 || date == 18
      return "Endurance Workout - 60+ Minutes", @endurance
    elsif date == 9
      @circuits = Workout.where("category = ?", "circuit_focus").to_a
      @circuit_focus = @circuits.sample
      return "Circuit - Focus - Workout", @circuit_focus
    elsif date == 10 || date == 23
      @jobs_long = Workout.where("category = ?", "job_long").to_a
      @job_long = @jobs_long.sample
      return "Job Specific - Long - Workout", @job_long    
    elsif date == 12
      @strengths = Workout.where("category = ?", "strength").to_a
      @strength = @strengths.sample 
      @strength_maintenances = Workout.where("category = ?", "strength_maintenance").to_a
      @strength_maintenance = @strength_maintenances.sample
      return "Strength - Maintenance + Sport Specific Workout", @strength
    elsif date == 13
      return "Olympic Lifting", @olympic_lift
    elsif date == 17
      @fucks = Workout.where("category = ?", "fuck").to_a
      @fuck = @fucks.sample
      return "Job Specific - FUCK!!! - Workout", @fuck
    elsif date == 19
      @power_endures = Workout.where("category = ?", "power_endure").to_a
      @power_endure = @power_endures.sample
      @circuits = Workout.where("category = ?", "circuit_comp").where("category = ?", "circuit_short").where("category = ?", "circuit_focus").to_a
      @circuit = @circuits.sample
      return "Power Endurance + Circuit - Short - Workout", @power_endure
    elsif date == 24
      @strength_maintenances = Workout.where("category = ?", "strength_maintenance").to_a
      @strength_maintenance = @strength_maintenances.sample
      return "Strength Maintenance + Run", @strength_maintenance
    elsif date == 27
      @smmfs = Workout.where("category = ?", "smmf").to_a
      @smmf = @smmfs.sample 
      return "SMMF - Light - Workout", @smmf
    else
      @recoverys = Workout.where("category = ?", "recovery").to_a
      @recovery = @recoverys.sample
      return "Recovery", @recovery
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

# Move all of these instance calls into the related helper date check so they get called only when needed - minimize those db calls!
get '/strength' do 
  haml :strength
end

get '/endurance' do 
  @circuits = Workout.where("category = ?", "circuit_comp").where("category = ?", "circuit_short").to_a
  @circuit = @circuits.sample
  @circuit_foci = Workout.where("category = ?", "circuit_focus").to_a
  @circuit_focus = @circuit_foci.sample
  @endurances = Workout.where("category = ?", "endurance").to_a
  @endurance = @endurances.sample
  @fucks = Workout.where("category = ?", "fuck").to_a
  @fuck = @fucks.sample
  @jobs = Workout.where("category = ?", "job").to_a
  @job = @jobs.sample
  @jobs_long = Workout.where("category = ?", "job_long").to_a
  @job_long = @jobs_long.sample
  @job_shorts = Workout.where("category = ?", "job_short").to_a
  @job_short = @job_shorts.sample
  @olympic_lifts = Workout.where("category = ?", "olympic_lift").to_a
  @olympic_lift = @olympic_lifts.sample
  @power_endures = Workout.where("category = ?", "power_endure").to_a
  @power_endure = @power_endures.sample
  @power_expls = Workout.where("category = ?", "power_expl").to_a
  @power_expl = @power_expls.sample
  @power_cards = Workout.where("category = ?", "power_card").to_a
  @power_card = @power_cards.sample
  @progressions = Workout.where("category = ?", "progression").to_a
  @progression = @progressions.sample
  @recoverys = Workout.where("category = ?", "recovery").to_a
  @recovery = @recoverys.sample
  @smmfs = Workout.where("category = ?", "smmf").to_a
  @smmf = @smmfs.sample  
  @sports = Workout.where("category = ?", "sport").to_a
  @sport = @sports.sample
  @strengths = Workout.where("category = ?", "strength").to_a
  @strength = @strengths.sample

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

get '/glossary' do
  haml :glossary
end

  # CATEGORIES
  # ADDED TO CSV, NOT A VARIABLE
  # accumulation
  # density
  # --skipped the API stuff
  # 
  # ALREADY ACCOUNTED FOR
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



