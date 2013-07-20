

module Foo
  def self.foo; :wrong; end
end

binding.pry

# type "edit Foo.foo" into pry...
# type "def foo; :right; end" into vim...

puts Foo.foo == :right
