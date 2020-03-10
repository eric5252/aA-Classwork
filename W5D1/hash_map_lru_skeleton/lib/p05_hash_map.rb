require_relative 'p04_linked_list'

class HashMap
  attr_accessor :count
  include Enumerable
  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { LinkedList.new }
    @count = 0
  end

  def include?(key)
    @store[key.hash % num_buckets].include? key
  end

  def set(key, val)
    unless self.include? key
      @store[key.hash % num_buckets].append(key,val)
      @count += 1
    end
    resize! if @count == num_buckets
  end

  def get(key)
    @store[key.hash % num_buckets].get(key)
  end

  def delete(key)
    if self.include? key
      @store[key.hash % num_buckets].remove(key)
      @count -= 1
    end
  end

  def each(&prc)
    @store.each do |list|
      list.each do |node|
        prc.call(node.key, node.val)
      end
    end
    return self
  end

  # uncomment when you have Enumerable included
  # def to_s
  #   pairs = inject([]) do |strs, (k, v)|
  #     strs << "#{k.to_s} => #{v.to_s}"
  #   end
  #   "{\n" + pairs.join(",\n") + "\n}"
  # end

  alias_method :[], :get
  alias_method :[]=, :set

  private

  def num_buckets
    @store.length
  end

  def resize!
    new_set = Array.new(num_buckets * 2) {LinkedList.new}
    @store.each do |bucket|
      bucket.each do |ele|
        new_set[ele.hash % (num_buckets * 2)].append(ele.key,ele.val)
      end
    end
    @store = new_set
  end

  def bucket(key)
    # optional but useful; return the bucket corresponding to `key`
  end
end
