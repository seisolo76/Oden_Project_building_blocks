def caesar_cipher(wrds, shift)
arr2 = []
array = wrds.split ""
array.each do |str| 
arr2.push(shift_chars(str.ord, shift))

end
rtrn_strng = arr2.join("")
end

def shift_chars(n, shift)
n2 = n + shift
if (65...90).include? n
#uppercase
 if n2 > 90
  n3 = ((n2 - 65) % 26) + 65
  return n3.chr 
  else
  return n2.chr
 end
elsif (97...122).include? n
#lowercase
if n2 > 90
  n3 = ((n2 - 97) % 26) + 97
  return n3.chr   
  else
  return n2.chr
end
else
return n.chr
end

end

