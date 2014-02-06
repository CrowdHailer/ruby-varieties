class String
  def reverse0
    i, output = length, ""
    while i != 0
      i -= 1
      output += self[i]
    end
    output
  end
  
  def reverse1 output = []
    for i in (1..length)
      output << self[-1*i]
    end
    output.join
  end
  
  def reverse2
    array = split("")
    while l = array.pop
     result = result ? result + l : l
    end
    result
  end
  
  def reverse3
    chars.inject{ |mem, char| char + mem }
  end
end