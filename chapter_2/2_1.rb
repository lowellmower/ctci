require_relative 'linked_list.rb'

list = LinkedList.new()

1.upto(5) do |i|
  list.insert(rand(i + 5))
end

list.each {|n| puts "Node: #{n.data}"}
puts "*** call uniq! ***"
list.uniq!
puts "******************\n"
list.each {|n| puts "Node: #{n.data}"}

# CLASS METHOD
# def uniq!
#   node_data = {}
#   prev_node = nil
#   self.each do |n|
#     if !node_data[n.data]
#       node_data[n.data] = 1
#       prev_node = n
#       next
#     end
#     j = n.next
#     prev_node.next = j
#     n = nil
#   end
# end