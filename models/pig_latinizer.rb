class PigLatinizer
  def parse(text)
    parsed_words = @text.split(" ").map do |word|
      newword = ""
      if word.match(/[aeiou]/)
      newword = "#{word[1,-1]}#{word[0]}ay"
      newword
    end
    parsed_words.join(" ")
  end
  
  def vowel_start(word)
    "#{word[1,-1]}#{word[0]}way"
  end
end