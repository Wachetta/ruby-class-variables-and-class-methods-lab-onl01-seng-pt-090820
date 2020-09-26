require 'pry'
class Song 

 attr_accessor :name, :artist, :genre
    @@artists= []
    @@genres = []
    @@count = 0
  
 
      def initialize(song_name, artist, genre)
       @name = song_name
       @artist = artist
       @genre = genre
       @@count += 1
       @@artists << @artist
       @@genres << @genre
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
      genre_hash = {}
       @@genres.each do |genre|
         if genre_hash |genre|
          genre_hash[genre] += 1
         else
           genre_hash[genre] = 1
          end
       end
       genre_hash
  end
end