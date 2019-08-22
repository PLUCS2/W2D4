#BRUTE FORCE
#TIME COMPLEXITY: O(n^2)

def two_sum?(arr, target_sum)
  arr.each_with_index do |ele1, idx1|
    arr.each_with_index do |ele2, idx2| 
      if idx2 != idx1 && ele1 + ele2 == target_sum
        return true 
      end 
    end 
  end
  false 
end 

def okay_two_sum?(arr, target_sum)
  arr = arr.sort
  return false if arr.empty?

  mid_idx = arr.length / 2
  if arr[mid_idx] < target_sum
    return arr[0...mid_idx].include?(target_sum - arr[mid_idx]) 
  # elsif 
  #   return okay_two_sum?(arr[0...mid_idx], target_sum)
  end 
end




arr = [0, 1, 5, 7]
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false