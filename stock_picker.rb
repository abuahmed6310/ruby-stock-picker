stocks = [17,3,6,9,15,8,6,1,10]
pair = []
best_pair = [0, 0]

stocks.each_with_index do |stock, index|
     i = index 
     while i < stocks.length do
        pair.push([index, i]) if stock < stocks[i] 
        i+=1
     end
end

pair.each do|a, b| 
  x = stocks[b] - stocks[a]
  best_pair = [a, b] if x > stocks[best_pair[1]] - stocks[best_pair[0]]
end

p best_pair
puts "Buy at day #{best_pair[0]} with $#{stocks[best_pair[0]]} and sell them on day #{best_pair[1]} with $#{stocks[best_pair[1]]} getting a profit of $#{stocks[best_pair[1]] - stocks[best_pair[0]]}."
