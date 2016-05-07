require 'sinatra/base'
require 'sinatra/contrib'
require "sinatra/reloader"
require 'slim'

class Slide < Sinatra::Base
  register Sinatra::Contrib

	configure :development do
		register Sinatra::Reloader
	end

	get '/' do
    slim :index
	end

  helpers do
    def page_title(title = nil)
      @title = title if title
      base_title = "Slide"
      @title ? "#{@title} - #{base_title}" : base_title
    end
  end
end

