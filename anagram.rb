class Anagram

  def initialize(anagram)
    @anagram        = anagram
    @anagram_lets   = anagram.downcase.split("").sort
  end

  def match(compared_word)
    matches = []
    counter = 0
    until counter == compared_word.length
      word_to_examine = compared_word[counter].downcase.split("").sort
      matches << compared_word[counter] if word_to_examine == @anagram_lets
      counter += 1
    end
    remove_duplicates(matches)
  end

  def remove_duplicates(matches)
    x = 0 
    until x >= matches.length 
        if matches[x].downcase == @anagram.downcase
          matches.delete_at(x)
        else
          x += 1 
        end
      end
    matches.delete(@anagram.downcase)
    matches
  end
end
