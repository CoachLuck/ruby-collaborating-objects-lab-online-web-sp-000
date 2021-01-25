class MP3Importer
  attr_accessor :path

  def initialize(path)
    # get all .mp3 files and add to @files
    @path = path
  end

  def files
    # load all mp3 files and remove path from the name
    name = Dir["#{path}/*.mp3"]
  end

  def import
    # create songs from a file name and import into the library
  end
end
