# Create a new rack app from a config.ru
def new_from_string(builder_script, file="config.ru")
  eval "Rack::Builder.new {\n" +
         builder_script + "\n}.to_app",
    TOPLEVEL_BINDING, file, 0
end
