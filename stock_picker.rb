def stock_picker(stocks)
  profit = stocks[0] - stocks[1]
  best_buy = stocks[0]
  best_sell = stocks[1]
  stocks.each do |buy_price|
    stocks.each do |sell_price|
      if stocks.index(buy_price) < stocks.rindex(sell_price)
        temp_profit = buy_price - sell_price
        if temp_profit > profit
          profit = temp_profit
          best_buy = buy_price
          best_sell = sell_price
        end
      end
    end
  end
  return [stocks.index(best_buy), stocks.rindex(best_sell)]
end

p stock_picker([17,3,6,9,15,8,6,1,10])