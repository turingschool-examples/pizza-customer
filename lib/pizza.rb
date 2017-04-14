require "pry"
require './lib/prices.rb'
class Pizza
  attr_reader :size, :type, :crust, :new_order
  include Prices
  
  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
    @new_order = {}
  end


  def full_order
    #I need to practice hashes! 
    new_order = {}
    new_order = {
      size: "medium",
      type: "cheese",
      crust: "deep dish"
    }
  end

  def calculate_price
    p.pizza_prices[:size].to_sym
    p.full_order[:size].to_sym

  end
end


