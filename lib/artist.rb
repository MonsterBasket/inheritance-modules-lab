require_relative './concerns/memorable'
require 'pry'

class Artist
  extend Memorable, Findable
  include Paramable
  attr_accessor :name
  attr_reader :songs

  @@items = []

  def initialize
    @@items << self
    @songs = []
  end

  # def self.all
  #   @@all
  # end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end
