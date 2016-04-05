# Given two strings write a method
# to determine if one is a permuation
# of the other. Assume the comparison
# is case and space sensitive.

def sort_string(x)
  return x.split('').sort.join('')
end

def is_permutaiton?(p,q)
  return false if p.length != q.length
  sort_string(p) == sort_string(q)
end

str_1 = "Hello     "
str_2 = "   lolHe  "
str_3 = "   llohe  "
str_4 = "   ollHe "
puts is_permutaiton?()