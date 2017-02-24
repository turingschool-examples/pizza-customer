class Customer
	attr_reader :name, :address, :phone

	def initialize(name, address, phone_number)
		@name = name
		@address = address
		@phone = phone_number
		@order = false
		@frequency = []
		@frequency_count = 0
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
		 
		@frequency.each do |time|
			if Range.new(DateTime.now.to_date - 14, DateTime.now.to_date).include?(time.to_date)
				@frequency_count += 1
			end
		end

		if @frequency_count > 2 
			true
		end
	end


end