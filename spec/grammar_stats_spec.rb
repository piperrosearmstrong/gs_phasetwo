require 'grammar_stats'

describe GrammarStats do
  it "returns true if the sentence is grammatically correct" do
    text = GrammarStats.new
    check = text.check("I love trains!")
    expect(check).to eq true
  end

  it "returns false if the sentence is not grammatically correct" do
    text = GrammarStats.new
    check = text.check("i love trains")
    expect(check).to eq false
  end

  it "returns false if the sentence is not grammatically correct" do
    text = GrammarStats.new
    check = text.check("i love trains)")
    expect(check).to eq false
  end

  it "returns the percentage of grammatically correct sentences checked so far" do
    text = GrammarStats.new
    text.check("Correct.")
    text.check("Also correct!")
    text.check("Incorrect")
    text.check("incorrect as well.")
    expect(text.percentage_good).to eq 50
  end
end