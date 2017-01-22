  
module Collatz
  def self.collatz (num)
    return num if num == 0
    return [1] if num == 1
    sequence = []
    if num.even?
      sequence << collatz(num / 2).insert(0, num)
    else
      sequence << collatz(num * 3 + 1).insert(0, num)
    end
      sequence.flatten
  end
end