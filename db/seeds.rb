Warmup.destroy_all
Workout.destroy_all


warmups = [
  { title: "Barbell Complex",
    rounds: "4",
    reps: "6",
    movement: "Six reps each of Deadlift, Row, Hang Clean, Front Squat, Push Press, Back Squat, &amp; Pushups",
    weight: "75",
    description: "Start at 75/85 pounds, add ten pounds for each round.",
    length: "",
    example: ""
  },
  { title: "The 12 Minute Kettlebell Complex",
    rounds:"",
    reps:"",
    movement: "1 minute each: One-arm swing [right], Figure 8 [right to left], One-arm swing [left], Figure 8 [left to right], Clean &amp; Press [right], Slasher to Halo, Clean &amp; Press [left], Slasher to Halo, KB Snatch [right], Right-Leg Lunge [left arm],
    KB Snatch [left], Left-Leg Lunge [right arm]",
    weight: "35",
    description: "",
    length: "12 minutes",
    example: ""
  },
  { title: "Sandbag Get-ups",
    rounds:"",
    reps: "40",
    movement: "20 sandbag get-ups for each shoulder",
    weight: "80",
    description: "",
    length: "",
    example: ""
  },
  { title: "Wall Ball, Sit-ups, Shoulder Stretch",
    rounds: "5",
    reps:"",
    movement: "10x wall balls, 20x sit-ups, shoulder dislocate stretch",
    weight:"",
    description: "",
    length: "",
    example: ""
  },
  { title: "Deadlift &amp; Kettlebell Clean and Press",
    rounds: "5",
    reps:"",
    movement: "10x deadlifts at 135 pounds, 5x one-arm kettlebell clean and press at 44 pounds",
    weight:"",
    description: "",
    length: "",
    example: ""
  },
  { title: "Hanging",
    rounds: "5",
    reps:"",
    movement: "One minute hanging on finger board with constant movement followed by 50 seconds of rest",
    weight:"",
    description: "",
    length: "",
    example: ""
  },
  { title: "Kettlebell Swings, Jumping Lunges, and Push-ups",
    rounds: "5",
    reps:"",
    movement: "20x kettlebell swings at 44 pounds, 7x jumping lunges, and 10 push-ups",
    weight:"",
    description: "",
    length: "",
    example: ""
  },
  { title: "Kettlebell Swing &amp; Push Press Ladder",
    rounds:"",
    reps:"",
    movement: "10-9-8-7-6-5-4-3-2-1 of two kettlebell swings at 70 pounds &amp; dumbbell push presses at 35 pounds in each hand",
    weight:"",
    description: "",
    length: "",
    example: ""
  },
  { title: "Power Clean (and Press)",
    rounds: "6",
    reps: 5,
    movement: "Power Clean and Press",
    weight: "135",
    description: "",
    length: "",
    example: ""
  },
  { title: "Squat Jump, Clapping Push-up, Shoulder Pole Press, PVC Halo",
    rounds: "5",
    reps:"",
    movement: "10x squat jumps, 10x clapping push-ups, 5x shoulder pole presses, 5x PVC halos",
    weight:"",
    description: "",
    length: "",
    example: ""
  },
  { title: "Step-Ups",
    rounds:"",
    reps:"",
    movement: "10 minutes of 20 inch step-ups with the weight of your choice: rucksack, kettlebell, dumbbell, &amp;c.",
    weight:"",
    description: "",
    length: "10 minutes",
    example: ""
  },
  { title: "The 10 Minute Kettlebell Complex",
    rounds:"",
    reps:"",
    movement: "One-arm swing, lunge in place with left leg, one-arm swing, lunge in place with right leg, one-arm clean and press with left arm, slasher to halo, one-arm clean and press with right arm, slasher to halo, two figure 8's; at 35, 44, or 53 pounds",
    weight:"",
    description: "",
    length: "10 minutes",
    example: ""
  },
  { title: "Turkish Get-ups and SAM Shoulder Drill",
    rounds: "5",
    reps:"",
    movement: "3x Turkish get-ups (go light and come straight to feet) and SAM shoulder drill: 5x pole press, 3x halo, 5x overhead squat",
    weight:"",
    description: "",
    length: "",
    example: ""
  },
  { title: "Row &amp; Power Clean",
    rounds: "3",
    reps:"",
    movement: "Row 250 meters and 5x Power Cleans",
    weight: "135",
    description: "",
    length: "",
    example: ""
  },
  { title: "2k Row",
    rounds:"",
    reps:"",
    movement: "Row 2km",
    weight:"",
    description: "",
    length: "8 minutes",
    example: ""
  },
  { title: "Turkish Get-up, Burpee, &amp; Step-Up",
    rounds: "4",
    reps:"",
    movement: "5x Turkish get-ups, 5x burpees, &amp; 10x step-ups",
    weight: "35",
    description: "",
    length: "",
    example: ""
  },
  { title: "Overhead Squat, Push-up, Pull-up",
    rounds: "3",
    reps:"",
    movement: "10x overhead squats, 10x push-ups, &amp; 3x pull-ups",
    weight:"",
    description: "",
    length: "",
    example: ""
  },
  { title: "Row &amp; Barbell Complex",
    rounds:"",
    reps:"",
    movement: "Row 500m and then complete 3x barbell complexes",
    weight:"",
    description: "",
    length: "",
    example: ""
  },
  { title: "Row then Deadlift and Push-up",
    rounds:"",
    reps:"",
    movement: "Row 500m and then complete three rounds: 10x deadlifts and 10x push-ups",
    weight: 135,
    description: "",
    length: "",
    example: ""
  },
  { title: "Tire Drag",
    rounds:"",
    reps:"",
    movement: "Drag a tire for one mile total",
    weight:"",
    description: "",
    length: "",
    example: ""
  }
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
