require 'reading_time'

describe "reading_time method" do
  it "returns 3 minutes when passed 600 words" do
    time = reading_time(600)
    expect(time).to eq "3 minutes."
  end
end
