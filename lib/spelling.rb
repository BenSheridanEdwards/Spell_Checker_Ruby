class Spelling
  def checker(string)
    word_array = string.split(' ')

    word_array.each do |word|
      next if ["hello", "there", "world", "I", "am", "Ben"].include?(word)
      string = string.gsub("#{word}", "~#{word}~")
    end
    return string
  end
end
