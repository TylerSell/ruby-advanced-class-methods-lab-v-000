class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(song)
    @song = song 
    @song.save
    @song 
  end
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.destroy_all
    self.class.all.clear
  end
end
