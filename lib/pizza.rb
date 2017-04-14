require_relative 'prices'
require 'pry'
class Pizza
  include Prices
  attr_accessor :full_order
    def initialize(size, type, crust)
      @size   = size
      @type   = type
      @crust  = crust
      @full_order = {:size => size, :type => type, :crust => crust}
    end

    def calculate_price
      fo = full_order
      fos = fo[:size].to_sym
      if fo[:type] != "cheese"
        fot = :special
      else
        fot = fo[:type].to_sym
      end
      foc = fo[:crust].to_sym
      price = pizza_prices[:size][fos] + pizza_prices[:type][fot] + pizza_prices[:crust][foc]
      price
    end
end
