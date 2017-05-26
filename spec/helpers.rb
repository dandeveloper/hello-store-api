module Helpers

  def generate_api_key
    unless User.exists?(name: 'Test User')
      @user = User.new(name: "Test User", email: "test_user@test.com")
      @user.save!
    end
    @user.api_key
  end

end
