
def intersection(list1, list2)
  # raise NotImplementedError, "Intersection not implemented"
  intersec_result = []

  hash = {}

  list1.each do |number|
    hash[number] = true
  end

  list2.each do |number|
    if !hash[number].nil?
      intersec_result << number
    end
  end

  return intersec_result
end