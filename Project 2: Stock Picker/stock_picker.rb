def stock_picker(arr)
  buff = Hash.new
  arr.each_index do |i|
    arr.map.with_index(i) do |e,j|
      if arr[j] && arr[j] > arr[i]
        buff[[i,j]] = arr[j] - arr[i]
      end
    end
  end
  max = buff.values.max
  buff = buff.key(buff.values.max)
  print "#{buff} \n"
  puts "Buy on index: #{buff[0]} and Sell on index: #{buff[1]}"
  puts "Profit: $#{max}"
end


stock_picker([17,3,6,9,15,8,6,1,10])
