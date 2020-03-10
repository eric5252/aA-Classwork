class HashSet
  attr_reader :count

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(key)
    unless include?(key)
      @store[key.hash % num_buckets] << key
      @count += 1
    end
    resize! if count == num_buckets
  end

  def include?(key)
     @store[key.hash % num_buckets].include?(key)
  end

  def remove(key)
      if include?(key)
        @store[key.hash % num_buckets].delete(key)
        @count -= 1
      end
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
    new_set = Array.new(num_buckets * 2) {Array.new}
    @store.each do |bucket|
      bucket.each do |ele|
        new_set[ele.hash % (num_buckets * 2)] << ele
      end
    end
    @store = new_set
  end
end
