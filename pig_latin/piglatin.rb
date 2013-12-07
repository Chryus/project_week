require 'awesome_print'
require 'debugger'
# THE CHALLENGE

# Create a Command Line Pig Latin translator.

# Pig Latin is a game of alterations played on the English language game. To create the Pig Latin form of an English word the initial consonant sound is transposed to the end of the word and an ay is affixed. Read Wikipedia for more information on rules.

# Example output:

# > pig_latin("banana") #=> "anana-bay"
class Pig_latin

        attr_accessor :string

        def initialize(string)
                @string = string.split(//)
        end

        
        def pig_latinize
                                 
                 if  string[0] == "a"|| string[0] == "e"||string[0] == "i" || string[0] == "o" ||
                         string[0] == "u"

                         start_with_vowel

                 else

                         vowel_index = string.find_index do |element|
                                  element == "a" || element == "e" || element == "i" || element == "o" || element == "u"
                         end

                last_consonant = []
                 
                last_consonant << string[0..vowel_index-1]

                ending = last_consonant.unshift("-").push("ay")

                whole_word = ending.unshift(string[vowel_index..-1])

                whole_word.join("")

                 end

        end
                         
        def start_with_vowel
                 vowel_index = string.find_index do |element|
                          element[0] == "a" || element[0] == "e" || element[0] == "i" || element[0] == "o" || element[0] == "u"
                 end
                
                way_array =[]

                way_array << string.push("way")

                way_array.join("")

        end

end        


pig = Pig_latin.new("lala") 

ap pig.pig_latinize