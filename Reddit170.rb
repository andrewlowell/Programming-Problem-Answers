input = "3\nAlice: Ace of Diamonds, Ten of Clubs\nBob: Three of Hearts, Six of Spades, Seven of Spades\nChris: Ten of Hearts, Three of Diamonds, Jack of Clubs"

card_values = { "Two"=>2, "Three"=>3, "Four"=>4, "Five"=>5, "Six"=>6, "Seven"=>7, "Eight"=>8, "Nine"=>9, "Ten"=>10, "Jack"=>10, "Queen"=>10, "King"=>10 }

all_lines = []
input.scan(/^(.*)$/) { |x| all_lines.push(x[0]) }
all_players = []
for i in (1..(all_lines.length - 1))
  all_players.push({ "name"=>"#{all_lines[i].scan(/^(.*):/)[0]}", "cards"=>all_lines[i].scan(/\s(.{3,5})\sof/) })
end

puts all_players
