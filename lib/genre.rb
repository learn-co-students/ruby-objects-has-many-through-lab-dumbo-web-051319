class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    # binding.pry
  end

  def self.all
    @@all
  end

  def songs
    songs_arr = []
    Song.all.each do |song|
      if song.genre.name == @name
        songs_arr << song
      end
    end
    songs_arr
  end

  # def songs
  #   Song.all.select do |song|
  #     song.genre == @name
  #     # binding.pry
  #   end
  # end

  def artists
    artists_arr = []
    songs.each do |song|
      artists_arr << song.artist
    end
    artists_arr
  end

  # def artists
  #   songs.select do |song|
  #     song.artist == @name
  #     # binding.pry
  #   end
  # end

end
