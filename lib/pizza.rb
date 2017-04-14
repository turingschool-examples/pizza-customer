require './lib/prices'
require 'pry'

class Pizza
  include Prices

  def initialize(size, type, crust)
    @pizza = { :size => size,
               :type => special(type),
               :crust => crust }
  end

  def full_order
    @pizza
  end

  def calculate_price
    @pizza.reduce(0) do |total,  variable|
      total + pizza_prices[variable[0]][variable[1].to_sym]
    end
  end

  def special(type)
    type = 'special' unless type == 'cheese'
    type
  end

end