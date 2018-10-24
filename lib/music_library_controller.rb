class MusicLibraryController

  attr_accessor :path

  def initialize(path = "./db/mp3")
    @path = path
  end
end
