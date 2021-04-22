class ProblemsString

  def missing(sentence)
    list = [false] * 26
    letters = ('a'..'z').to_a

    sentence_split = sentence.downcase.split('')

    sentence_split.each do |chars|
      next if chars == ' '

      index_letter = letters.find_index(chars)
      if index_letter
        list[index_letter] = true
      end
    end

    list.include?(false)
  end
end

sentence = 'The quick brown fox jumps over the little lazy dog'

p ProblemsString.new.missing(sentence) ? "This sentence not is pangram" : "This sentence is pangram"