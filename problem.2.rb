# coding: utf-8

def fib(n) # memorized version is better.
  n == 1 ? 1 : n == 2 ? 2 : fib(n - 1) + fib(n - 2)
end
def fib_list_under(max)
  ary = []
  (1...max).each do |i|
    return ary if (k = fib(i)) >= max
    ary << k
  end
end
def solve(max)
  fib_list_under(max).
    select{|n| n % 2 == 0 }.
    #tap{|t| p t }.
    inject(0){|sum,m| sum += m }
end
p solve(4000000)
