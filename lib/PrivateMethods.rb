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
