def my_uniq(arr)
  new_arr = arr.uniq
  new_arr
end

# p my_uniq([123])

class Array

  def two_sum
    result = []
    self.each do |i|
      self.each do |j|
        if i < j && i + j == 0
          result << [i, j]
        end
      end
    end
    result
  end
end

def my_transpose(arr)
  result = arr.transpose
  result
end


def stock_picker(arr)
  result = []
  max = 0
  profit = 0

  (0...arr.length-1).each do |i|
    (i+1...arr.length).each do |j|
        profit = arr[j] - arr[i]
      if i < j && profit >= max
        max = profit# 3000
        result = [i,j] #0,2
      
      end

    end
  end
  result
end

# p stock_picker([1000, 500, 4000, 2000]) # [1, 2]
# p stock_picker([1000, 4000, 500, 2000]) # [0,1]

class TowerOfHanoi

  def initialize(arr)
    @arr = arr
  end
  # def [](pos)
  #   x,y = pos
  #   @
  # end
  # def []=(pos,val)

  # end
  def move
    input = gets.chomp.to_a
    start_move, end_move = input
    raise "Please input numbers between 0 and 2" if !start_move.between(0,2) && !end_move.between(0,2)
    first_move = @arr[start_move].pop
    @arr[end_move].push(first_move)
  end

  def won?
     return false if !@arr[0].empty? && !@arr[1].empty?
     return false if @arr[2] != @arr[2].sort.reverse
     true
  end


end