# implement an algorithm to determin if a string
# has all unique chracters. What if you cannot use
# additional data structures?

def unique_chars(str)
  return false if str.length > 128
  hash_map = {}
  str.each_char do |c|
    break if hash_map[c] and return false
    hash_map[c] = true
  end
  true
end

# test runner
true_str = "helo"
false_str = "hello"
puts unique_chars()