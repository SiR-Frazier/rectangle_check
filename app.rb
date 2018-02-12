require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/rectangle')

  get('/') do
    @description = "this application will determine whether a rectangle is a square or not."
    erb(:input)
  end

  get('/output') do
    @length = params.fetch("length")
    @width = params.fetch("width")
    rectangle = Rectangle.new(@length, @width)
    if rectangle.square?
      @string_to_display = "This is a square."
    else
      @string_to_display = "This is not a square."
    end
    erb(:output)
  end
