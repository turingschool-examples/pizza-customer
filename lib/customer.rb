require "pry"
require_relative 'pizza'

class Customer < Pizza
  attr_reader :name, :address, :phone

  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
  end

  def profile
    profile = {
      name: name,
      address: address,
      phone: phone
    }
  end

  def order_in_place?
    exists?
  end

  def place_order(pizza, time)
    binding.pry
  end
end
