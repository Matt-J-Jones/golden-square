require 'report_length'

RSpec.describe "reports length" do
  it "reports length correctly" do
    string = "Hello, world"
    result = report_length(string)
    expect(result).to eq "This string was #{string.length} characters long."
  end
end