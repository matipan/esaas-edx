# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return 0 if arr.empty?
  arr.reduce(:+)
end

def max_2_sum arr
  return 0 if arr.empty?
  arr.max(2).reduce(:+)
end

def sum_to_n? arr, n
  return false if arr.empty?
  arr.uniq.combination(2).detect { |a,b| a + b == n }.nil? ? false : true
end
# DONE WITH PART 1
# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  (s =~ /[^aeiou\W{0}]/i) == 0 ? true : false
end

def binary_multiple_of_4? s
  return false if (s =~ /\A\d+\Z/).nil?
  s.to_i % 4 == 0 ? true : false
end
# DONE WITH PART 2
# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if (isbn.empty? || price <= 0)
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$%.2f" % price
  end
end
# DONE WITH PART 3
