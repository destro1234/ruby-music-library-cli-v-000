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
        Song.all.each_with_index(1) {|song, index| puts "#{index}. #{song}"}
      end
    end
  end
end
