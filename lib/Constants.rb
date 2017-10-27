# create module that holds all contents for this script
module Constants

  # create 2d list of choices
  protected # make protected
  CHOICES = [['r', 'rock'], ['p', 'paper'], ['s', 'scissors']]

  # define entry to symbol (key to value)
  protected # make protected
  NTRY_TO_SYM = {
    CHOICES[0][0] => :ROCK    , CHOICES[0][1] => :ROCK    ,
    CHOICES[1][0] => :PAPER   , CHOICES[1][1] => :PAPER   ,
    CHOICES[2][0] => :SCISSORS, CHOICES[2][1] => :SCISSORS
  }

  # define valid entries
  protected # make protected
  VALID_ENTRIES = NTRY_TO_SYM.keys

  # define computer choices
  protected # make protected
  COMPUTER_CHOICES = NTRY_TO_SYM.values

  # create winners 2d list array with format: winning choice, losing choice
  protected # make protected
  WINNERS = [
    [:SCISSORS, :PAPER   ],
    [:PAPER   , :ROCK    ],
    [:ROCK    , :SCISSORS]
  ]

  # this will take the original WINNERS array and flip the symbols, thus returning a loss for the user/player
  protected # make protected
  LOSERS = WINNERS.map { |winning_choice,losing_choice| [losing_choice,winning_choice] }

end
