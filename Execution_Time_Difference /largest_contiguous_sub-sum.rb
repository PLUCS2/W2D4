require 'byebug'

#PHASE I 

#TIME COMPLEXITY: O(n+n^2) => O(n^2)
# def largest_contiguous_subsum(list)
#   ans = [] 
#   list.each_with_index do |num1, idx1|
#     ans << [num1]
#     (idx1+1..list.length-1).each do |idx2|
#       ans << list[idx1..idx2]
#     end
#   end 

#   sum = list.first
#   ans.each do | sub_arr |
#     if sub_arr.sum > sum
#       sum = sub_arr.sum
#     end
#   end
#   sum
# end 

#PHASE II

#TIME COMPLEXITY: O(n)

def largest_contiguous_subsum(list)
  
  sum = list.first
  reset = 0
  # debugger
      
  inner_sum = list.first
  if list.max < 0
    return list.max
  end
  (1...list.length).each do |i|
    # debugger
      if list[i] + inner_sum <= reset
      # debugger
        inner_sum = reset
      else 
        inner_sum += list[i]
      end
      # debugger

    if list[i] > sum || inner_sum > sum
      # debugger
      sum = inner_sum
    end
  end 
  # debugger
  sum 
end



list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

list_2 = [-5, -1, -3]
p largest_contiguous_subsum(list_2) # => -1 (from [-1])

 
