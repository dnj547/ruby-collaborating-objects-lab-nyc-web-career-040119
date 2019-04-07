require 'pry'
class Song
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.new_by_filename(filename)
    song = Song.new(filename.split(" - ")[1])
    song.artist = Artist.new(filename.split(" - ")[0])
    song
  end
  def self.all
    @@all
  end
end
