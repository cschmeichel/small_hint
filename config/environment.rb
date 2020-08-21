# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

unless Rails.application.config.eager_load
  Dir[Rails.root.join('app', 'models', 'partners', '*.rb')].each { |f| require f }
end
