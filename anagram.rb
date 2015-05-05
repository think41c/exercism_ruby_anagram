class Anagram
  def initialize(anagram)
    @anagram_length = anagram.length
    @anagram_lets   = anagram.split("")
    p @anagram_lets
    p @anagram_length
  end

  def match(matches)
    match = []
    counter = 0
    until counter == matches.length
      word_to_examine = matches[counter]
      p word_to_examine
      p word_to_examine.length
      counter += 1
    end
    #   Find the length of the word in the array
    #   Loop as many times are there are letters in the word
    #     Check and see if the first letter of anagram is same as match word
    #       If yes, check the next one. Correct letters += 1
    #         If correct letters == anagram lenght then add word in 'match'
    #       Else 
    #         Go to the next word
    #       End
    match
  end

end

a = Anagram.new('diaper')
p a.match(["apple", "bee"])