# ::BenchmarkMethod

Wrap any existing method with a measurment for total execution time. result of total time will be logged to assist on profiling running code

## Installation

Add this line to your application's Gemfile:

    gem 'benchmark_method'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install benchmark_method

## Usage

````ruby
class MyClass

  def long_running_method
      self.content.map {|i| i.takes_forever! }
  end
  
end
````

Should simple be changed to:

````ruby
class MyClass

  include BenchmarkMethod

  def long_running_method
      self.content.map {|i| i.takes_forever! }
  end

  measure :long_running_method
end
````



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
