require './pig_latin'
pig = Pig_latin.new("lala")

describe "Pig_latin , #string" do 

        it "should return string name " do 
                expect(pig.string).to eq(["l", "a", "l", "a"])
        end
end

describe "Pig_latin, #pig_latinize" do
        it "should make the fist consonant the last letter with an \"ay\" and a hypen appended to it " do
                expect(pig.pig_latinize).to eq("ala-lay")
        end
end