# File: spec/password_checker_spec.rb

require 'password_checker'

RSpec.describe PasswordChecker do
  context "password as 'open' to return too short error" do
    it "fails" do
      password = PasswordChecker.new
      expect { password.check("open") }.to raise_error "Invalid password, must be 8+ characters."
    end
  end

  it "password is 'password' to equal true" do
    password = PasswordChecker.new
    result = password.check("password")
    expect(result).to eq true
  end
end