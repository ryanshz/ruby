# takes in a string, shifts every character by the shift_value, then returns shifted string
def caesarcipher(string, shift_value)
  # step 1: split string into an array
  # step 2: in one iteration, check if character is /A-Za-z/, ignore rest (regex)
  # step 3: in same iteration, convert all letters to numbers, add shift_value to numbers, then convert back to letters
  # step 4: combine string and return

  # gonna work out step 1 and 4 first, then go back to 3, then add 2
  # then refactoring!!
  # step 1
  p "decrypted string: " + string
  encryption = string.chars
  # step 2

  # step 3
  # convert character array to ordinal, add shift value
  encryption.map! do |value|
    value.ord + shift_value
  end
  # convert ordinal array to character
  encryption.map! do |value|
    97 <= value && value <= 122 ? value.chr : (value-26).chr
  end
  # step 4
  encryption = encryption.join
  p "encrypted string: " + encryption
end

caesarcipher("abcxyz", 3)
