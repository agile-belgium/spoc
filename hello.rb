require 'sinatra'
set :markdown, layout_engine: :haml, layout: :layout


get '/' do
  markdown :index
end