class Customer
  attr_reader   :order_frequency,
                :dates_ordered
  attr_accessor :name,
                :address,
                :phone_number

  def initialize(name, address, phone_number)
    @name           = name
    @address        = address
    @phone_number   = phone_number
    @order_in_place = false
    @dates_ordered  = []
    @order_frequency = 0
  end

  def profile
    {name: @name,
     address: @address,
     phone: @phone_number}
  end

  def order_in_place?
    @order_in_place
  end

  def place_order(pizza, date)
    @order_in_place = true
    @dates_ordered << [date]
    @order_frequency += 1
  end

  # def frequent_customer?
  #   return true unless @order_frequency < 3
  #   false
  # end

  def frequent_customer?
    years = dates_ordered.map { |date| date[0] }
    months = dates_ordered.map { |date| date[1] }
    day = dates_ordered.map { |date| date[2] }

    with_in_two_years = years.count {|year| Time.now.year || Time.now.year - 1}
    with_in_three_months = months.count { |m| (Time.now.mon..Time.now.mon - 2).include?(month) }
    if with_in_two_years >= 3 && with_in_three_months >= 3
      return true
    end
    false
  end

end
