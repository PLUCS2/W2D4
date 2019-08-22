

#PHASE I 

#Time complexity: O(n^2)  (Quadratic)

# def my_min(list)
#   ans = list.first
#   list.each do |ele1|
#     list.each do |ele2|
#       if ele1 < ele2 && ele1 < ans 
#         ans = ele1 
#       end 
#     end 
#   end 
#   ans 
# end 



#PHASE II 

#Time Complexity: O(n)  (Linear)

def my_min(list)
  ans = list.first 
  list.each do |ele|
    if ele < ans 
      ans = ele 
    end 
  end 
  ans 
end 

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list )


