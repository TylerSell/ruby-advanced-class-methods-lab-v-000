class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    song = self.new 
    song.save
    song 
  end
  
  def self.new_by_name(string)
    song = self.new
    song.name = string 
    song
  end
  
  def self.create_by_name(string)
    song = self.new
    song.name = string 
    song.save
    song 
  end
  
  def self.find_by_name(string)
    self.all.each do |name|
      if 
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.destroy_all
    self.all.clear
  end
end
