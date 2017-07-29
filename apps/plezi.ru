require 'plezi'

class HelloWorld
  1000.times do |int|
    define_method "#{int}" do
      "Hello World! #{int}".freeze
    end
  end
end

Plezi.route "/", HelloWorld
APP = Plezi.app
run APP
