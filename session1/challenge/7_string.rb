# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  letters = ''
  (0...string.size).find_all do |x|
    letters << string[x + 1] if (string[x] == 'r' || string[x] == 'R') && string[x + 1] != nil
  end
  p letters
end
