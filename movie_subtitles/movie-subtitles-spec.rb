require './movie-subtitles'
#sub = Subtitle.new()

describe "Subtitle , #initialize" do 

			it 'Can initialize a subtitle' do
    		lambda {Subtitle.new}.should_not raise_error
  		end

    

  		it "a subtitle has a file" do
  			sub = Subtitle.new
  			sub.input_file = "1.00:03:10,500 --> 00:00:13,000"
  			sub.input_file.should eq("1.00:03:10,500 --> 00:00:13,000")  
   		end
  end

describe "Subtitle , #regex" do 

      it "should parse a string into its component time modes" do
        sub = Subtitle.new
        sub.regex("00:03:10,500 --> 00:00:13,000").size.should eq(7)
      end
  end




			# it "should have a file" do 
   #              expect(Subtitle.initialize("1.00:03:10,500 --> 00:00:13,000")).to eq([])
   #    end				

				# it "should take an increment of time and reformat non-number charactors to periods" do 
    #             expect(sub.operation_add([])).to eq([])
    #     end


    #     it "should shift the value of time forward a given amount of time" do 
    #             expect(sub.operation_add([])).to eq([])
    #     end
