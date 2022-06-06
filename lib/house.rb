class House

  def line(number)
    "#{starting_phrase} #{lyrics(number)}the house that Jack built.\n"
  end

  def recite 
    1.upto(12).map { |number| line(number) }.join("\n")
  end

  def lyrics(number)
    SONG_PHRASES[0...number].reverse.join(" ")
  end

  SONG_PHRASES=["","the malt that lay in","the rat that ate",
  "the cat that killed","the dog that worried","the cow with the crumpled horn that tossed",
  "the maiden all forlorn that milked","the man all tattered and torn that kissed",
  "the priest all shaven and shorn that married","the rooster that crowed in the morn that woke",
  "the farmer sowing his corn that kept","the horse and the hound and the horn that belonged to"]  
  
  def starting_phrase
    "This is"
  end
  
end


class PirateHouse < House

  def starting_phrase
    "Thar be"
  end

end


class RandomHouse < House 
  
  def lyrics(number)
    SONG_PHRASES[1...number].shuffle.reverse.join(" ")
  end
  
end 


class RandomPirateHouse < RandomHouse

  def starting_phrase
    "Thar be"
  end

end 