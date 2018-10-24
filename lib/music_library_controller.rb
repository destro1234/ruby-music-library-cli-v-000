class MusicLibraryController

  attr_accessor :path

  def initialize(path = "./db/MP3s")
    MusicImporter.new(path)
  end
end
