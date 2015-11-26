require 'benchmark'
require_relative 'code.rb'

first = 'a' * 10000
second = 'a' * 100000
third = 'a' * 1000000
fourth = 'a' * 10000000

Benchmark.bm do |x|
  x.report ("n = 10,000     :") { caesar_cipher(first, 10) }
  x.report ("n = 100,000    :") { caesar_cipher(second, 10) }
  x.report ("n = 1,000,000  :") { caesar_cipher(third, 10) }
  x.report ("n = 10,000,000 :") { caesar_cipher(fourth, 10) }
end
