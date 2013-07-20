# If you override to_s, inspect will use that.
# This is never what you want.
# Can restore the default with this:
def inspect
  pointer = "0x#{(object_id * 2).to_s(16)}"
  ivars = instance_variables.map do |ivar|
    "#{ivar}=#{instance_variable_get(ivar).inspect}"
  end.join(" ")
  "#<#{self.class.name} #{pointer} #{ivars}>"
end
