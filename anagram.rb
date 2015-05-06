class Anagram

  def initialize(anagram)
    @anagram        = anagram
    @anagram_lets   = anagram.downcase.split("").sort
  end

  def match(matches)
    match = []
    counter = 0
    until counter == matches.length
      word_to_examine = matches[counter].downcase.split("").sort
      match << matches[counter] if word_to_examine == @anagram_lets
      counter += 1
    end

    x = 0 
    until x == match.length 
      if match[x].downcase == @anagram.downcase
        p match 
        puts "they're the same!"
        match.delete_at(x)
        p "just deleted it"
        p match
      else
        p match
        puts "Not the same!"
      end
    x += 1 
    end

    match.delete(@anagram.downcase)
    match
  end
end

detector = Anagram.new('allergy')
anagrams = detector.match %w( allergy gallery ballerina regally clergy largely leading)