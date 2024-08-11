def stock_picker(prices)
  min_price = prices[0]
  max_profit = 0
  min_index = 0
  best_days = [0, 1]
  prices.each_with_index do |price, index|
    if price < min_price
      min_price = price
      min_index = index
    elsif (price - min_index) > max_profit && index > min_index
      max_profit = price - min_index
      best_days = [min_index, index]
    end
  end
  best_days
end

p stock_picker([17,3,6,9,15,8,6,1,10])