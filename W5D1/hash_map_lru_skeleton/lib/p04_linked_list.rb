class Node
  attr_reader :key
  attr_accessor :val, :next, :prev

  def initialize(key = nil, val = nil)
    @key = key
    @val = val
    @next = nil
    @prev = nil
  end

  def to_s
    "#{@key}: #{@val}"
  end

  def remove
    # optional but useful, connects previous link to next link
    # and removes self from list.
  end
end

class LinkedList
  include Enumerable
  def initialize
    @head = Node.new(:first, nil)
    @tail = Node.new(:last, nil)
    @head.next = @tail
    @tail.prev = @head
  end
  def inspect
    p "#{[@key, @val, self.next.key]}"
  end
  def [](i)
    each_with_index { |link, j| return link if i == j }
    nil
  end

  def first
    @head.next
  end

  def last
    @tail.prev
  end

  def empty?
    @head.next.val == @tail.val
  end

  def get(key)
    self.each{|node| return node.val if node.key == key}
    nil
  end

  def include?(key)
    self.each{|node| return true if node.key == key}
    false
  end

  def append(key, val)
    node = Node.new(key,val)
    node.prev = @tail.prev
    node.next = @tail
    @tail.prev.next = node
    @tail.prev = node
  end

  def update(key, val)
    self.each do |node|
      node.val = val if node.key == key
    end
  end

  def remove(key)
    self.each do |node|
      if node.key == key
        node.prev.next = node.next
        node.next.prev = node.prev
        node.next = nil
        node.prev = nil
        break
      end
    end
  end

  def each(&prc)
    node = first
    until node == @tail
      prc.call(node)
      node = node.next
    end
    self
  end




  # uncomment when you have `each` working and `Enumerable` included
  def to_s
    inject([]) { |acc, link| acc << "[#{link.key}, #{link.val}]" }.join(", ")
  end
end
