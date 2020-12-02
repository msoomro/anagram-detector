class Anagram

    attr_accessor :word

    def initialize (word)
        @word = word
    end

    # requires an array of possible anagrams
    # returns all matches in an array. if no matches, returns empty array
    def match (possible_anagrams)
        anagrams = []

        if possible_anagrams == nil || possible_anagrams == [] || @word == nil
            return anagrams
        end

        possible_anagrams.each do |p_anagram|
            if @word.split("").sort == p_anagram.split("").sort
                anagrams << p_anagram
            end
        end

        anagrams
    end
end
