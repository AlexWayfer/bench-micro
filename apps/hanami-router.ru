require "hanami/router"

APP = Hanami::Router.new do
  1000.times do |int|
    get "/int", to: ->(env) { [200, {"Content-Type" => "text/html"}, ["Hello World! #{int}"]] }
  end
end

run APP
