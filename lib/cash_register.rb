class CashRegister

	attr_accessor :total, :discount
	
	def initialize(discount = nil)
		@total = 0
		@discount = discount
		@items = []
	end


	def add_item(item, price, quantity=1)
		@item = item
		@price = price * quantity
		@quantity = quantity
		@total += @price
		while quantity > 0
			@items << item
			quantity -= 1
		end
	end

	

	def apply_discount
		if @discount == nil
			"There is no discount to apply."
		else
			@total = @total - (@total*@discount/100)
			"After the discount, the total comes to $#{@total}."
		end
	end

	def items
		@items
	end

	def void_last_transaction
		@total -= @price
		@items.pop
	end
end

