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

    x = 0 
    puts "We're starting with the 'matchz' array - #{matchz}"
    puts "matchz length -> #{matchz.length} , anagram downcase -> #{@anagram.downcase}, x ->#{x}"
    
    until x >= matchz.length 
     

        if matchz[x].downcase == @anagram.downcase
          puts "\"#{matchz[x]}\" <- Matchz[x] and \"#{@anagram.downcase}\" - they're the same!"
          p "just deleted - #{matchz[x]}"
          matchz.delete_at(x)
          p matchz
          p "*********"
          x = 0
          puts "The matchz lenght #{matchz.length}"
        else
          puts "Not the same!"
          p matchz
          x += 1 
        end
        puts "Still in until loop."
      
      end

    matchz.delete(@anagram.downcase)
    matchz
  end
end
detector = Anagram.new('corn')
anagrams = detector.match %w(corn dark Corn rank CORN cron park)
p anagrams
