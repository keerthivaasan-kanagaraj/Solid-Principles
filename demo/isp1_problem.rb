class FeeCalculator
  def calculate(nop,qty)
 	total_price = nop*qty
   p "Total Price: #{total_price}" 
  end
end


class Products
  def show
    @fee = FeeCalculator.new.calculate(12, 10)
  end
end

