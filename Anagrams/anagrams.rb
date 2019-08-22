
#PHASE I 

#TIME COMPLEXITY: O(n!)

#we would make all substrings, then rotate the substrings by their lengths 

def first_anagram?(str1, str2)
  str1.split("").permutation.include?(str2.split(""))
end 

#PHASEII 

#TIME COMPLEXITY: O(n^2)

def second_anagram?(str1, str2)
  string_2 = str2.split("")
  str1.each_char do |let| 
    if string_2.find_index(let) != nil 
      string_2_index = string_2.find_index(let)
      string_2.delete_at(string_2_index)
    end 
  end 
  string_2.empty? 
end 


#PHASE III 

#TIME COMPLEXITY: O(n+nlogn) => O(nlogn) #Faster than Phase II

def third_anagram?(str1, str2)
 str1.split("").sort == str2.split("").sort
end 

#PHASE IV

#TIME COMPLEXITY: O(n) #Faster then Phase III 

def fourth_anagram?(str1, str2)
  ans = Hash.new(0)
  
  str1.split("").each { |let| ans[let] += 1}
  str2.split("").each { |let| ans[let] -= 1}
  ans.all? {|k,v| v.zero?}

end


p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true

p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true

p third_anagram?("gizmo", "sally")    #=> false
p third_anagram?("elvis", "lives")    #=> true

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true