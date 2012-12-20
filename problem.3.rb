# coding: utf-8
#def prime?(n)
#  sieve = []
#  (1..n).each do |m|
#    sieve << m if prime?(m)
#  end
#  Math.sqrt(n)
#end

# 素因数分解するためには素数で順に割っていけば良いが,
# 素数表がなくても2+3以上の奇数で割ればいい.
def one_factor(n,m,answer=[])
  if n % m == 0
    if ((n/m) % m) == 0
      answer += [m, one_factor(n/m,m)]
    else
      answer += [m, n/m]
    end
  end
  answer.flatten
end
def factorize(n,answer=[])
 # one_factor(n,2)
  one_factor(n,3)
end

def solve(n)
  factorize(n).max
end

p ans = factorize(36)
p ans.inject(1){|sum,i| sum *= i }

