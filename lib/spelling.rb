class Spelling
  def checker(string)
    if string != "hello"
      return "~#{string}~"
    else
      return string
    end
  end
end