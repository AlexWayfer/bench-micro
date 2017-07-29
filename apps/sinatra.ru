require "sinatra/base"

class HelloWorld < Sinatra::Base
  1000.times do |int|
    get "/#{int}" do
      "Hello World! #{int}"
    end
  end
end

APP = HelloWorld
run APP
