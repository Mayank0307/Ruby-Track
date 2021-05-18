# class Interest
#   attr_accessor :principal, :time
#   INTEREST_RATE = 0.1

#   def initialize(principal, time)
#     @principal = principal
#     @time = time
    
#   end

#   def calculate_diffrence
#     simple_intrest = @principal + (@principal * INTEREST_RATE * @time)
#     compound_intrest = @principal * (1 + INTEREST_RATE)**@time
#     puts "%.2f" %(compound_intrest - simple_intrest)
#   end
# end


# input = ARGV
# principal = input[0].to_i 
# time = input[1].to_f
# obj = Intrest.new(principal, time)
# obj.calculate_diffrence


class Interest
  attr_writer :principal, :time
  INTEREST_RATE = 0.1

  def initialize
    yield self
  end

  def difference
    "%.2f" % (compound_interest - simple_interest)
  end

  private

  def simple_interest
    @principal + (@principal * @time * INTEREST_RATE)
  end

  def compound_interest
    @principal * (1 + INTEREST_RATE) ** @time
  end
end
principal = gets.to_f
time = gets.to_f
interest = Interest.new do |interest|
  interest.principal = principal
  interest.time = time
end
puts "#{interest.difference}"
