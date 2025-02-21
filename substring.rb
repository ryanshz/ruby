#searches dictionary for given string, if found, adds to hash and returns said hash
def substring(searched_word, dictionary)
    found_words = Hash.new(0)
    searched_word = searched_word.downcase
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

#searches dictionary for given phrase, if found, adds all instances of phrase to hash and returns said hash
def subarray(searched_phrase, dictionary)
    found_words = Hash.new(0)
    searched_phrase = searched_phrase.downcase
    # split phrase into array by spaces
    split_phrase = searched_phrase.split(" ")
    dictionary.each do |word|
        # pick word in dictionary
        # iterate through phrase array, for instance of word found, add 1 to counter
        # once phrase finished, add counter to hash and go to next dictionary value
        word_count = 0
        split_phrase.each do |searched_word|
            if searched_word.match?(word)
                word_count += 1
                found_words[word] = word_count
            end
        end
    end
    p found_words
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

subarray("Howdy partner, sit down! How's it going?", dictionary)