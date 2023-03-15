# File: spec/present_spec.rb

require 'present'

RSpec.describe Present do
  context "when present is empty" do
    it "fails" do
      present  = Present.new()
      expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end
  end

  context "trying to wrap a present that is wrapped" do
    it "fails" do
      present = Present.new()
      present.wrap("gift")
      expect { present.wrap("another gift") }.to raise_error "A contents has already been wrapped."
    end
  end

  it "returns contents when not empty" do
    present = Present.new
    present.wrap("gift")
    expect(present.unwrap).to eq "gift"
  end

end