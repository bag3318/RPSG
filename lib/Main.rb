# create master class for rpsg
class RockPaperScissorsGame

  require "rpsg/version.rb"

  require "Constants.rb"

  # protected_methods :Constants

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
  continue("\nYou are about to enter a rock-paper-scissors best of 3 match.", "\nPress the return/enter key to continue...", "")

  # initialize variables
  def initialize
    # initialize variables and set all equal to zero
    @player_score = @computer_score = @ties = 0
  end

  # define play method, this will be the main function for playing rock paper scissors
  def play(winning_score)
    # make while loop
    while @player_score < winning_score && @computer_score < winning_score
      puts "\nPlayer score: #{@player_score}, " +
           "Computer score: #{@computer_score}, Ties: #{@ties}.\n"
      player = PrivateMethods.player_choice
      computer = ProtectedConstants::COMPUTER_CHOICES.sample # chooses a random option
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
      puts "\nPlayer wins!\n"
    when :LOSE
      puts "\nComputer wins!\n"
    else
      puts "\nIt's a tie!\n"
    end
    print "\n[press the enter/return key to exit game]"
    gets
  end

  require "PrivateMethods.rb"

  # private_methods :PrivateMethods

end

RockPaperScissorsGame.new.play(2) # best out of 3

$end
