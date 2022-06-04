class House

  def lyrics(number)
    case number
    when 1
      "the house that Jack built.\n"
    when 2
      "the malt that lay in #{lyrics(number-1)}"
    when 3
      "the rat that ate #{lyrics(number-1)}"
    when 4
      "the cat that killed #{lyrics(number-1)}"
    when 5 
      "the dog that worried #{lyrics(number-1)}"
    when 6
      "the cow with the crumpled horn that tossed #{lyrics(number-1)}"
    when 7
      "the maiden all forlorn that milked #{lyrics(number-1)}"
    when 8
      "the man all tattered and torn that kissed #{lyrics(number-1)}"
    when 9
      "the priest all shaven and shorn that married #{lyrics(number-1)}"
    when 10 
      "the rooster that crowed in the morn that woke #{lyrics(number-1)}"
    when 11
      "the farmer sowing his corn that kept #{lyrics(number-1)}"
    else
      "the horse and the hound and the horn that belonged to #{lyrics(number-1)}"
    end
  end

  def line(number)
    "#{start_phrase}#{lyrics(number)}"
  end

  def recite 
    1.upto(12).map { |number| line(number) }.join("\n")
  end

  def start_phrase
    "This is "
  end

end