# Your TextAnalyzer model code will go here.
class PigLatinizer
 
  def piglatinize_word(string)
    first_letter =string[0].downcase
    if ["a", "e", "i", "o", "u"].include?(first_letter)
        "#{string}way"
    else
      consonants = []
      consonants <<string[0]
        if ["a", "e", "i", "o", "u"].include?(string[1]) == false
          consonants <<string[1]
          if ["a", "e", "i", "o", "u"].include?(string[2]) == false
            consonants <<string[2]
          end
        end
      "#{string[consonants.length..-1] + consonants.join + "ay"}"
    end
end

def single_word?(string)
  !string.strip.include? " "
end

    def piglatinize(string)
      binding.pry
      if (!single_word?(string))
        array = []
          string = string.split(" ")
          string.each do |word|
            word = piglatinize_word(word)
          end
        array = array.join(" ")
    else
      piglatinize_word(string)
      
    end
  end


end