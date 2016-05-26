class Node

  attr_accessor :next, :prev, :data

  def initialize(args={})
    @data  = args[:data]
    @next  = nil || args[:next]
    @prev  = nil || args[:prev]
  end

end

class LinkedList

  attr_accessor :head

  def initialize
    @head = nil
  end

  def empty?
    @head.nil?
  end

  def uniq!
    node_data = {}
    prev_node = nil
    self.each do |n|
      if !node_data[n.data]
        node_data[n.data] = 1
        prev_node = n
        next
      end
      j = n.next
      prev_node.next = j
      n = nil
    end
  end

  def each
    item = @head
    while item
      yield item
      item = item.next
    end
  end

  def insert(data)
    @head = Node.new(data: data, next: @head)
  end

  def insert_sorted(data)
    return insert(data) if self.empty? || data <= @head.data
    current_node = @head
    while current_node.next && current_node.next.data < data
      current_node = current_node.next
    end
    current_node.next = Node.new(data: data, next: current_node.next)
  end

end