require "flame"

class HelloController < Flame::Controller
  1000.times do |int|
    define_method "/#{int}" do
      "Hello World! #{int}"
    end
  end
end

class HelloWorld < Flame::Application
  mount HelloController, '/'
end

APP = HelloWorld.new
run APP
