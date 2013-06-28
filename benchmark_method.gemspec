# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'benchmark_method/version'

Gem::Specification.new do |gem|
  gem.name          = "benchmark_method"
  gem.version       = BenchmarkMethod::VERSION
  gem.authors       = ["AvnerCohen"]
  gem.email         = ["israbirding@gmail.com"]
  gem.description   = %q{Wrap any existing method with a measurment total execution time. result of total time will be logged to assist on profiling running code}
  gem.summary       = %q{Benchmark your ruby methods and profile it easily.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
