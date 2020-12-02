class Artist
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all<< self
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def find_or_create_by_name(name)
    if @@all.nil?(name)
      Artist.new(name)
    else
      @@all.find {|artist| artist.name == name}
    end
  end

end
