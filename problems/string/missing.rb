def missingCharacter(setence)
  list = [false] * 26
  letters = ('a'..'z').to_a

  setence = setence.downcase.split('')

  setence.each do |chars|
    next if chars == ' '

    index_letter = letters.find_index(chars)
    if index_letter
      list[index_letter] = true
    end
  end

  list.include?(false)
end

setence = 'The quick brown fox jumps over the little lazy dog'

puts missingCharacter(setence) ? "This setence not is pangram" : "This setence is pangram"