class MP3Importer
  attr_accessor :path

  def initialize(path)
    # get all .mp3 files and add to @files
    @path = path
    @files = []
  end

  def files
    # load all mp3 files and remove path from the name
    names = Dir["#{path}/*.mp3"]
    @files = names.collect {|name| name[@path.length + 1, name.length]}
  end

  def import
    @files.each {|name| Song.new_by_filename(name)}
    # create songs from a file name and import into the library
  end
end
