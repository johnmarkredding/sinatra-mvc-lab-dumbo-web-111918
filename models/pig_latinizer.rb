class PigLatinizer

  def piglatinize(text)
    cons = /^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]+/
    vows = /^[aeiouAEIOU}]/
    
    parsed_words = text.split(" ").map do |word|
      newword = ""
      if word.match(vows)
        newword = vowel_start(word)
      elsif word.match(cons)
        newword = consonant_start(word)
      else
        newword = word
      end
      newword
    end
    parsed_words.join(" ")
  end
  
  def vowel_start(word)
    word + "way"
  end
  
  def consonant_start(word)
    prefix = word[/^[bcdfghjklmnpqrstvwxyz]+/]
    "#{word[prefix.size..-1]}#{prefix}ay"
  end
end