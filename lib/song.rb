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
      if song.name = name
        return song
      end
    end
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
