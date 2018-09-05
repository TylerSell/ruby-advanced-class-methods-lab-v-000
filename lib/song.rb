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
    self.all.detect {|song| song.name == string}
  end
  
  def self.find_or_create_by_name(string)
    check = self.find_by_name(string)
    if check == nil 
      self.create_by_name(string)
    else 
      check 
    end
  end
  
  def self.alphabetical
    self.all.sort_by {|song| song.name}
  end
  
  def self.new_from_filename(mp3)
    filename = mp3
      data = filename.split(" - ", ".")
      song_name = data[1]
      artist_name = data[0]
    song = self.new 
    song.name = song_name
    song.artist_name = artist_name
    song 
  end
      
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
