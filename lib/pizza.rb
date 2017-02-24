require './lib/prices'
require 'pry'
class Pizza
	include Prices
	attr_reader :size, :type, :crust
	def initialize(size, type, crust)
		@size = size
		@type = type
		@crust = crust
		@new_order = Hash.new(0)
	end

	def full_order
		@new_order = ({size: size, type: type, crust: crust })
	end

	def calculate_price
		pizza_prices.each_pair do |total, index|
			total + index
		# binding.pry	
		end
		reduce(:+)
	end
	#pizza_prices[:size].values
	#=> [4.0, 5.5, 7.0]
	#pizza_prices[:type].values
	#=> [3.0, 6.0]
	# pizza_prices[:crust].values
	#=>[3.0, 2.0, 4.0, 3.0, 6.0]
	#select the pizza given, and reduce to get price

end