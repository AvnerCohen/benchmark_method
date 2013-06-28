# -*- encoding : utf-8 -*-
require "benchmark_method/version"
require 'benchmark'

module BenchmarkMethod

  def self.included(base)
    base.class_eval do
      extend ClassMethods
    end
  end

  module ClassMethods
    def measure(method)
      alias_method "measure_#{method}", method
      define_method(method) do |*args, &block|
        method_results = nil
        results_ms = Benchmark.realtime do
          method_results = self.send "measure_#{method}", *args, &block
        end
        str = "BenchmarkMethod::#{$$}::#{method.to_s}::Total Execution time #{(results_ms * 1000).round(2)}(ms)"
        defined?(Rails) ? (Rails.logger.error str) : (puts str) #hackish, i guess
        method_results
      end
    end
  end

end
