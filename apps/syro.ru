require "syro"

APP = Syro.new {
  1000.times do |int|
    on "#{int}" do
      get {
        res.write "Hello World! #{int}"
      }
    end
  end
}

run APP
