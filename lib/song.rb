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
    puts "#{fileName.split(" - ")}"
    @name = fileName.split(" - ")[1]
    @artist = Artist.find_or_create_by_name(fileName.split(" - ")[0])
    @@all << self
  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
  end
end
