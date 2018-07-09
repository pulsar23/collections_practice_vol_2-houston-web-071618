def begins_with_r(array)
  value = true 
  
  array.each do |element|
    value = element.start_with? ("r")
    if value == false 
      return false
    end #if
  end #do
  value
end # begins_with_r


def contain_a(array)
  count = 0
  new_array = []
  
  array.each do |element|
    value = element.include? ("a")
    if value == true  
      new_array[count] = element
      count+=1 
    end #if
  end #do
  new_array
  
end # contain_a

def first_wa(array)
    array.each do |element|
    if element[0..1] == "wa"
      return element
    end
  end
  return
end #first_wa

def remove_non_strings(array)
 i = 0;
  element_to_delete = [];
  array.each do |element|
    if element.class != "String".class
      element_to_delete[i] = element
      i+=1
    end #if 
  end #do
  
  element_to_delete.each do |to_delete|
      array.delete(to_delete)
  end

  array.compact

end # remove_non_strings

def count_element(array)

 array.each_with_object(Hash.new(0)) do |item, hash|
  hash[item] += 1
 end  
  
end
  


