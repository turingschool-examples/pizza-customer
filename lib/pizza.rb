require_relative'prices'

class Pizza
	attr_reader :size, :type, :crust
	include Prices

	def initialize(size, type, crust)
		@size = size
		@type = type
		@crust = crust
	end

	def full_order
		{ size: size, type: type, crust: crust }
	end

	def calculate_price
		prices = []
		prices << pizza_prices[:size][size.to_sym]
		type.downcase == "cheese" ? prices <<  3.00 : prices << 6.00
		prices << pizza_prices[:crust][crust.to_sym]
		prices.reduce(:+)
	end
end