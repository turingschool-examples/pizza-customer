require 'pry'
require './lib/prices'

class Pizza
  include Prices

  attr_reader :pizza
    def initialize(size, type, crust)
      @new_order = {:size => size, :type => type, :crust => crust}
    end

    def full_order
      @new_order
    end

    def calculate_price
      @new_order.each { |key, value| value = key puts value }
        binding.pry
    end
end

# weird prices hash syntax ...

# options.each {|key, value| puts "#{key} is #{value}" }
# size is {:small=>4.0, :medium=>5.5, :large=>7.0}
# type is {:cheese=>3.0, :special=>6.0}
# crust is {:regular=>3.0, :thin=>2.0, :"deep dish"=>4.0}

# @new_order = {:size => size, :type => type, :crust => crust}
# new_order = Hash.new { |h,k| h[k] = {} }
# options = Hash.new { |h, k| h[k] = Hash.new { |hh, kk| hh[kk] = {} } }
# options.fetch(:size)
  # new_order = {}
