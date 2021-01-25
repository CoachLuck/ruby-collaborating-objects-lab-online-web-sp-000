class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def songs
    Song.all.select {|song| song.artist = self }
  end

  def find_or_create_by_name(name)
    add_song(Song.new(name)) if !Song.all.include?(name)
  end

end
