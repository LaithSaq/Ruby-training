def substrings(string, dictionary)
    string.downcase!
    dictionary.reduce(Hash.new) do |ret,word|
        ret[word]=string.scan(word).size unless string.scan(word).size==0 
        ret
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)

p substrings("Howdy partner, sit down! How's it going?", dictionary)