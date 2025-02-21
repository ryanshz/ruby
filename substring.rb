def substring(searched_word, dictionary)
    found_words = Hash.new(0)
    dictionary.each do |word|
        if searched_word.match?(word)
            # check if found_words has value above zero
            # if true add 1, if not, create new entry in hash
            word_count = 0
            if found_words[word] > 0
                word_count += found_words[word] + 1
                found_words[word] = word_count
            else
                found_words[word] = 1
            end
        end
    end
    p found_words
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substring("below", dictionary)