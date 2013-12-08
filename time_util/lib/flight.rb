
class Flight

	attr_accessor :arrivals
	ALL = []

	def initialize(arrivals=[])
		@number = number
		@arrivals = arrivals
		ALL << self

	end

	def count_flights
		ALL.size
	end

end



