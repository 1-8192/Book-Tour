require 'rails_helper'

describe Book, type: :model do
  let(:attributes) do
    {
      title: "fake",
      author: "fake",
      description: "test",
      publication_date: 2009,
      genre: 'fake'
    }
  end

  it "is considered valid" do
    expect(Book.new(attributes)).to be_valid
  end
end