class FeeCalculator
  def calculate(nop,qty,print)
 	total_price = nop*qty
   p "Total Price: #{total_price}" if print
  end
end


class Products
  def show
    @fee = FeeCalculator.new.calculate(12, 10,false)
  end
end


class Orders
  def create
    @fee = FeeCalculator.new.calculate(11, 10,true)
  end
end



