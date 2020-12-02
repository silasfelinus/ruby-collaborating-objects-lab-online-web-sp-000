class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all?
    @@all
  end

  def self.new_by_filename(filename)
    song_name = filename[/-/].last
    artist = filename[/-/]
    new_song = Song.new(song_name)
    new_song.artist = artist
    new_song
  end

  def artist_name=(name)
    Artist.find_or_create_by_name(name).add_song(self)
  end




end
