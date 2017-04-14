require 'pry'
require './lib/prices'

class Pizza

  include Prices

  attr_reader = :size, :type, :crust
  attr_accessor = :order

  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
    @order = {:size => size, :type => type, :crust => crust}
  end

  def full_order
    @order
  end

  def calculate_price
    pizza_prices.fetch(@order.values)
  end


end
