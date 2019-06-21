require 'rails_helper'

describe Destination, type: :model do
  let(:attributes) do
    {
      name: "Fun City",
      country: "Wakanda",
      continent: "Antarctica",
      description: "cool place"
    }
  end

  it "is considered valid" do
    expect(Destination.new(attributes)).to be_valid
  end
end