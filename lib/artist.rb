# require "./genre"
# require "./song"
require 'pry'

class Artist
  @@all = []

  attr_reader :name, :genre

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end


  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    songs.map {|song| song.genre }
  end

  def self.all
    @@all
  end


end
