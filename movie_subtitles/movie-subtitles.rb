# #1. convert time portion of srt file to string
#2.split string 
   # "1.00:03:10,500 --> 00:00:13,000".split(//)
# #3. use find_index to calculate the index values of minutes, seconds, milliseconds 
# #4 use join to return original srt 
#array = [1.00:03:10,500 --> 00:00:13,000]#["Elephant's Dream"]]
#{}"Elephant's Dream", 2.00:00:15,000 --> 00:00:18,000
#{}"at the left we can see..."]
#[[1.00:03:10,500 --> 00:00:13,000]["Elephant's Dream"]]

require 'ap'

class Subtitle

#srts = [1.00:03:10,500 --> 00:00:13,000]

  attr_accessor :input_file

  def initialize(input_file)
     @input_file = input_file
  end

  def match_seconds
    input_file.scan(/(?<=\:)(\d{2},\d{3})/).flatten#/(?<hour1>.*):(?<minutes1>.*):(?<seconds1>.*)--> (?<hour2>.*):(?<minutes2>.*):(?<seconds2>.*)/).flatten
  end

  def replace_commas
    match_seconds.collect {|index| index.gsub(/,/, ".")}
  end

  def shift_time_forward(time)
    replace_commas.collect{|index| (index + time)}
  end
end

# sub = Subtitle.new("1/n 00:03:10,500 --> 00:00:13,000/n Elephant's Dream")
# ap sub.regex

# sub = Subtitle.new("1
#         00:03:10,500 --> 00:00:13,000
#         Elephant's Dream")
# sub.input_file
# ap sub.regex

#.sort
# flatten
# sort

  # def access_time_values
  #   reg = regex
  #   num = reg.length
  #   num.times do |index|
  #     if reg.captures[index].
  #     end
  #     #{}"Capture ##{index}: #{reg.captures[index]}"
  #   end
  # end

