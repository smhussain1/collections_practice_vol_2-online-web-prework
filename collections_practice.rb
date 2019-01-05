
def begins_with_r(argument)
  
  x = argument.select { |word| word.start_with?('r') }
  if x.length == argument.length 
    return true
  else return false 
  end 
end

def contain_a(arg)
  arg.select { |str| str.include?('a') }
end 

def first_wa(arg)
  x = arg.grep(String)
  y = x.select { |word| word.start_with?('wa') }
  y.first 
end 

def remove_non_strings(arg)
  arg.grep(String)
end 

def count_elements(arr)
  arr.each_with_object(Hash.new(0)) { |g,h| h[g[:name]] += 1 }.
    map { |name, count| { :name=>name, :count=>count } }
end 

def merge_data(v1, v2)
  v1[0].values.map.with_index {|v, i| v2[i].merge(v)}
end


