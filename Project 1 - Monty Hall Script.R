#Project 1

#Monty Hall Problem

# Team Members: Alisa Lu, Caroline Snell, Gurvaneet Singh, Jasim Azizi

select_goat_door <- function(prize_door, contestant_pick) {
  goat_door <- 0
  if(prize_door == 1 & contestant_pick == 2) {
    goat_door <- 3
  } else if(prize_door == 1 & contestant_pick == 3) {
    goat_door <- 2
  } else if(prize_door == 2 & contestant_pick == 1) {
    goat_door <- 3
  } else if(prize_door == 2 & contestant_pick == 3) {
    goat_door <- 1
  } else if(prize_door == 3 & contestant_pick == 1) {
    goat_door <- 2
  } else {
    goat_door <- 1
  }
  return(goat_door)
}

monty_hall_simulation <- function(num_times) {
  switch_counter <- 0
  stick_counter <- 0
  for(i in 0:num_times) {
    prize_door <- sample(1:3, 1)
    contestant_pick <- sample(1:3, 1)
    goat_door_or_host_door <- select_goat_door(prize_door, contestant_pick)
    if(prize_door == contestant_pick) {
      print("It is optimal to stick")
      stick_counter= stick_counter + 1
    } else {
      print("It is optimal to switch")
      switch_counter = switch_counter + 1
    }
  }
  print("It is optimal to stick ",stick_counter, " times and it is optimal to switch ", switch_counter, " times")
}




monty_hall_simulation(100)

