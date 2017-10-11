#!/usr/bin/env ruby

=begin
|====================================|
| Req Ruby Ver | Req Ruby Gems Ver   |
|--------------|---------------------|
| >= v2.0.0    | >= v2.6.0           |
|====================================|
=end


class PlayRockPaperScissorsGame

  require_relative "./../lib/rps/version.rb"

  # intiate the colorize gem
  require "colorized_string"
  ColorizedString.colors   
  ColorizedString.modes  

  require_relative "./../lib/Constants.rb"

  protected_methods :Constants

  class << self
    def continue(str1,str2,str3)
      puts  str1 
      print str2
      gets 
      puts  str3
    end 
  end 

  continue(Constants::INIT_STRINGS[0], Constants::INIT_STRINGS[1], Constants::INIT_STRINGS[2])

  def initialize
    @player_score = @computer_score = @ties = 0 
  end 
  def play(winning_score) 
    while @player_score < winning_score && @computer_score < winning_score 
      puts ColorizedString["Player score: #{@player_score}, "].colorize(:blue) + 
           ColorizedString["Computer score: #{@computer_score}, Ties: #{@ties}."].colorize(:blue) 
      player = PrivateMethods.player_choice 
      computer = Constants::COMPUTER_CHOICES.sample # chooses a random option
      puts ColorizedString["\nPlayer chooses #{player.to_s.downcase}."].colorize(:blue) 
      puts ColorizedString["Computer chooses #{computer.to_s.downcase}."].colorize(:blue)
      case PrivateMethods.player_outcome [player, computer] 
      when :WIN
        puts ColorizedString["#{player.to_s.capitalize} beats #{computer.to_s.downcase}, player wins the round."].colorize(:red) 
        @player_score += 1
      when :LOSE
        puts ColorizedString["#{computer.to_s.capitalize} beats #{player.to_s.downcase}, computer wins the round."].colorize(:red)
        @computer_score += 1 
      else 
        puts ColorizedString["Tie, choose again"].colorize(:red) 
        @ties += 1
      end
    end
    puts ColorizedString["\nFinal score: player: #{@player_score}, "].colorize(:blue) +
         ColorizedString["computer: #{@computer_score} (ties: #{@ties})."].colorize(:blue) 
    case PrivateMethods.final_outcome(@player_score, @computer_score)
    when :WIN 
      puts ColorizedString["Player wins!"].colorize(:red) 
    when :LOSE
      puts ColorizedString["Computer wins!"].colorize(:red)
    else 
      puts ColorizedString["It's a tie!"].colorize(:red) 
    end 
    gets
  end 

  require_relative "./../lib/PrivateMethods.rb"
  
  private_methods :PrivateMethods

end 

PlayRockPaperScissorsGame.new.play(2) # best of 3
