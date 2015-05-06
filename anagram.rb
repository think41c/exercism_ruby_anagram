class Anagram

  def initialize(anagram)
    @anagram        = anagram
    @anagram_lets   = anagram.split("").sort
  end

  def match(matches)
    match = []
    counter = 0
    until counter == matches.length
      word_to_examine = matches[counter].split("").sort
      match << matches[counter] if word_to_examine == @anagram_lets
      counter += 1
    end
    match.delete(@anagram)
    match
  end
end

# a = Anagram.new('diaper')
# p a.match(['aidrep', "diaper", "not at all"])
