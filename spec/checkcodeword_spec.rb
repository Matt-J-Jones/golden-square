require 'checkcodeword'

RSpec.describe "Correct codeword" do
  it "Returns correct if correct codeword is used" do
    result = checkcodeword("horse")
    expect(result).to eq "Correct! Come in."
  end

  it "Returns wrong if wrong codeword is used" do
    result = checkcodeword("dog")
    expect(result).to eq "WRONG!"
  end

  it "Returns close if close codeword is used" do
    result = checkcodeword("hearse")
    expect(result).to eq "Close, but nope."
  end
end