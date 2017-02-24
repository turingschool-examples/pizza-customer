class Customer
	attr_reader :name, :address, :phone

	def initialize(name, address, phone_number)
		@name = name
		@address = address
		@phone = phone_number
		@order = false
		@frequency = []
	end

	def profile
		{ name: name, address: address, phone: phone }
	end

	def order_in_place?
		@order
	end

	def place_order(pizza, time)
		@order = true
		@frequency << time
		pizza
	end

	def order_frequency
		@frequency.count
	end

	def frequent_customer?
		if @frequency.count > 2 && date_range > 2
			true
		end
	end

	def date_range
		count = 0
		@frequency[-3..-1].each do |time|
			if Range.new(DateTime.now.to_date - 30, DateTime.now.to_date).include?(time.to_date)
				count += 1
			end
		end
		count
	end

end