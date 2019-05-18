require "pry"
require "./lib/artist.rb"
require "./lib/genre.rb"
require "./lib/song.rb"

spac_mad = Artist.new("Space Madness")
rem = Artist.new("R. E. M.")
sup_chu = Artist.new("Superchunk")

hav_reason = spac_mad.new_song("If I Had a Reason", "Indie / Alternative")
lones = spac_mad.new_song("Lonesomeville", "Indie / Alternative")
whisper = sup_chu.new_song("In a Stage Whisper", "Indie / Alternative")


binding.pry
puts "'s been run'"
