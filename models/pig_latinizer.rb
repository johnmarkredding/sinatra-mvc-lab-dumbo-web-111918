class PigLatinizer
  def parse(text)
    parsed_words = @text.split(" ").map do |word|
      newword = ""
      if word.size > 1
        newword = "#{word[1,-1]}-#{word[0]}ay"
      else
        newword = word
      end
      newword
    end
    parsed_words.join(" ")
  end
end