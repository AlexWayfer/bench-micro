require "roda"

class HelloWorld < Roda
  route do |r|
    1000.times do |int|
      r.get "/#{int}" do
        "Hello World! #{int}"
      end
    end
  end
end

APP = HelloWorld.app
run APP
