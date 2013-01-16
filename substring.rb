print("Enter a String of ten characters:")
n=gets().to_s
if (n.length==10)
  a=Array.new(n)
end
print("Enter a String of five characters:")
k=gets().to_s
if (k.length==5)
  b=Array.new(k)
end
if (a.include?(b))
 puts("b is a substring of a...")
else
 puts("b is a not a substring of a...")
end


