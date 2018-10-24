class MusicLibraryController

  attr_accessor :path

  def initialize(path = "./db/MP3s")
    @path = path
  end
end
