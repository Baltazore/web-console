require './web.rb'

require 'rack/cors'

use Rack::Cors do
  allow do
    origins '*'
    resource '/*',
      methods: [:post, :get, :options],
      headers: :any
  end
end

run Web

