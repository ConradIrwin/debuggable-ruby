
module Foo
  def self.foo; :wrong; end
end

meth = Pry::CodeObject.lookup("Foo.foo")
Commands::Edit::MethodPatcher.new(meth,
  "def foo; :right; end")

puts Foo.foo == :right
