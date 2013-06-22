
module Foo
  def self.foo; :wrong; end
end

meth = Pry::Method(Foo.method(:foo))
meth.redefine "def foo; :right; end"

puts Foo.foo == :right
