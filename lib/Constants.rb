require "colorized_string"
ColorizedString.colors   
ColorizedString.modes  
module Constants 
  CHOICES = [['r', 'rock'], ['p', 'paper'], ['s', 'scissors']]
  NTRY_TO_SYM = { # define entry to symbol (key to value)
    CHOICES[0][0] => :ROCK    , CHOICES[0][1]     => :ROCK    ,
    CHOICES[1][0] => :PAPER   , CHOICES[1][1]   => :PAPER   ,
    's' => :SCISSORS, 'scissors' => :SCISSORS
  } 
  VALID_ENTRIES = NTRY_TO_SYM.keys # create valid entries
  COMPUTER_CHOICES = NTRY_TO_SYM.values # define computer choices
  WINNERS = [
    # format: player choice, computer choice
    [:SCISSORS, :PAPER], 
    [:PAPER   , :ROCK], 
    [:ROCK    , :SCISSORS]
  ] 
  LOSERS = WINNERS.map { |pc,cc| [cc,pc] } # this will take the original WINNERS array and flip the symbols, thus returning a loss for the user/player
  INIT_STRINGS = [
    ColorizedString["You are about to enter a rock-paper-scissors best of 3 match."].colorize(:green), 
    ColorizedString["Press the return/enter key to continue..."].colorize(:green), 
    ""
  ]
end
