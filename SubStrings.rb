dictionary = [ "below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit" ]

def substrings(sentence, dictionary)
  sentence_array = sentence.downcase.split(" ")
  count = sentence_array.reduce(Hash.new(0)) do |hash, word|
    dictionary.each { |dictionary_element| hash[dictionary_element] += 1 if word.include?(dictionary_element) }
    hash
  end
  count  
end

puts substrings("below", dictionary)

# I will have a lot to unpack