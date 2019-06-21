class Card
  attr_accessor :rank, :suit
 
  def initialize(rank,suit)
     @rank = rank
     @suit = suit
  end

    def output_card
    puts "The #{@rank} of #{@suit}"
  end
end

    def self.random_card
      Card.new(rand(10), :spades)
    end


class Deck
       def initialize
        @cards = []
        suits = [:spades, :clubs, :diamonds, :hearts]
        ranks = [:ace, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king]

        suits.each do |suit|
          ranks.each do |rank|
            @cards << Card.new(rank, suit)
          end
        end
       end
     

         def shuffle
          @cards.shuffle!
         end

         def deal (number)
           if @cards.count < number
            puts "Can't deal many cards!"
            return 
          end
            number.times {@cards.shift.output_card}
        end

       def output
        @cards.each do |card|
          card.output_card
          end 
        end
      
end  

       deck = Deck.new
       deck.shuffle
       deck.output
      # deck.deal(2)
      

       


