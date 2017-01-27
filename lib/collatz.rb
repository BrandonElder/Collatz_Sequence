module Collatz
  def self.collatz(num)
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


def self.longest
    max = 0
    n = 0
    (1..100).each do |i|
      if self.collatz(i).length > max
        max = self.collatz(i).length
        max_sequence = self.collatz(i)
        n = max_sequence[0]
      end
    end
    return n
  end
end

Collatz.longest