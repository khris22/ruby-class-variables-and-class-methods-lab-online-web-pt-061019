require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def count
    @@count
  end

  def genres
    @@genres.uniq!

  end

  def artists
    @@artist.uniq!
  end

  def genre_count
    #binding.pry 
    genre_count_hash = {}
    @@genres.map {|key|
      if hash[key]
        hash[key] += 1
      else
        hash[key] = 1
      end
    }
    genre_count_hash
  end

  def artist_count

  end


end
