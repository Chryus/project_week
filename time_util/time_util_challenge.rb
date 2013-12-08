# ## THE CHALLENGE

# You owe a big favor and have agreed to pick up a friend at the airport every Friday night. The airline on which your friend flies is cheap, but terrible with reporting delays and departure/arrival times. You soon realize that the 10pm flight is never on time and is usually late by more than an hour. If the plane has arrived at 11:15pm, 12:03am, 11:30pm, 11:23pm and 11:48pm, what is the average arrival time?

# Does the solution still work if your friend changes to a flight arriving 6 hours later? What about 12 hours later?

# ## Program Output
# The output should look something like this when run from the console:
# ```
# >> average_time_of_day(["11:51pm", "11:56pm", "12:01am", "12:06am", "12:11am"])
# => "12:01am"

# >> average_time_of_day(["6:41am", "6:51am", "7:01am"])
# => "6:51am"
# ```

# ###Hint
# Your digital ways will not help you, time of day is cyclical.
# You may need to use the Math and Time classes.
require 'ap'


class Flight < Time

	attr_accessor :arrivals
	ALL = []

	def initialize(arrivals=[])
		@arrivals = arrivals
		ALL << self
	end

	def parse_time
		reg = /(\d{2})/
		time_parse = arrivals.collect {|time| time.scan(reg)}.flatten
		time_out_of_strings = time_parse.collect{|time| time.to_i}
	end

	def hours_to_minutes
		hours = parse_time.values_at(0,2,4,6,8)
		hours.collect{|hour| hour * 60}
	end

	def add_extra_minutes
		minutes = parse_time.values_at(1,3,5,7,9)
  	hours_to_minutes.zip(minutes).map{|both| both.reduce(:+)}
	end

	def mean_minutes
		add_extra_minutes.reduce(:+)/arrivals.size
	end

	def mean_minutes_to_hours
		 (mean_minutes.to_f/60).round(2)
	end

	def hours_remainder
		mean_minutes_to_hours - mean_minutes_to_hours.round(0)
	end

	def hours_remainder_to_minutes
		#take the remainder in hours and convert to minutes, round to the whole minute, and convert to decimal
		((hours_remainder * 100)*60/100).round(0).to_f/100
	end

	def add_minutes_to_hours
		hours_remainder_to_minutes + mean_minutes_to_hours.round(0)
	end

	def return_average_flight_time
		reg = /(\.)/
		if add_minutes_to_hours > 12
			time = add_minutes_to_hours.to_s.gsub(reg, ":")
			time<<"am"
		else
			time = add_minutes_to_hours.to_s.gsub(reg, ":")
			time<<"pm"
		end
		time
	end

	#sprintf "%.2f""%.2f" % 

end

flight = Flight.new(["11:51pm", "11:56pm", "12:01am", "12:06am", "12:11am"])
p flight.add_extra_minutes
p flight.mean_minutes
p flight.mean_minutes_to_hours
p flight.hours_remainder
p flight.hours_remainder_to_minutes
p flight.add_minutes_to_hours
p flight.add_minutes_to_hours.to_s
p flight.return_average_flight_time

