def grammar_checker(text)
  first_char_cap = text[0] == text[0].upcase
  last_char_stop = text[-1] == "."
  first_char_cap && last_char_stop ? "This sentence is grammatically correct." : "This sentence is not grammatically correct."
end