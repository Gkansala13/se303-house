class House

  def lyrics(number)
    case number
    when 1
      ""
    when 2
      "the malt that lay in "
    when 3
      "the rat that ate the malt that lay in "
    when 4
      "the cat that killed the rat that ate the malt that lay in "
    when 5 
      "the dog that worried the cat that killed the rat that ate the malt that lay in "
    when 6
      "the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in "
    when 7
      "the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in "
    when 8
      "the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in "
    when 9
      "the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in "
    when 10 
      "the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in "
    when 11
      "the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in "
    when 12
      "the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in "
    end
  end

  def line(number)
    case number
    when 1
      "This is #{lyrics(number)}the house that Jack built.\n"
    when 2
      "This is #{lyrics(number)}the house that Jack built.\n"
    when 3
      "This is #{lyrics(number)}the house that Jack built.\n"
    when 4
      "This is #{lyrics(number)}the house that Jack built.\n"
    when 5
      "This is #{lyrics(number)}the house that Jack built.\n"
    when 6
      "This is #{lyrics(number)}the house that Jack built.\n"
    when 7
      "This is #{lyrics(number)}the house that Jack built.\n"
    when 8
      "This is #{lyrics(number)}the house that Jack built.\n"
    when 9
      "This is #{lyrics(number)}the house that Jack built.\n"
    when 10
      "This is #{lyrics(number)}the house that Jack built.\n"
    when 11
      "This is #{lyrics(number)}the house that Jack built.\n"
    else
      "This is #{lyrics(number)}the house that Jack built.\n"
    end
  end

  def recite 
    1.upto(12).map { |number| line(number) }.join("\n")
  end

end