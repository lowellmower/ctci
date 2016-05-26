# remove a node from a linked list

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
puts "***********"
puts ll.remove("c")
puts "***********"
ll.each{|x| puts "#{x.data}"}

# CLASS METHOD
# def remove(item)
#   prev_node = nil
#   return @head = @head.next if @head.data == item
#   self.each do |n|
#     if n.next.data == item
#       prev_node = n
#     elsif n.data == item
#       prev_node.next = n.next
#       return n
#     end
#   end
# end
