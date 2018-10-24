class MusicLibraryController

  attr_accessor :path

  def initialize(path = "./db/mp3s")
    MusicImporter.new(path).import
  end

  def list_songs
    Song.all.each_with_index {|song, index| puts "#{index +1}. #{song}"}
  end

  def call
    input = ""
    until input == 'exit'
      input = gets.strip

      case input
      when "list songs"
        list_songs

      when "list artists"
        Artist.all.each {|artist| puts "#{artist.name}"}

      when "list genres"
        Genre.all.each {|genre| puts "#{genre.name}"}

      when "play song"
        input = gets.strip.to_i
        song_list = list_songs
        song_list.each do |song|
          if input == song.index
            puts "Playing {song}"

          end

        end
        end
      end
    end
  end
