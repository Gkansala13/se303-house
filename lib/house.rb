class House

  RANDOM_SEED = rand(1..100)

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
    song_phrase=(0...11).map { |i| "#{song_subject[i]} #{song_verb[i]}"}.insert(0,'')
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

  def song_phrase
    super[1..].shuffle(random: Random.new(RANDOM_SEED)).insert(0,'')
  end

end 


class RandomPirateHouse < House

  def song_phrase
    super[1..].shuffle(random: Random.new(RANDOM_SEED)).insert(0,'')
  end

  def starting_phrase
    "Thar be"
  end

end 


class RandomVerbSubjectHouse < House
  
  def song_subject
    super.shuffle(random: Random.new(RANDOM_SEED))
  end

  def song_verb
    super.shuffle(random: Random.new(RANDOM_SEED))
  end

end
