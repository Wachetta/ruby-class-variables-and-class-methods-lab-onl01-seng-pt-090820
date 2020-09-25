require 'pry'
class Song 

 attr_accessor :name, :artist, :genre
    @@artists= []
    @@genres = []
    @@count = 0
    @@artist_count = {}
    @@genre_count = {} 
 
     def initialize(song_name, artist, genre)
    @name = song_name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
    @@artist_count.store(@artist, 0)
    @@genre_count.store(@genre, 0)
   
   #binding.pry
    end
   
    def self.count
      @@count
    end 
 
    def self.artists
      @@artists.uniq
    end
 
    def self.genres
      @@genres.uniq
    end
    
    def self.genre_count
      if @@gebre_count.start_with?("r") 
        @@genre_count.collect do |genre, num|
      num + 1
        end
    @@genre_count
     end
  
     def self.artist_count
      @@artist_count
  
      end
    
 end  