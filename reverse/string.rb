class String
  def reverse0
    i, output = length, ""
    while i != 0
      i -= 1
      output += self[i]
    end
    output
  end
end