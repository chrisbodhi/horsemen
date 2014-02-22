# In console: $ rake populate_db.rake
# Run after $ rake db:seed

require 'csv'    

csv_text = File.read('workouts.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  Workout.create!(row.to_hash)
end