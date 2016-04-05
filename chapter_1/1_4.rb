# write a method to replace all spaces in a
# string with %20. You may assume the the string
# has enough space at the end to hold the
# addtional chars and that you are given the
# 'true' length of the string
# EXAMPLE: 'Mr John Smith    '
# OUTPUT: 'Mr%20John%20Smith'

def parameterize_spaces(str)
  str.split(' ').join('%20')
end

str = '    Mr         John   Smith    '
puts parameterize_spaces()