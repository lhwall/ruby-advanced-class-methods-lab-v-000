require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.create
    new_song = self.new
    @@all << new_song
    new_song
  end 
  
  def self.new_by_name(name)
    new_song = self.new
    new_song.name = name
    new_song
  end 

  def self.create_by_name(name)
    new_song = self.new
    new_song.name = name
    @@all << new_song
    new_song
  end 

  def self.find_by_name(name)
    self.all.detect do |song|
      song.name == name
    end
  end
  
  def self.find_or_create_by_name(name)
    if find_by_name(name).class == Song
     find_by_name(name)
    else create_by_name(name)
    end
  end

  def self.alphabetical
    alphabetical_array = self.all.sort_by do |song| song
    end
    alphabetical_array
    binding.pry
  end 

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
