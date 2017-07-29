require 'hobby'

class App
  include Hobby
  1000.times do |int|
    get("/#{int}") { "Hello World! #{int}" }
  end
end

APP = App.new
run APP
