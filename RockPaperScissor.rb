puts "Welcome to Rock, Paper, Scissor game:"
continue = 'y'
while continue == 'y'
  puts "Press 1-Paper, 2-Rock, 3-Scissor"
  choice = gets.chomp
  while choice != choice.to_i.to_s
  puts "Please enter a valid number"
  choice=gets.chomp
  end
  puts "-------------------"
  number=Random.rand(0..2)
  if number +1 == choice.to_i
    puts "Draw. Try Again"
    next
  end
  puts number + 1
  puts choice.to_i
  case
  when number+1 == 1 && choice.to_i == 2
  puts "Computer chooses Paper. Paper Wraps Rock. You lose! "
  when number+1 == 2 && choice.to_i == 1
  puts "Computer chooses Rock. Paper Wraps Rock. You win!"
  when number+1 == 3 && choice.to_i == 1
  puts "Computer chooses Scissor. Scissor cuts paper. You lose!"
  when number+1 == 1 && choice.to_i == 3
  puts "Computer choose paper. Scissor cuts paper. You win!"
  when number+1 == 3 && choice.to_i == 2
  puts "Computer chooses Scissor. Rock smashes Scissor. You win"
  when number+1 == 2 && choice.to_i == 3
  puts "Computer chooses Rock. Rock smashes Scissor. You lose! "
  end
  puts "Would you like to play more:Press y to continue and other keys to end the game"
  continue=gets.chomp
  puts "-------------------"
end
