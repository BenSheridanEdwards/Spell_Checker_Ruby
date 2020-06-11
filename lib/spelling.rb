class Spelling
  def checker(string)
    word_array = string.split(' ')
    
    word_array.each_with_index do |word, index|
      if ["hello", "there"].include?(word)
        break
      else
        word_array[index] = "~#{word}~"
      end
    end
    
    return word_array.join(' ')
  end
end
