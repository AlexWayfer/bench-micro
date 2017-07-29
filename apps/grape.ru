require "grape"

class APP < Grape::API
  1000.times do |int|
    get "/#{int}" do
      "Hello World! #{int}"
    end
  end
end

run APP
