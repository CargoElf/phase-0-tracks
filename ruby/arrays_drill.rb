def build_array(x, y, z)
  array_variable = []
  array_variable << x
  array_variable << y
  array_variable << z 
end


p build_array(1, "two", nil)

def add_to_array(a, b)
  a << b
end 

p add_to_array(["a", "b", "c", 1, 2], 3)



array = []

p array

array += [1, 2, 3, 4, 5]

p array

array.delete_at(2)

p array

array.insert(2, "hi")

p array

array.shift 

p array


p array.include?("hi") 

if array.include?("hi") == true
  p "This array contains the variable you wanted to find!"
else
end

array2 = ["there", "their", "they're"]

combo_array = array + array2

p combo_array