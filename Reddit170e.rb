input = "3\nAlice: Ace of Diamonds, Ten of Clubs\nBob: Three of Hearts, Six of Spades, Seven of Spades\nChris: Ten of Hearts, Three of Diamonds, Jack of Clubs"

card_values = { "Two"=>2, "Three"=>3, "Four"=>4, "Five"=>5, "Six"=>6, "Seven"=>7, "Eight"=>8, "Nine"=>9, "Ten"=>10, "Jack"=>10, "Queen"=>10, "King"=>10 }

all_lines = []
input.scan(/^(.*)$/) { |x| all_lines.push(x[0]) }

all_players = []
all_lines.each { |x| x.scan(/^(.*):/) { |y| all_players.push(y[0]) } }

all_cards = []
all_lines.each { |x| all_cards.push(x.scan(/\s(.{3,5})\sof/)) }
for i in ( 0.. ( all_cards.length - 1) )
  for j in ( 0.. ( all_cards[i].length - 1) )
    all_cards[i][j] = all_cards[i][j].join
  end 
end

associated_info = []
for i in ( 0.. ( all_players.length - 1 ) )
  associated_info.push( { "name" => all_players[i], "cards" => all_cards[i+1] } )
end
puts associated_info


