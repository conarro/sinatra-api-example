# Require the bundler gem and then call Bundler.require to load in all gems
# listed in Gemfile.
require 'bundler'
Bundler.require


get '/' do
  send_file './public/index.html'
end

# Route to show all Things, ordered like a blog
get '/things' do
  content_type :json
  {:things => :here}.to_json
end

