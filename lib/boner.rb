require "boner/version"

# Sneaky require for Rails engine environment
if defined? ::Rails::Engine
  require "boner/rails"
elsif defined? ::Sprockets
  require "boner/sprockets"
end

module Boner
end
