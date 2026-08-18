def substrings(word, substring_list)
  case_insensitive = word.downcase
  response = Hash.new(0)
  substring_list.each do |sub|
    substring_counter = case_insensitive.scan(sub).size
    response[sub] += substring_counter if substring_counter > 0
  end
  p response
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary) == { "below" => 1, "low" => 1 }

p substrings("Howdy partner, sit down! How's it going?", dictionary) == { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
