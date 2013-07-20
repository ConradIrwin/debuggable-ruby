def __define_callback(kind, object)
  name = __callback_runner_name(kind)
  unless object.respond_to?(name, true)
    str = object.send("_#{kind}_callbacks").compile
    class_eval <<-RUBY_EVAL, __FILE__, __LINE__ + 1
      def #{name}() #{str} end
      protected :#{name}
    RUBY_EVAL
  end
  name
end
