require 'rambutan'

class HelloController < Rambutan::Base
  def world
    "Hello World!"
  end
end

app = Rambutan::RoutesSet.new do
  1000.times do |int|
    get "/#{int}" => "hello#world"
  end
end

APP = app.router
run APP
