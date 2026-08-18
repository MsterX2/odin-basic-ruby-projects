def stock_picker(array)
  buy = 0
  sell = 1
  profit = array[sell] - array[buy]
  temp_buy = buy
  temp_sell = sell
  array.each_with_index do |value, idx|
    if value < array[temp_buy]
      temp_buy = idx
      temp_sell = 0
    elsif (value > array[temp_sell] && idx > temp_buy) || temp_sell == 0
      temp_sell = idx
      temp_profit = array[temp_sell] - array[temp_buy]
      if temp_profit > profit
        buy = temp_buy
        sell = temp_sell
        profit = temp_profit
      end
    end
  end
  
  [buy, sell]
end

p stock_picker([17,3,6,9,15,8,6,1,10]) == [1,4]
p stock_picker([10,9,8,7,6,5,4,3,2,1]) == [0,1]
p stock_picker([5,5,5,5,5]) == [0,1]
p stock_picker([1,2,3,4,5]) == [0,4]
p stock_picker([7,1,5,3,6,4]) == [1,4]
p stock_picker([3,2,6,1,8,2,9,3]) == [3,6]
p stock_picker([5,4,3,2,1,10]) == [4,5]
p stock_picker([10,5]) == [0,1]
p stock_picker([3,5,2,8,1]) == [2,3]
p stock_picker([10,1,5,3,8]) == [1,4]
p stock_picker([9,1,5,3,8,2]) == [1,4]
p stock_picker([5,4,3,2,1]) == [0,1]