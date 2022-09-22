require 'diary' 
require 'diary_entry'

RSpec.describe "Diary Integrated Testing" do
  context "testing add method" do
    it "returns a list of instances of DiaryEntry" do
      diary = Diary.new
      entry = DiaryEntry.new("Monday", "It was a bank holiday.")
      diary.add(entry)
      expect(diary.all).to eq [entry]
    end

    it "returns a list of instances of DiaryEntry" do
        diary = Diary.new
        entry = DiaryEntry.new("Monday", "It was a bank holiday.")
        diary.add(entry)
        entry2 = DiaryEntry.new("Tuesday", "I paired with Pauline.")
        diary.add(entry2)
        expect(diary.all).to eq [entry, entry2]
      end
  end

  context "testing count_words method" do
    it "returns the number of words in all diary entries" do
      diary = Diary.new
      entry = DiaryEntry.new("Monday", "It was a bank holiday.")
      diary.add(entry)
      expect(diary.count_words).to eq 5
    end

    it "returns the number of words in all diary entries" do
      diary = Diary.new
      entry = DiaryEntry.new("Monday", "It was a bank holiday.")
      diary.add(entry)
      entry2 = DiaryEntry.new("Tuesday", "I paired with Pauline.")
      diary.add(entry2)
      expect(diary.count_words).to eq 9
    end
  end

  context "testing reading_time method" do
    it "returns an estimated reading time for all entries in the diary" do
        diary = Diary.new
        entry = DiaryEntry.new("Monday", "It was a bank holiday.")
        diary.add(entry)
        expect(diary.reading_time(1)).to eq 5
    end 

    it "returns an estimated reading time for all entries in the diary" do
        diary = Diary.new
        entry = DiaryEntry.new("Monday", "It was a bank holiday.")
        diary.add(entry)
        entry2 = DiaryEntry.new("Tuesday", "I paired with Pauline.")
        diary.add(entry2)
        expect(diary.reading_time(1)).to eq 9
    end 
  end

  context "testing find_best_entry_for_reading_time method" do
    it "returns the most suitable diary entry" do
      diary = Diary.new
      entry = DiaryEntry.new("Monday", "It was a bank holiday.")
      diary.add(entry)
      expect(diary.find_best_entry_for_reading_time(1, 5)).to eq entry
    end

    it "returns the most suitable diary entry" do
      diary = Diary.new
      entry = DiaryEntry.new("Monday", "It was a bank holiday.")
      diary.add(entry)
      entry2 = DiaryEntry.new("Tuesday", "I paired with Pauline.")
      diary.add(entry2)
      expect(diary.find_best_entry_for_reading_time(1, 5)).to eq entry
    end

    it "returns nil when user cannot read any entry in specified time" do
    diary = Diary.new
      entry = DiaryEntry.new("Monday", "It was a bank holiday.")
      diary.add(entry)
      entry2 = DiaryEntry.new("Tuesday", "I paired with Pauline.")
      diary.add(entry2)
      expect(diary.find_best_entry_for_reading_time(1, 3)).to eq nil
    end
  end
end