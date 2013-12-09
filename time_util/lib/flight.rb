
class Flight

	attr_accessor :arrivals, :number
	ALL = []

	def initialize(arrivals=[], number=rand(223..2046))
		@number = number
		@arrivals = arrivals
		ALL << self
	end

	def self.all
		ALL
	end

	def self.count
		ALL.size
	end

end



