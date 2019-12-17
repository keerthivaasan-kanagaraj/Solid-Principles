class FeeCalculator
  def calculate(nop,qty)
 	 nop*qty 
  end

  def calculate_and_print(nop,qty)
	p "Total Price: #{calculate(nop,qty)}" 
  end
end


class Products
  def show
    @fee = FeeCalculator.new.calculate(12, 10)
  end
end


class Orders
  def create
    @fee = FeeCalculator.new.calculate_and_print(11, 10)
  end
end



