class GrammarStats
  def initialize
    @checker = 0
    @counter = 0
  end

  def check(text)
    @checker += 1
    string = text.match?(/^[A-Z].*\W$/)
    # match? searches the specified string for the criteria specified in the regex (class?)
    # /^ says look for this at the start of the string
    @counter += 1 if string == true
    string
  end

  def percentage_good
    (@counter / @checker.to_f * 100).ceil
  end
end


