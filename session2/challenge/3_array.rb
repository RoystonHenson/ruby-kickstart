# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    array = []
    split('').each_slice(2) do |x, y|
      array << x
    end
    array.join
  end
end
