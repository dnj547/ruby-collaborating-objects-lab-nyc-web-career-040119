require 'pry'
class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def add_song(song)
    song.artist = self
  end
  def songs
    Song.all.select {|song| song.artist == self}
  end
  def save
    @@all << self
  end
  def self.all
    @@all
  end
  def self.find_or_create_by_name(name)
    if all.find {|artist| artist.name == name}.nil?
      Artist.new(name)
    else
      nil
    end
  end
  def print_songs
    songs.each {|song| print "#{song.name}\n"}
  end
end
