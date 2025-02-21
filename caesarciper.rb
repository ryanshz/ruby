def caesarcipher(string, shift_value)
  # step 1: split string into an array
  # step 2: in one iteration, check if character is /A-Za-z/, ignore rest (regex)
  # step 3: in same iteration, convert all letters to numbers, add shift_value to numbers, then convert back to letters
  # step 4: combine string and return
  p "decrypted string: " + string
  encryption = string.chars

  for i in 0...encryption.length
    #lower
    if /[a-z]/.match?(encryption[i])
      encryption[i] = encryption[i].ord + shift_value
      if shift_value == 0
        encryption[i] = encryption[i].chr
      else
        if shift_value >= 26
          # could not figure out over 26, will come back to this later
          encryption[i] = (encryption[i]-(26*((shift_value.to_f/26).ceil))).chr
        else
          encryption[i] = 97 <= encryption[i] && encryption[i] <= 122 ? encryption[i].chr : (encryption[i]-26).chr
        end
      end
    end

    #upper
    if /[A-Z]/.match?(encryption[i])
      encryption[i] = encryption[i].ord + shift_value
      if shift_value == 0
        encryption[i] = encryption[i].chr
      else
        if shift_value >= 26
          # could not figure out over 26, will come back to this later
          encryption[i] = (encryption[i]-(26*((shift_value.to_f/26).ceil))).chr
        else
          encryption[i] = 65 <= encryption[i] && encryption[i] <= 90 ? encryption[i].chr : (encryption[i]-26).chr
        end
      end
    end
  end

  encryption = encryption.join
  p "encrypted string: " + encryption
  p "---"
end

for i in 0...26
  caesarcipher("Testing 123, Testing 123!", i)
end

# encryption[i] = shift_value > 26 ? (encryption[i]-(26*((shift_value.to_f/26).ceil))).chr : (encryption[i]-(26)).chr

# elsif 65 <= encryption[i] && encryption[i] <= 96
