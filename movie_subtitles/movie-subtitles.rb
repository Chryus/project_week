# #1. convert time portion of srt file to string
#2.split string 
   # "1.00:03:10,500 --> 00:00:13,000".split(//)
# #3. use find_index to calculate the index values of minutes, seconds, milliseconds 
# #4 use join to return original srt 
#array = [1.00:03:10,500 --> 00:00:13,000]#["Elephant's Dream"]]
#{}"Elephant's Dream", 2.00:00:15,000 --> 00:00:18,000
#{}"at the left we can see..."]
#[[1.00:03:10,500 --> 00:00:13,000]["Elephant's Dream"]]

class Subtitle

#srts = [1.00:03:10,500 --> 00:00:13,000]

  attr_accessor :input_file

  def initialize
     @input_file
  end

  def regex(input_file)
    input_file.match(/(?<hour1>.*):(?<minutes1>.*):(?<seconds1>.*)--> (?<hour2>.*):(?<minutes2>.*):(?<seconds2>.*)/)
  end

  def convert_file_to_string()
    file.to_s
  end

  def operation_add

  end

 #puts a = "00:03:10,500 --> 00:00:13,000".match(/(?<hour1>.*):(?<minutes1>.*):(?<seconds1>.*)--> (?<hour2>.*):(?<minutes2>.*):(?<seconds2>.*)/)
end

