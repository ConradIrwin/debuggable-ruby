
module Foo
  def self.foo; :wrong; end
end

meth = Pry::CodeObject.lookup("Foo.foo")
pry = Pry.new
Commands::Edit::MethodPatcher.new(pry, meth)
# type "def foo; :right; end" into vim...

puts Foo.foo == :right
