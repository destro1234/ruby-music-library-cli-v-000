class MusicLibraryController

  attr_accessor :path

  def initialize(path = "./db/mp3s")
    importer = MusicImporter.new(path)
    importer.import
  end

  def call
    input = " "

    until input == "exit"
      input = gets.strip

      case input

      when "list songs"
        Song.all.each.with_index(1) {|song, index| puts "#{index}. #{song.to_s}"}
      when "list artists"
        Artist.all.each.with_index(1) {|artist, index| puts "#{index}. #{artist.name}"}
      when "list genres"
        Genre.all.each.with_index(1) {|genre, index| puts "#{index}. #{genre.name}"}
      end
    end
  end
end
