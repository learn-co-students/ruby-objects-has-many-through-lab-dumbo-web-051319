require 'pry'

class Genre
  attr_reader :name, :songs, :artists

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
    @@all << self
  end

  def songs
    Song.all.each do |song|
      if song.genre == self.name
        @songs << song
      end
    end
  end

  def artists
    self.songs.collect do |song|
      song.artist
    end
  end

  def self.all
    @@all
  end
end
