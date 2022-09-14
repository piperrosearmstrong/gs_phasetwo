require 'grammar_checker'

describe "grammar_checker method" do
  it "returns a message when user input is grammatically correct" do
    checker = grammar_checker("I don't like dogs.")
    expect(checker).to eq "This sentence is grammatically correct."
  end

  it "returns a message when user input is not grammatically correct" do
    checker = grammar_checker("i don't like cats")
    expect(checker).to eq "This sentence is not grammatically correct."
  end
end