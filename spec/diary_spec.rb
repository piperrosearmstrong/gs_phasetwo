require 'diary'

RSpec.describe Diary do
  context "testing add method" do
    it "returns an empty string" do
      diary = Diary.new
      expect(diary.add("")).to eq [""]
    end
  end
end