class PigLatinizer
  def piglatinize(text)
    parsed_words = text.split(" ").map do |word|
      newword = ""
      newword = "#{word[1..-1]}#{word[0]}ay"
      if word.match(/^[aeiouAEIOU]/)
        newword = vowel_start(word)
      end
      newword
    end
    parsed_words.join(" ")
  end
  
  def vowel_start(word)
    "#{word[1..-1]}#{word[0]}way"
  end
end