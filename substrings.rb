dictionary = ['string', 'other string', 'a third string', 'something else']

def substrings(string, dictionary)
  hash = {string => 0} 
  dictionary.each do |word|
    count = word.scan(/(?=#{string})/).count
    hash[string] += count
  end
  return hash
end

p substrings('string', dictionary)
