require_relative 'prices'
require 'pry'

class Pizza

  include Prices

  attr_reader :full_order

  def initialize(size, type, crust)
    @full_order = { :size => size, :type => type, :crust => crust }
  end

  def special_topping
    if @full_order[:type] != "cheese"
      @full_order[:type] = "special"
    end
    @full_order
  end

  def calculate_price
    total_price = 0
    special_topping.each do |key, value|
      total_price += pizza_prices[key][value.to_sym]
    end
    total_price
  end

end