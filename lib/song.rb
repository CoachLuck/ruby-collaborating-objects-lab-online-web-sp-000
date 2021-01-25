class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(fileName)
    @name = fileName.split(" - ")[0]
    @artist = Artist.find_or_create_by_name(fileName.split(" - ")[1])
  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
  end
end
