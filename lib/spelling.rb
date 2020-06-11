class Spelling
  def checker(string)
    word_array = string.split(' ')

    word_array.each do |word|
      break if ["hello", "there"].include?(word)
      string = string.gsub("#{word}", "~#{word}~")
    end
    return string
  end
end
