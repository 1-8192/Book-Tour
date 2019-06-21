require 'rails_helper'

describe User, type: :model do
  let(:attributes) do
    {
      email: "test@test.com",
      username: "test",
      password: "test"
    }
  end

  it "is considered valid" do
    expect(User.new(attributes)).to be_valid
  end
end