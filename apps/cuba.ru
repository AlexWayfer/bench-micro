require "cuba"

HelloWorld = Cuba.new do
  1000.times do |int|
    on get, "/#{int}" do
      res.write "Hello World!"
    end
  end
end

APP = HelloWorld
run APP
