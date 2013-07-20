Object.instance_method(:inspect).
  bind(URI.parse("http://google.com/")).call
=> "http://google.com/"
