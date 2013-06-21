require 'sinatra'

Dir[ './engines/*.rb'  ].each{ |f| require f }
use SassEngine

set :markdown, layout_engine: :haml, layout: :layout

get '/' do
  markdown :index
end

