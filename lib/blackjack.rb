require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand (1..11)
end

def display_card_total (card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
   gets.chomp  
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card 
  
  sum = card1 + card2
  display_card_total(sum)
  sum
end

def hit?(number)
  prompt_user
  var = get_user_input
  if var == 'h'
    return number + deal_card
  elsif var == 's'
    return number
  else
    invalid_command
  end 
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  
  number = 0
<<<<<<< HEAD
  until number > 21
    welcome
    number = initial_round
    number = hit?(number)
=======
  while number < 21
    binding.pry
    welcome
    number = initial_round
    hit?(number)
>>>>>>> 1936e4ee5b9b5d7672be315c448e92b2769d3097
    display_card_total(number)
  end 
  end_game(number)
end
    
