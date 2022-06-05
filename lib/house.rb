class House

  def lyrics(number)
    if number==1
      SONG_PHRASES[number-1]
    else
      SONG_PHRASES[number-1] + lyrics(number-1)
    end
  end

  SONG_PHRASES=["the house that Jack built.\n","the malt that lay in ","the rat that ate ",
    "the cat that killed ","the dog that worried ","the cow with the crumpled horn that tossed ",
    "the maiden all forlorn that milked ","the man all tattered and torn that kissed ",
    "the priest all shaven and shorn that married ","the rooster that crowed in the morn that woke ",
    "the farmer sowing his corn that kept ","the horse and the hound and the horn that belonged to "]

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