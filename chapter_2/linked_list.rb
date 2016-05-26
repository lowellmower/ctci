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

  def num_from_end(n)
    index = @head
    trailing = @head
    (n - 1).times do
      index = index.next if index
    end
    while index && index.next
      index = index.next
      trailing = trailing.next
    end
    trailing
  end

  def remove(item)
    prev_node = nil
    return @head = @head.next if @head.data == item
    self.each do |n|
      if n.next.data == item
        prev_node = n
      elsif n.data == item
        prev_node.next = n.next
        return n.data
      end
    end
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

  def partition(num)
    result = []
    lower = []
    higher = []
    self.each do |n|
      if n.data >= num
        higher << n.data
      elsif n.data < num
        lower << n.data
      end
    end
    return result << lower << higher
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