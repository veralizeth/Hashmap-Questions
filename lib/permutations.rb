
def permutations?(string1, string2)
  # raise NotImplementedError, "permutations? not implemented"
  return false if string1.length != string2.length
  # Return a boolean value.

  hash = {}
  
  string1.each_char do |char|
    hash[char] = true
  end

  string2.each_char do |letter|
    if hash[letter] != true
      return false
    end
  end

  return true
end
