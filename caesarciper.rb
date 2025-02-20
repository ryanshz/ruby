# takes in a string, shifts every character by the shift_value, then returns shifted string
def caesarcipher(string, shift_value)
  # step 1: split string into an array
  # step 2: in one iteration, check if character is /A-Za-z/, ignore rest (regex)
  # step 3: in same iteration, convert all letters to numbers, add shift_value to numbers, then convert back to letters
  # step 4: combine string and return
  p "decrypted string: " + string
  encryption = string.chars

  for i in 0...encryption.length
    if /[A-Za-z]/.match?(encryption[i])
      encryption[i] = encryption[i].ord + shift_value
      p encryption
      if 97 <= encryption[i] && encryption[i] <= 125
        encryption[i] = 97 <= encryption[i] && encryption[i] <= 122 ? encryption[i].chr : (encryption[i]-26).chr
      elsif 65 <= encryption[i] && encryption[i] <= 96
        encryption[i] = 65 <= encryption[i] && encryption[i] <= 90 ? encryption[i].chr : (encryption[i]-26).chr
      end
    else
      encryption[i]
    end
  end

  encryption = encryption.join
  p "encrypted string: " + encryption
  p "---"
end

caesarcipher("abc", 29)
