require 'pry'

class Artist
  attr_accessor :name, :genres, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end

  def new_song(name, genre)
    ns = Song.new(name, self, genre)
    @songs << ns
    ns
  end

  def genres
    self.songs.collect { |song|
      song.genre
    }
  end

  def self.all
    @@all
  end
end
