require 'make_snippet'

describe "make_snippet method" do
  it "returns the first five words of a string followed by ..." do
    snippet = make_snippet("I know how to code that!")
    expect(snippet).to eq "I know how to code..."
  end

  it "returns full string if five words or fewer" do
    snippet = make_snippet("I am four words.")
    expect(snippet).to eq "I am four words."
  end
end