class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.create(name)
    new_song = self.new
    @@all << new_song
    new_song
  end 
  
  def self.new_by_name(name)
    new_song = self.new
    new_song.name = name
    @@all << new_song
    new_song
  end 

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
