require "pry"

class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(title, genre)
    Song.new(title, self, genre)
    # binding.pry
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  # def songs
  #   artist_songs = Song.all.map do |song|
  #     # binding.pry
  #     if song.artist == @name
  #       song.name
  #     end
  #     # binding.pry
  #   end
  #   artist_songs.compact
  #   # binding.pry
  # end

  def genres
    songs.map do |song|
      song.genre
      # binding.pry
    end
  end

end
