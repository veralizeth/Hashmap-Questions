
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

# the number of characters with odd number of occurences. 
# If this countcount happens to exceed 1 at any step, 
# we conclude that a palindromic permutation isn't possible for the string. 

def palindrome_permutation?(string)
  # raise NotImplementedError, "palindrome_permutation? not implemented"

  odd_ocurrences_count = 0
  num_ocurrences_hash = count_chars_in_string(string)

  num_ocurrences_hash.each do |key, value|
    odd_ocurrences_count += value % 2
  end
  
  return odd_ocurrences_count < 2
end
