require "rack/app"

class HelloWorld < Rack::App
  desc "Hello World"
  1000.times do |int|
    get "/#{int}" do
      "Hello World! #{int}"
    end
  end
end

APP = HelloWorld
run APP
