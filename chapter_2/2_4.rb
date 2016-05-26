require_relative "linked_list.rb"

ll = LinkedList.new
ll.insert(1)
ll.insert(6)
ll.insert(0)
ll.insert(10)
ll.insert(5)
ll.insert(2)
ll.insert(3)
ll.insert(9)
ll.insert(-2)
ll.insert(11)

ll.each{|x| puts "#{x.data}"}
p ll.partition(5)

# => [[-2, 3, 2, 0, 1], [11, 9, 5, 10, 6]]

# CLASS METHOD
# def partition(num)
#   result = []
#   lower = []
#   higher = []
#   self.each do |n|
#     if n.data >= num
#       higher << n.data
#     elsif n.data < num
#       lower << n.data
#     end
#   end
#   return result << lower << higher
# end