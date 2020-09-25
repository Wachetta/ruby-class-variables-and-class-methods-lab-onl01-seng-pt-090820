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
      genre_count = {}
      
      if @@genre_count.has_key?("rap")
      
        end
       elsif @@genre_count.has_key("pop")
        @@genre_count.collect do |a, b|
         b + 1
         end
          end
       end
end