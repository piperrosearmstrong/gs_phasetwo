require 'checking_string'

describe "checking_string method" do
  it "checks if #TODO is in the string" do
    result = checking_string("hello #TODO")
    expect(result).to eq true
  end

  it "checks if #TODO is not in the string" do
    result = checking_string("goodbye")
    expect(result).to eq false
  end

  it "returns false if string empty" do
    result = checking_string("")
    expect(result).to eq false
  end
end