dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit","down"]


def substrings(str, dictionary)
buff = Hash.new
str.downcase!

   dictionary.each { |word| 
   count = str.scan(word).length
   buff[word] = count unless count < 1
   }
return buff
end


substrings("down horn", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
