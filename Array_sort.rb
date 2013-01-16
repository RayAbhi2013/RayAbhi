def sort_array(a)
 (0...a.length).each do |k|
    if (a[k] > a[k+1]) then 
         y=a[k]
         a[k]=a[k+1]
         a[k+1]=y
     end
  end
puts("The Sorted Array:-- #{a}")
end
       
print("Enter the number of terms in the Array:")
n=gets().to_i
a=Array.new(n)
for i in (0...n) do
  print("Enter a number:")
  l=gets().to_i
 a[i]=l
end
sort_array(a)


 