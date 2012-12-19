# coding: utf-8

def fib(n) # memorized version
  n == 1 ? 1 : n == 2 ? 2 : fib(n - 1) + fib(n - 2)
end
def solve(max)
  map{|i| fib(i) }.
  select{|m| m % 2 == 0 }
  inject(0){|sum,i| sum += i }
end
p solve(6)
