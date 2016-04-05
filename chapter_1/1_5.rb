# Implement a method to perform basic string
# compression using the counts of repeated
# characters in a string. If the compressed
# string would not be shorter than the original
# string, return the original string.
# EXAMPLE: aabccccaaa
# OUTPUT: a2b1c4a3
# EXAMPLE: abcc
# OUTPUT: abcc

def string_compression(str)
  letter_count = 1
  new_string = ''
  str.split('').each_with_index do |c,idx|
    if c == str[idx+1]
      letter_count += 1
      next
    end
    new_string += (c + letter_count.to_s)
    letter_count = 1
  end
  return new_string if new_string.length < str.length
  str
end

str = 'aabccccccccccccc'
puts string_compression(str)