require_relative './concerns/memorable'
require 'pry'

class Song
  extend Memorable, Findable
  include Paramable
  attr_accessor :name
  attr_reader :artist

  @@items = []

  def initialize
    @@items << self
  end

  def artist=(artist)
    @artist = artist
  end
end
