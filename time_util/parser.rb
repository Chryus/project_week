require './lib/flight.rb'
require 'awesome_print'
require 'debugger'

class Parser 

flight_array = [["11:51pm", "11:56pm", "12:01am", "12:06am", "12:11am"]
["8:30pm", "9:30pm", "11:51pm", "11:56pm", "12:01am", "12:06am", "12:11am"]
["8:30am", "9:30am", "11:51am", "11:56am", "12:01pm", "12:06pm", "12:11pm"]
["1:30pm", "1:35pm", "2:51pm", "1:56pm", "2:01pm", "3:06pm", "2:00pm"]
["4:20pm", "5:35pm", "1:51pm", "6:56pm", "6:01pm", "8:06pm"]]

	def make_flight_objects
		flight_array.each do |arrival_times|
			flight = Flight.new(arrival_times, rand(223...2046))
		end
	end 	

end

# flight = Flight.new(["4:20pm", "5:35pm", "1:51pm", "6:56pm", "6:01pm", "8:06pm"])
# p flight.parse_time
# p flight.hours_to_minutes
# p flight.add_extra_minutes
# p flight.mean_minutes
# p flight.mean_minutes_to_hours
# p flight.hours_remainder
# p flight.hours_remainder_to_minutes
# p flight.add_minutes_to_hours
# p flight.add_minutes_to_hours.to_s
# p flight.return_flight




	#lol this does the same thing as the absolute value method (.abs)
	# def hours_remainder
	# 	if mean_minutes_to_hours.round(0) < mean_minutes_to_hours
	# 		mean_minutes_to_hours - mean_minutes_to_hours.round(0)
	# 	else
	# 		mean_minutes_to_hours.round(0) - mean_minutes_to_hours
	# 	end
	# end