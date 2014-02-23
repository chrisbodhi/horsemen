desc "This task populates the Workout database."
task :populate_db => :environment do
  require 'csv'    
  puts "Load CSV..."
  csv_text = File.read('workouts.csv')
  csv = CSV.parse(csv_text, :headers => true)
  puts "Strip it out..."
  csv.each do |row|
    Workout.create!(row.to_hash)
    puts "Row created..."
  end
end
