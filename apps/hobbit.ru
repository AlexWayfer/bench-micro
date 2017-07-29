require "hobbit"

class HelloWorld < Hobbit::Base
  1000.times do |int|
    get "/#{int}" do
      "Hello World! #{int}"
    end
  end
end

APP = HelloWorld.new
run APP
