class Card
	RANKS = %w(2 3 4 5 6 7 8 9 10 J Q K A)
	SUITS = %w(Spade Heart Club Diamond)

	attr_accessor :rank, :suit

	def initialize(id)
		self.rank = RANKS[id.to_i % 13]
		self.suit = SUITS[id.to_i % 4]
	end
end

class Deck
	attr_accessor :cards

	def initialize
		self.cards = (0..51).to_a.shuffle.collect{ |id| Card.new(id)}
	end
end

class Array
	def shuffle!
		n = length
		for i in 0..n
			r = rand(n-i) + i
			self[r],self[i] = self[i],self[r]
		end
		self
	end
	
	def shuffle
		dup.shuffle!
	end
end

d = Deck.new
d.cards.each do |card|
	p "#{card.rank} #{card.suit}"
end					