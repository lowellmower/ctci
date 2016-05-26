# find the kth to last element in single linked list

require_relative "linked_list.rb"

ll = LinkedList.new
ll.insert("a")
ll.insert("b")
ll.insert("c")
ll.insert("d")
ll.insert("e")
ll.insert("f")
ll.insert("g")
ll.insert("h")

ll.each{|x| puts "#{x.data}"}
puts"*** num from end ***\n"
node = ll.num_from_end(3)
puts node.data
puts"\n**********************\n"

# CLASS METHOD
# def num_from_end(n)
#   index = @head
#   trailing = @head
#   (n - 1).times do
#     index = index.next if index
#   end
#   while index && index.next
#     index = index.next
#     trailing = trailing.next
#   end
#   trailing
# end
