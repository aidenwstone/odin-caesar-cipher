UPPER_ALPHABET = ('A'..'Z').to_a
LOWER_ALPHABET = ('a'..'z').to_a

def caesar_cipher(message, shift_factor)
  # Take a string and shift factor as input
  # Output the ciphered string
  ciphered_message = message.each_char.map do |char|
    if UPPER_ALPHABET.include?(char)
      index = UPPER_ALPHABET.index(char)
      UPPER_ALPHABET.rotate(shift_factor)[index]
    elsif LOWER_ALPHABET.include?(char) 
      index = LOWER_ALPHABET.index(char)
      LOWER_ALPHABET.rotate(shift_factor)[index]
    else
      char
    end
  end
  ciphered_message.join
end