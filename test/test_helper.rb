ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  def generate_api_key
    unless User.exists?(name: 'Test User')
      @user = User.new(name: "Test User", email: "test_user@test.com")
      @user.save!
    end
    @user.api_key
  end

end
