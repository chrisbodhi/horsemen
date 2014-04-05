require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'   # DB config
require './models/warmup'         # Add warmup class
require './models/workout'        # Add workout class

helpers do
  def get_strength
    @strengths = Workout.where(category: "strength").to_a
    @strength = @strengths.sample
  end

  def get_job_long
    @jobs_long = Workout.where(category: "job_long").to_a
    @job_long = @jobs_long.sample
  end

  def get_power_endure
    @power_endures = Workout.where(category: "power_endure").to_a
    @power_endure = @power_endures.sample
  end

  def get_smmf
    @smmfs = Workout.where(category: "smmf").to_a
    @smmf = @smmfs.sample 
  end

  def get_power_expl
    @power_expls = Workout.where(category: "power_expl").to_a
    @power_expl = @power_expls.sample
  end

  def get_fuck
    @fucks = Workout.where(category: "fuck").to_a
    @fuck = @fucks.sample
  end

  def get_power_card
    @power_cards = Workout.where(category: "power_card").to_a
    @power_card = @power_cards.sample
  end

  def get_job_short
    @job_shorts = Workout.where(category: "job_short").to_a
    @job_short = @job_shorts.sample
  end

  def get_progression
    @progressions = Workout.where(category: "progression").to_a
    @progression = @progressions.sample
  end

  def get_circuit
    @circuits = Workout.where(category: "circuit_comp").where(category: "circuit_short").to_a
    @circuit = @circuits.sample
  end

  def get_recovery
    @recoverys = Workout.where(category: "recovery").to_a
    @recovery = @recoverys.sample
  end

  def get_strength_maintenance
    @strength_maintenances = Workout.where(category: "strength_maintenance").to_a
    @strength_maintenance = @strength_maintenances.sample
  end

  def get_olympic_lift
    @olympic_lifts = Workout.where(category: "olympic_lift").to_a
    @olympic_lift = @olympic_lifts.sample
  end

  def get_circuit_focus
    @circuits = Workout.where(category: "circuit_focus").to_a
    @circuit_focus = @circuits.sample
  end

  def get_endurance
    @endurances = Workout.where(category: "endurance").to_a
    @endurance = @endurances.sample
  end

  def get_density
    @densities = Workout.where(category: "density").to_a
    @density = @densities.sample
  end

  def get_accumulation
    @accumulations = Workout.where(category: "accumulation").to_a
    @accumulation = @accumulations.sample
  end

  def strength_check(date)
    if date == 1 || date == 5 || date == 8 || date == 12 || date == 15 || date == 19 || date == 22 || date == 26
      get_strength
      @strength # don't think i need to actually return a thing here

    elsif date == 2 || date == 24
      get_job_long
      @job_long

    elsif date == 3 || date == 11 || date == 23 
      get_power_endure
      @power_endure

    elsif date == 4
      get_smmf
      @smmf

    elsif date == 9
      get_power_expl
      @power_expl

    elsif date == 10
      get_fuck
      @fuck

    elsif date == 16
      get_power_card
      @power_card

    elsif date == 17
      get_job_short
      @job_short

    elsif date == 18
      get_progression
      @progression

    elsif date == 25
      get_circuit
      @circuit

    else
      get_recovery
      @recovery
    end
  end

  def endurance_check(date)
    if date == 1 || date == 4 || date == 8 || date == 11 || date == 15 || date == 22 || date == 26
      get_power_endure
      return "Power Endurance Workout", @power_endure

    elsif date == 2
      get_job_short
      return "Job Specific - Short - Workout", @job_short

    elsif date == 3 || date == 16
      get_strength_maintenance
      return "Strength - Maintenance - Workout", @strength_maintenance

    elsif date == 5 || date == 18
      get_endurance
      return "Endurance Workout - 60+ Minutes", @endurance

    elsif date == 9
      get_circuit_focus
      return "Circuit - Focus - Workout", @circuit_focus

    elsif date == 10 || date == 23
      get_job_long
      return "Job Specific - Long - Workout", @job_long  

    elsif date == 12
      get_strength
      get_strength_maintenance
      return "Strength - Maintenance + Sport Specific Workout", @strength

    elsif date == 13
      get_olympic_lift
      return "Olympic Lifting", @olympic_lift

    elsif date == 17
      get_fuck
      return "Job Specific - FUCK!!! - Workout", @fuck

    elsif date == 19
      get_power_endure
      get_circuit
      return "Power Endurance + Circuit - Short - Workout", @power_endure

    elsif date == 24
      get_strength_maintenance
      return "Strength Maintenance + Run", @strength_maintenance

    elsif date == 27
      get_smmf
      return "SMMF - Light - Workout", @smmf

    else
      get_recovery
      return "Recovery", @recovery
    end
  end

  def job_check(date)
    case date
    when date == 1 || date == 5 || date == 10 || date == 15 || date == 19 || date == 26
      get_job_long
      return "Job Specific - Long - Workout", @job_long
    when date == 2 || date == 25
      get_strength
      return "Strength Workout", @strength
    when date == 3 || date == 11 || date == 17 || date == 24
      get_job_short
      return "Job Specific - Short - Workout", @job_short
    when date == 4 || date == 16
      get_power_endure
      return "Power Endurance Workout", @power_endure
    when date == 8 || date == 22
      get_fuck
      return "Job Specific - FUCK!!! - Workout", @fuck
    when date == 9
      get_circuit
      return "Circuit - Short - Workout", @circuit
    when date == 12
      get_density
      return "Density Workout", @density
    when date == 18
      get_smmf
      get_progression
      return "SMMF - Light + Progression - Light", @smmf
    when date == 23
      get_endurance
      return "Endurance - 30+ Minutes", @endurance
    else
      get_recovery
      return "Recovery", @recovery
    end
  end

  def maintain_check(date)
    case 
    when date == 1 || date == 26 
      get_circuit
      return "Circuit - Short - Workout", @circuit
    when date == 2 || 9 || 18 || 25
      get_strength
      return "Strength Workout", @strength
    when date == 4 || 11 || 16 || 23
      get_fuck
      return "Job Specific - FUCK - Workout", @fuck
    when date == 5
      get_progression
      return "Progression Workout", @progression
    when date == 8
      get_circuit
      return "Circuit - Complementary - Workout", @circuit
    when date == 12
      get_smmf
      return "SMMF - Light - Workout", @smmf
    when date == 15
      get_circuit_focus
      return "Circuit - Focus - Workout", @circuit_focus
    when date == 19
      get_accumulation
      return "Accumulation", @accumulation
    when date == 22
      get_endurance
      return "Endurance - 60+ Minutes", @endurance
    else
      get_recovery
      return "Recovery", @recovery
    end
  end
end

###########
# PAGES
###########

get '/' do
  @warmups = Warmup.all
  @warmup = @warmups.sample
  haml :index
end

get '/about' do
  haml :about
end

get '/strength' do
  @workout = strength_check(Time.now.day) 
  haml :strength
end

get '/endurance' do 
  haml :endurance
end

get '/job' do 
  haml :job
end

get '/maintain' do 
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
# circuit - complementary 
# circuit - focus
# circuit - short
# strength [maintenance]
# sport specific
# oly lifting
# endurance +60 minutes
# density
# progression [light]
# accumulation



