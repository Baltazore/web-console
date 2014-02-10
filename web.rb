require 'sinatra'
require 'awesome_print'
require 'pry'
require 'json'

# Echo Server
class Web < Sinatra::Base
  set :logging, true
  post '/' do
    ap JSON.parse(request.body.read)
  end
end

