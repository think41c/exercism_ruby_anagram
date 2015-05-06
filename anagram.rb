class Anagram

  def initialize(anagram)
    @anagram        = anagram
    @anagram_lets   = anagram.downcase.split("").sort
  end

  def match(matches)
    matchz = []
    counter = 0
    until counter == matches.length
      word_to_examine = matches[counter].downcase.split("").sort
      matchz << matches[counter] if word_to_examine == @anagram_lets
      counter += 1
    end
    remove(matchz)
  end

  def remove(matchz)
    x = 0 
    until x >= matchz.length 
        if matchz[x].downcase == @anagram.downcase
          matchz.delete_at(x)
          x = 0
        else
          x += 1 
        end
      end
    matchz.delete(@anagram.downcase)
    matchz
  end
end
