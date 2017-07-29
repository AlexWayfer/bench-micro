require "rackstep"

class HelloController < RackStep::Controller
  def process_request
    response.body = ["Hello World!"]
  end
end

class HelloWorld < RackStep::App
  1000.times do |int|
    add_route("GET", "#{int}", HelloController)
  end
end

APP = HelloWorld

run APP
