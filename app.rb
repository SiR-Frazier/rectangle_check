require('sinatra')
require('sinatra/reloader')
require('pry')

  get('/') do
    @description = "This application will determine whether a rectangle is a square or not."
    erb(:input)
  end

  get('/output') do
    length = params.fetch("length")
    width = params.fetch("width")
    if length == width
      @rectangle = "This is a square."
    else
      @rectangle = "This is not a square."
    end
    erb(:output)
  end
