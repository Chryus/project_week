require './lib/flight.rb'
require 'awesome_print'
require 'debugger'
require 'csv'
require 'date'

class Parser 

	attr_reader :flights_csv, :columns, :rows, :container

#["Carrier Code", "Date (MM/DD/YYYY)", "Flight Number", "Tail Number", "Origin Airport ", "Scheduled Arrival Time", "Actual Arrival Time", nil]
	def initialize(path_to_csv)
		@flights_csv = CSV.read(path_to_csv)
		@columns = flights_csv.first.pop
		@rows = flights_csv[1..-1]
		@output = []
  end

#["UA", "12/31/2013", "1675", "N39461", "TPA", "13:07", "12:59", nil], ["UA", "12/31/2013", "1686", "N24729", "SJU", "19:20", "19:37", nil]
	def parse_data
		rows.each do |row|
			hash = {}
			row.each_with_index do |attribute, i| 
				hash[columns[i]] = attribute
			end
			output << hash
		end 
		output
	end

end



	# def grab_flight_array
	# 	flight_array = [["11:51pm", "11:56pm", "12:01am", "12:06am", "12:11am"],
	# 	["8:30pm", "9:30pm", "11:51pm", "11:56pm", "12:01am", "12:06am", "12:11am"],
	# 	["8:30am", "9:30am", "11:51am", "11:56am", "12:01pm", "12:06pm", "12:11pm"],
	# 	["1:30pm", "1:35pm", "2:51pm", "1:56pm", "2:01pm", "3:06pm", "2:00pm"],
	# 	["4:20pm", "5:35pm", "1:51pm", "6:56pm", "6:01pm", "8:06pm"]]
	# end

	# def make_flight_objects
	# 	grab_flight_array.each do |arrival_times|
	# 		Flight.new(arrival_times)
	# 	end
	# end 
# p = Parser.new('united.csv')
# p.flights_csv
# parser.flights_csv.first

# [
#     [0] #<Flight:0x007fdd5393ae80 @number=1940, @arrivals=["11:51pm", "11:56pm", "12:01am", "12:06am", "12:11am"]>,
#     [1] #<Flight:0x007fdd5393ae58 @number=1806, @arrivals=["8:30pm", "9:30pm", "11:51pm", "11:56pm", "12:01am", "12:06am", "12:11am"]>,
#     [2] #<Flight:0x007fdd5393ae30 @number=1307, @arrivals=["8:30am", "9:30am", "11:51am", "11:56am", "12:01pm", "12:06pm", "12:11pm"]>,
#     [3] #<Flight:0x007fdd5393ae08 @number=658, @arrivals=["1:30pm", "1:35pm", "2:51pm", "1:56pm", "2:01pm", "3:06pm", "2:00pm"]>,
#     [4] #<Flight:0x007fdd5393ade0 @number=738, @arrivals=["4:20pm", "5:35pm", "1:51pm", "6:56pm", "6:01pm", "8:06pm"]>
# ]

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