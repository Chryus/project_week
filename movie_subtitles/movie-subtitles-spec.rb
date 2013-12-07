require './movie-subtitles'
#sub = Subtitle.new()

describe "Subtitle , #initialize" do 

			it 'Can initialize a subtitle' do
    		lambda {Subtitle.new("1/n 00:03:10,500 --> 00:00:13,000/n Elephant's Dream")}.should_not raise_error
  		end

  		it "a subtitle object has a file" do
  			sub = Subtitle.new("1/n 00:03:10,500 --> 00:00:13,000/n Elephant's Dream")
  			sub.input_file.should eq("1/n 00:03:10,500 --> 00:00:13,000/n Elephant's Dream")  
   		end
  end

describe "Subtitle , #match_seconds" do 

      it "should parse a .srt file and return an array with two indices" do
        sub = Subtitle.new("1/n 00:03:10,500 --> 00:00:13,000/n Elephant's Dream") 
        sub.match_seconds.size.should eq(2)
      end

      it "should return an array of second/millisecond time modes, with start time at index 0 and end time at index 1" do
        sub = Subtitle.new("1/n 00:03:10,500 --> 00:00:13,000/n Elephant's Dream") 
        sub.match_seconds.should eq(["10,500", "13,000"])
      end
  end

  describe "Subtitle , #replace_commmas" do 

      it "should replace all commas in an array with periods" do
        sub = Subtitle.new("1/n 00:03:10,500 --> 00:00:13,000/n Elephant's Dream")
        sub.replace_commas.should eq(["10.500", "13.000"])
      end
    end


describe "Subtitle , #add" do 
      it "should take an increment of time and move it forward a value of seconds" do
        sub = Subtitle.new("1/n 00:03:10,500 --> 00:00:13,000/n Elephant's Dream") 
        sub.shift_time_forward(2.500).should eq(["13.000", "15.500"])
      end
  end



#methods for sorting match data objects

  # describe "Subtitle , #regex" do 

  #       it "should take a key and return its value of time" do
  #       sub = Subtitle.new
  #       sub.regex("1
  #       00:03:10,500 --> 00:00:13,000
  #       Elephant's Dream")[:minutes1].should eq("03")
  #     end

  #     it "should print all the keys and values of the match data object" do
  #       sub = Subtitle.new
  #       sub.regex("00:03:10,500 --> 00:00:13,000")
  #       sub.access_match_data.should eq("")
  #     end
  # end







			# it "should have a file" do 
   #              expect(Subtitle.initialize("1.00:03:10,500 --> 00:00:13,000")).to eq([])
   #    end				

				# it "should take an increment of time and reformat non-number charactors to periods" do 
    #             expect(sub.operation_add([])).to eq([])
    #     end


    #     it "should shift the value of time forward a given amount of time" do 
    #             expect(sub.operation_add([])).to eq([])
    #     end
