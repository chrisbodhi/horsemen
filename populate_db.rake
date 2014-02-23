require 'csv'    
puts "This thing is working now..."

csv_text = File.read('workouts.csv')
csv = CSV.parse(csv_text, :headers => true)
puts csv
csv.each do |row|
  if Workout.create!(row.to_hash)
    puts "One down."
  else
    puts "error"
  end
end

# In console: $ rake populate_db.rake
# Run after $ rake db:seed