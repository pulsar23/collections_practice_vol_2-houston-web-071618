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

def count_elements(array)

#Note array is hash with same key values
new_array = []
hash_values = []
word = ""
  array.each do |hash_element|
     hash_values <<  hash_element.values
  end
  hash_values2 = hash_values.flatten
  #puts "hash_values2 = #{hash_values2}"
  
  element_uniq1 = hash_values.uniq
  element_uniq = element_uniq1.flatten
  #puts "element_uniq = #{element_uniq}"
  
  count1 = 0
  element_uniq.each do |uniq_element|
    hash_values2.each do |element|
      if element == uniq_element
        count1+=1
      end
      word = uniq_element
    end
    new_array << {name: word, count: count1}
    count1 = 0
  end
  new_array
  
end #count_elements

def merge_data(keys, data)
 #Combines two nested data structures
 # keys = [{:name=>"blake"}, {:name=>"blake"}, {:name=>"ashley"}]
 # data = [{"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"}, "ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}}]
 
 array = data[0].values.map.with_index {|x, i| keys[i].merge(x)}
 array
 
end # merge_data

def find_cool(array)
  # array = [{:name=>"ashley", :temperature=>"sort of cool"}, {:name=>"blake", :temperature=>"cool"}]
  #output = [{:name=>"blake", :temperature=>"cool"}]
  cool_array = []
  array.each do |data|
    data_values = data.values
    if data_values.include?("cool")
      cool_array << data
      return cool_array
    end
  end
end #find_cool

def organize_schools(array)
  
   city_hash = {}
  array.each do |type, data|
    city_name = data.values
    city = city_name[0]
    if city_hash[city] != nil
       city_hash[city] << type
    else
      city_hash[city] = [type]
    end
  end
  city_hash
  
end # organize_schools
  


