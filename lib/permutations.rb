
  
def count_chars_in_string (string)
  hash = {}

  string.each_char do |char|
    if hash.key?(char) 
      hash[char] += 1
    else
      hash[char] = 1
    end
  end

  return hash
end

def permutations?(string1, string2)
  # raise NotImplementedError, "permutations? not implemented"
  return false if string1.length != string2.length
  # Return a boolean value.

  hash_string1_counting = count_chars_in_string(string1)
  hash_string2_counting = count_chars_in_string(string2)

  return hash_string1_counting == hash_string2_counting

end
