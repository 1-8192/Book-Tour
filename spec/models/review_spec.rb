require 'rails_helper'

describe Review do
  let(:attributes) do
    {
      title: "test",
      review_body: "This doesn't matter",
      book_id: 1,
      destination_id: 1,
      user_id: 1
    }
  end

  it "is considered valid" do
    expect(Destination.new(attributes)).to be_valid
  end

end
