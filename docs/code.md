---
layout: default
permalink: /code.html
tite: "Master Code"
---

# Master Code

> the master code will look like this:

```
% rpsg
```

```ruby
#!/usr/bin/env ruby

=begin
|==============|
| Req Ruby Ver |
|--------------|
| >= v2.0.0    |
|==============|
=end

# create master class for rpsg
class RockPaperScissorsGame

  # create module that holds all contents for this script
  module Constants 
    
    # create 2d list of choices
    CHOICES = [['r', 'rock'], ['p', 'paper'], ['s', 'scissors']] 

    # define entry to symbol (key to value)
    NTRY_TO_SYM = { 
      CHOICES[0][0] => :ROCK    , CHOICES[0][1]     => :ROCK    ,
      CHOICES[1][0] => :PAPER   , CHOICES[1][1]     => :PAPER   ,
      CHOICES[2][0] => :SCISSORS, CHOICES[2][1]     => :SCISSORS
    } 

    # define valid entries
    VALID_ENTRIES = NTRY_TO_SYM.keys 

    # define computer choices
    COMPUTER_CHOICES = NTRY_TO_SYM.values 

    # create winners 2d list array with format: winning choice, losing choice
    WINNERS = [
      [:SCISSORS, :PAPER   ], 
      [:PAPER   , :ROCK    ], 
      [:ROCK    , :SCISSORS]
    ] 

    # this will take the original WINNERS array and flip the symbols, thus returning a loss for the user/player
    LOSERS = WINNERS.map { |winning_choice,losing_choice| [losing_choice,winning_choice] } 

  end

  protected_methods :Constants

  class << self
    # add continue method for asking the user if they want to play rock paper scissors
    def continue(str1,str2,str3)
      puts  str1 
      print str2
      gets 
      puts  str3
    end 
  end 

  # print out strings
  continue("You are about to enter a rock-paper-scissors best of 3 match.", "Press the return/enter key to continue...", "")
  
  # initialize variables
  def initialize
    # initialize variables and set all equal to zero
    @player_score = @computer_score = @ties = 0 
  end

  # define play method, this will be the main function for playing rock paper scissors
  def play(winning_score) 
    # make while loop
    while @player_score < winning_score && @computer_score < winning_score 
      puts "Player score: #{@player_score}, " + 
           "Computer score: #{@computer_score}, Ties: #{@ties}.\n"
      player = PrivateMethods.player_choice 
      computer = Constants::COMPUTER_CHOICES.sample # chooses a random option
      puts "\nPlayer chooses #{player.to_s.downcase}." 
      puts "Computer chooses #{computer.to_s.downcase}.\n" 
      case PrivateMethods.player_outcome [player, computer] 
      when :WIN
        puts "\n#{player.to_s.capitalize} beats #{computer.to_s.downcase}, player wins the round.\n"  
        @player_score += 1
      when :LOSE
        puts "\n#{computer.to_s.capitalize} beats #{player.to_s.downcase}, computer wins the round.\n" 
        @computer_score += 1 
      else 
        puts "\nTie, choose again\n" 
        @ties += 1
      end
    end
    puts "\nFinal score: player: #{@player_score}, " +
         "computer: #{@computer_score} (ties: #{@ties}).\n" 
    case PrivateMethods.final_outcome(@player_score, @computer_score)
    when :WIN 
      puts "\nPlayer wins!" 
    when :LOSE
      puts "\nComputer wins!" 
    else 
      puts "\nIt's a tie!" 
    end 
    gets
  end

  # add module for private methods for the rpsg calculations
  module PrivateMethods
    class << self
      # make a definition that asks for the players choice
      def player_choice
        loop do
          print "\nChoose: Rock (r), Paper (p), or Scissors (s): "
          choice = gets.chomp.downcase
          if Constants::NTRY_TO_SYM.key?(choice)
            return Constants::NTRY_TO_SYM[choice]
          elsif choice != Constants::VALID_ENTRIES
            puts "\nThat entry is invalid. Please re-enter.\n"
          else
            return nil
          end
          # # one may also do this:
          # case
          # when Constants::NTRY_TO_SYM.key?(choice)
          #   return Constants::NTRY_TO_SYM[choice]
          # when choice != Constants::VALID_ENTRIES
          #   puts "That entry is invalid. Please re-enter." 
          # end
        end 
      end 
      # define outcomes of players choice against cpu
      def player_outcome(plays)
        return :WIN  if Constants::WINNERS.include?(plays)
        return :LOSE if Constants::LOSERS.include?(plays)
        return :TIE  if !:WIN | !:LOSE
      end 
      # define final outcome that gives the result of who one the whole match
      def final_outcome(pl,co) 
        return :WIN  if pl > co 
        return :LOSE if pl < co
        return :TIE  if pl = co 
        # there will never be a tie for the final outcome due to the code in the play() method
      end 
    end
  end

  
  private_methods :PrivateMethods

end 

RockPaperScissorsGame.new.play(2) # best out of 3
```