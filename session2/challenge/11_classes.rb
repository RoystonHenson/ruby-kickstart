# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method 
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong

  def initialize(number)
    if number < 0
      @bottles == 0
    elsif number > 99
      @bottles == 99
    else
      @bottles = number
    end
    @bottles_in_eng = nil
    @ones = ['Zero', 'One', 'Two', 'Three' ,'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine']
    @specials = ['Eleven', 'Twelve', 'Thirteen', 'Fifteen']
    @teens = ['Fourteen', '', 'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen']
    @tens = ['Ten', 'Twenty', 'Thirty', 'Fourty', 'Fifty', 'Sixty', 'Seventy', 'Eighty', 'Ninety']
  end

  def print_song
    convert_number
    while @bottles > 0
      if @bottles > 2
        puts "#{@bottles_in_eng} bottles of beer on the wall,\n#{@bottles_in_eng} bottles of beer,"
        @bottles -= 1
        convert_number
        puts "Take one down, pass it around,\n#{@bottles_in_eng} bottles of beer on the wall."
        puts '-' * 20
      elsif @bottles == 2
        puts "#{@bottles_in_eng} bottles of beer on the wall,\n#{@bottles_in_eng} bottles of beer,"
        @bottles -= 1
        convert_number
        puts "Take one down, pass it around,\n#{@bottles_in_eng} bottle of beer on the wall."
        puts '-' * 20
      elsif @bottles == 1 
        puts "#{@bottles_in_eng} bottle of beer on the wall,\n#{@bottles_in_eng} bottle of beer,"
        @bottles -= 1
        convert_number
        puts "Take one down, pass it around,\n#{@bottles_in_eng} bottles of beer on the wall."
        break
      end
    end
  end

  def convert_number
    case @bottles
    when (0..9) then @bottles_in_eng = @ones[@bottles]
    when 10 then @bottles_in_eng = @tens[0]
    when 11 then @bottles_in_eng = @specials[0]
    when 12 then @bottles_in_eng = @specials[1]
    when 13 then @bottles_in_eng = @specials[2]
    when 14, (16..19) then @bottles_in_eng = @teens[@bottles - 14]
    when 15 then @bottles_in_eng = @specials[3]
    when (21..29) then tens_and_ones
    when 20 then @bottles_in_eng = @tens[1]
    when (31..39) then tens_and_ones
    when 30 then @bottles_in_eng = @tens[2]
    when (31..39) then tens_and_ones
    when 40 then @bottles_in_eng = @tens[3]
    when (41..49) then tens_and_ones
    when 50 then @bottles_in_eng = @tens[4]
    when (51..59) then tens_and_ones
    when 60 then @bottles_in_eng = @tens[5]
    when (61..69) then tens_and_ones
    when 70 then @bottles_in_eng = @tens[6]
    when (71..79) then tens_and_ones
    when 80 then @bottles_in_eng = @tens[7]
    when (81..89) then tens_and_ones
    when 90 then @bottles_in_eng = @tens[8]
    when (91..99) then tens_and_ones
    end
  end     

  private

  def tens_and_ones
    @bottles_in_eng = "#{@tens[(@bottles / 10) -  1]}-#{@ones[@bottles % 10]}"
  end
end
