class MusicLibraryController

  attr_accessor :path

  def initialize(path = "./db/mp3s")
    MusicImporter.new(path).import
  end

  def call
    input = ""
    until input == 'exit'
      input = gets.strip

      case input
      when "list songs"
        Song.all.each_with_index {|song, index| puts "#{index +1}. #{song}"}
      end

      when "list artists"
        Artist.all.each {|artist| puts "#{artist.name}"}
      end
  end
end
