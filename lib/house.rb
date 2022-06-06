class House

  def line(number)
    "#{starting_phrase} #{lyrics(number)}the house that Jack built.\n"
  end

  def recite 
    1.upto(12).map { |number| line(number) }.join("\n")
  end

  def lyrics(number)
    song_phrase[0...number].reverse.join(" ")
  end 
  
  def song_subject 
    ["the malt","the rat","the cat","the dog","the cow","the maiden",
    "the man","the priest","the rooster","the farmer","the horse"]
    end

  def song_verb 
    ["that lay in","that ate","that killed","that worried","with the crumpled horn that tossed",
    "all forlorn that milked","all tattered and torn that kissed","all shaven and shorn that married",
    "that crowed in the morn that woke","sowing his corn that kept","and the hound and the horn that belonged to"]
  end

  def song_phrase
    ["","#{song_subject[0]} #{song_verb[0]}","#{song_subject[1]} #{song_verb[1]}",
    "#{song_subject[2]} #{song_verb[2]}","#{song_subject[3]} #{song_verb[3]}","#{song_subject[4]} #{song_verb[4]}",
    "#{song_subject[5]} #{song_verb[5]}","#{song_subject[6]} #{song_verb[6]}",
    "#{song_subject[7]} #{song_verb[7]}","the rooster that crowed in the morn that woke",
    "the farmer sowing his corn that kept","the horse and the hound and the horn that belonged to"] 
  end

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
    song_phrase[1...number].shuffle.reverse.join(" ")
  end

end 


class RandomPirateHouse < RandomHouse

  def starting_phrase
    "Thar be"
  end

end 
