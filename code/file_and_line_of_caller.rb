file, line = caller.first.split(':', 2)
line = line.to_i
module_eval(<<-EOS, file, line - 2)
  def #{method_prefix}#{method}(#{definition})        # def customer_name(*args, &block)
    if #{to} || #{to}.respond_to?(:#{method})         #   if client || client.respond_to?(:name)
      #{to}.#{method}(#{definition})                  #     client.name(*args, &block)
    end                                               #   end
  end                                                 # end
EOS
