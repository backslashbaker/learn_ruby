def echo(word)
  "#{word}"
end

def shout(word)
  "#{word}".upcase
end

def repeat(word, num=2)
  ( "#{word} " * num ).strip
end

def start_of_word(word, num)
  word[0 ... num]
end

def first_word(word)
  word.partition(" ").first
end

def titleize(phrase)
  words = phrase.split.map do |word|
    if %w( the and over ).include?(word)
      word
    else
      word.capitalize
    end
  end
  words.first.capitalize!
  words.join(" ")
end
