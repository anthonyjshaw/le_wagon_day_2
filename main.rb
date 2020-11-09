def game_start
  # Ask user for their name
  puts "Hi there contestant! What's your name?"
  print '> '
  name = gets.chomp.capitalize
  puts " "
case name
  when "Edwina" then puts "Welcome! Hopefully the writing's going well!"
  when "Chris" then puts "Welcome! Hopefully the PhD's going well!"
  when "Ella" then puts "Welcome! Hopefully the Masters'  going well!"
end
  puts "\nWell then, #{name}, come on down!"

  # Asks users for start of range
  puts "\nLet's play The Price Is Right!"
  puts "Choose a number: "
  print "> "

  # Asks users for end of range
  num1 = gets.chomp.to_i
  puts "Okay, choose another number, preferably higher: "
  print '> '
  num2 = gets.chomp.to_i

  # Get user to chase number of tries
  puts "Almost there, choose one more number: "
  print '> '
  num3 = gets.chomp.to_i


  # Range of guesses
  num_to_guess = rand(num1..num2)

  # User input number
  user_num = 0

# Number of attempts
  user_count = num3
  if user_count == 1
    puts "\nOooo, hard mode!"
  elsif user_count <= 3
    puts "\nOkay, a little difficult."
  elsif user_count >= 4 && user_count <= 10
    puts "\nOkay, I see, medium difficulty."
  else
    puts "Okay, easy mode."
  end

# Start message
  puts "\nAlright, now #{name}, please guess a number between #{num1} - #{num2}!"
  puts "\nYou have #{user_count} attempt(s) remaining!"

# Until loop
  until user_num == num_to_guess || user_count == 0
    print '> '
    user_num = gets.chomp.to_i
      if user_num > num_to_guess
        puts "Too high!"
        puts "You have #{user_count -= 1} attempt(s) remaining!"
      elsif user_num < num_to_guess
        puts "Too low!"
        puts "You have #{user_count -= 1} attempt(s) remaining!"  
      else
        puts "Winner, winner, chicken dinner!"
        user_count -= 1  
      end
    
  end

# Win/lose message
  if user_num == num_to_guess
  puts "The answer was #{num_to_guess}! You got it in #{num3 - user_count} attempt(s)!"
  else 
  puts "Aw, too bad, #{name}. The answer was #{num_to_guess}. You were within #{num_to_guess-user_num}. Better luck next time."
  end
end

def restart_game 
  r_game = 0
  until r_game == 'no'
    puts "Keep playing: 'yes' or 'no'?"
    puts " "
    print '> '
    r_game = gets.chomp
    if r_game == 'yes'
      puts " "
      puts "Lets play!"
      puts " "
      game_start
    elsif r_game == 'no'
      puts " "
      puts "Thank you for playing!"
      " "
    end
  end
end

# Game start
game_start
restart_game