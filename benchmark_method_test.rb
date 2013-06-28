gem "benchmark_method"

require 'benchmark_method'

class BenchmarkMethodTest
  include BenchmarkMethod

  def long_running
    ran = (0..10000000)
    total = 0
    ran.collect { |i| total +=i * 2 }
    puts "Total number is #{total}"
  end
  measure :long_running

end


def run!
  kls = BenchmarkMethodTest.new
  kls.long_running
  p "Done !!"
end

run!