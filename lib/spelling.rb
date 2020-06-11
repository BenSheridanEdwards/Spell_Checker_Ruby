class Spelling
  def checker(string)
    word_array = string.split(' ')

    word_array.each do |word|
      if ["hello", "there"].include?(word)
        break
      else
        string = string.gsub("#{word}", "~#{word}~")
      end
    end
    return string
  end
end
