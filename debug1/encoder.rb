def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  return ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[char.ord - 65]
  end
  return plaintext_chars.join
end

# Intended output:
#
p encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
p decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"

# Note: '...' gives you a range which doesn't include the last character. '..' gives you a range which includes the last character. 
# Since Z wasn't being included, every time it appeared it was given a nil value.

# Note: On line 12, '65' refers to the index number. By putting it after 'char.ord', we change the (direction?) that we assign 
# the new indexes. Think of it like an equation. a + b = c. To do the reverse of it and find b, we have to rearrange the equation. 
# eg.
# a + b = c // b = c - a
# 65 + password = cryptic_message // password = cryptic_message - 65