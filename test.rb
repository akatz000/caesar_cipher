require 'benchmark'
require_relative 'code.rb'

first = 'a' * 10000
second = 'a' * 100000
third = 'a' * 1000000
fourth = 'a' * 10000000

Benchmark.bm do |x|
  x.report{ caesar_cipher(first, 10) }
  x.report{ caesar_cipher(second, 10) }
  x.report{ caesar_cipher(third, 10) }
  x.report{ caesar_cipher(fourth, 10) }
end
