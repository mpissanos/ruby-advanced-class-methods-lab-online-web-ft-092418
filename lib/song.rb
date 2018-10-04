class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end
  
  def save
    self.class.all << self
  end
  
  def self.create
    new_song = self.new
    new_song.save
    new_song
  end
  
  def self.new_by_name(song_name)
    new_song = self.new
    new_song.name = song_name
    new_song
  end
    
  def self.create_by_name(song_name)
    new_song = self.new
    new_song.name = song_name
    @@all << new_song
    new_song
  end
  
  def self.find_by_name(song_name)
    self.all.detect{|song| song.name == song_name}
  end
  
  def self.find_or_create_by_name(song_name)
    self.find_by_name(song_name) || self.create_by_name(song_name)
  end
  
  def self.alphabetical
    @@all.sort_by {|song| song.name}
  end
  
  def self.new_from_filename(filename)
    new_song = self.new
<<<<<<< HEAD
    new_song.artist_name = filename.split(/[^a-zA-Z\s]|\s-\s/)[0]
    new_song.name = filename.split(/[^a-zA-Z\s]|\s-\s/)[1]
=======
    new_song.name = filename.split(/[^a-zA-Z\s*]/)[1]
    
>>>>>>> f8c9338aacc69d6a50943bce94b39ad6a7c2e492
    new_song
    
  end
  
<<<<<<< HEAD
  def self.create_from_filename(filename)
    new_song = self.new
    new_song.artist_name = filename.split(/[^a-zA-Z\s]|\s-\s/)[0]
    new_song.name = filename.split(/[^a-zA-Z\s]|\s-\s/)[1]
    @@all << new_song
    new_song
=======
  def create_from_filename
    new_song = self.new
    
>>>>>>> f8c9338aacc69d6a50943bce94b39ad6a7c2e492
  end
  
  def self.destroy_all
    @@all.clear
  end

end





