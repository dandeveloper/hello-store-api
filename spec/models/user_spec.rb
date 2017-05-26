require 'rails_helper'

RSpec.describe User, type: :model do
  it 'tests an empty User object' do
    expect(User.new).to_not be_valid
  end

  it "is not valid without a name" do
    user = User.new(name: nil)
    expect(user).to_not be_valid
  end

  it "is not valid without a email" do
    user = User.new(email: nil)
    expect(user).to_not be_valid
  end

  it 'is valid User' do
    user = User.new(name: "Usuario Teste", email: "teste@teste.com")
    expect(user).to be_valid
  end

end
