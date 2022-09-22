class Diary
  def initialize
    @diary = []
  end
  
  def add(entry)
    @diary << entry
  end
  
  def all
    @diary
  end
  
  def count_words
    @diary.map { |entry| entry.count_words }.sum
    # map changes the original array
    # we can call .sum on the block because it is an object
  end
  
  def reading_time(wpm) 
    return (count_words / wpm.to_f).ceil
    # use count_words method from diary class and the wpm parameter. This
    # is the same calculation as in the diary_entry file.
  end
  
  def find_best_entry_for_reading_time(wpm, minutes)
    readable_entries(wpm, minutes).max_by(&:count_words)
    # max_by returns the maximum value from the given block
  end

  def readable_entries(wpm, minutes)
    return @diary.filter do |entry|
    #   filter returns a new array containing the elements which match the conditions given
      entry.reading_time(wpm) <= minutes
    end
  end
end
  
  