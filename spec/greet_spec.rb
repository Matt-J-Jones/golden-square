require 'greet'

RSpec.describe "greet user correctly" do
  it "returns correct response" do
    result = greet("James")
    expect(result).to eq "Hello, James"
  end
end