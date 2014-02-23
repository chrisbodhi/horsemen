require 'csv'    

csv_text = File.read('workouts.csv')
csv = CSV.parse(csv_text, :headers => true)

csv.each do |row|
  Workout.create!(row.to_hash)
end