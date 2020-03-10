class Integer
  # Integer#hash already implemented for you
end

class Array
  def hash
    self.map{|ele| ele.hash.to_s}.join("").hash
  end
end

class String
  def hash
    self.split("").map(&:ord).join("").to_i.hash
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    self.to_a.sort.hash
  end
end
