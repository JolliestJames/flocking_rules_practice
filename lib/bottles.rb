class Bottles

  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).map {|i| verse(i)}.join("\n")
  end

  def verse(number)
    "#{bottles_left(number).capitalize} #{container(number)} of beer on the wall, " +
    "#{bottles_left(number)} #{container(number)} of beer.\n" +
    "#{get_more_beer(number)}" +
    "#{bottles_left(number-1)} #{container(number-1)} of beer on the wall.\n"
  end

  def container(number)
    (number == 1) ? "bottle" : "bottles" 
  end

  def pronoun(number)
    (number == 1) ? "it" : "one"
  end

  def bottles_left(number)
    (number == 0) ? "no more" : (number < 0 ) ? 99.to_s : number.to_s
  end

  def get_more_beer(number)
    (number == 0) ? "Go to the store and buy some more, " : "Take #{pronoun(number)} down and pass it around, "
  end

end
