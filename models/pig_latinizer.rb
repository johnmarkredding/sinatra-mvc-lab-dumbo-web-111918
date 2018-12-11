class PigLatinizer
  def piglatinize(text)
    parsed_words = text.split(" ").map do |word|
      newword = ""
      if word.match(/^[aeiouAEIOU]/)
        newword = vowel_start(word)
      elsif word.match(/^[bcdfghjklmnpqrstvwxyz]+/)
        newword = consonant_start(word)
      else
        newword = word
      end
      newword
    end
    parsed_words.join(" ")
  end
  
  def vowel_start(word)
    "#{word[1..-1]}#{word[0]}way"
  end
  
  def consonant_start(word)
    "#{word[1..-1]}#{word[0]}ay"
  end
end