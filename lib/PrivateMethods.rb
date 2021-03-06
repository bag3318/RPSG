private # make private
# add module for private methods for the rpsg calculations
module PrivateMethods
  class << self
    # make a definition that asks for the players choice
    def player_choice
      loop do
        print "\nChoose: Rock (r), Paper (p), or Scissors (s): "
        choice = gets.chomp.downcase
        if ProtectedConstants::NTRY_TO_SYM.key?(choice)
          return ProtectedConstants::NTRY_TO_SYM[choice]
        elsif choice != ProtectedConstants::VALID_ENTRIES
          puts "\nThat entry is invalid. Please re-enter.\n"
        else
          return nil
        end
      end
    end
    # define outcomes of players choice against cpu
    def player_outcome(plays)
      return :WIN  if ProtectedConstants::WINNERS.include?(plays)
      return :LOSE if ProtectedConstants::LOSERS.include?(plays)
      return :TIE  if !:WIN | !:LOSE
    end
    # define final outcome that gives the result of who one the whole match
    def final_outcome(pl, co)
      return :WIN  if pl > co
      return :LOSE if pl < co
      # return :TIE  if pl = co
      # there will never be a tie for the final outcome due to the code in the `play()` method
    end
  end
end
public # make public again
