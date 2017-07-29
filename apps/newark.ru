require "newark"

class HelloWorld
  include Newark

  1000.times do |int|
    get "/#{int}" do
      "Hello World! #{int}"
    end
  end
end

APP = HelloWorld.new
run APP
