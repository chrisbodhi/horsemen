Warmup.destroy_all
Workout.destroy_all


warmups = [
  { title: "",
    rounds: "",
    reps: "",
    movement: "",
    weight: "",
    description: "",
    length: "",
    example: ""
  },
  { title: "",
    rounds: "",
    reps: "",
    movement: "",
    weight: "",
    description: "",
    length: "",
    example: ""
  },
  { title: "",
    rounds: "",
    reps: "",
    movement: "",
    weight: "",
    description: "",
    length: "",
    example: ""
  },
  { title: "",
    rounds: "",
    reps: "",
    movement: "",
    weight: "",
    description: "",
    length: "",
    example: ""
  },
  
]

warmups.each do |warmup|
  Warmup.create(
    title: warmup[:title],
    rounds: warmup[:rounds],
    movement: warmup[:movement],
    reps: warmup[:reps],
    weight: warmup[:weight],
    description: warmup[:description],
    length: warmup[:length],
    example: warmup[:example]
  )
end

workouts = [
  {title: "Batman", rounds: 'batman@example.com', reps: 'https://s3.amazonaws.com/mks_learn_app/batman.jpg', movement: 'DickGrayson4Life'},
  {title: "Catwoman", rounds: 'catwoman@example.com', reps: 'https://s3.amazonaws.com/mks_learn_app/catwoman.jpg', movement: 'I<3Bruce'}
]

workouts.each do |workout|
  Workout.create(
    title: workout[:title],
    rounds: workout[:rounds],
    movement: workout[:movement],
    reps: workout[:reps],
    weight: workout[:weight],
    description: workout[:description],
    length: workout[:length],
    example: workout[:example],
  )
end

