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

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    # binding.pry
    genre_count_hash = {}
    @@genres.each do |key|
      if genre_count_hash[key]
        genre_count_hash[key] += 1
      else
        genre_count_hash[key] = 1
      end
    end
    genre_count_hash
  end

# different version with .map or .collect

  def artist_count
    artist_count_hash = {}
    @@artists.map {|key|
      if artist_count_hash[key]
        artist_count_hash[key] += 1
      else
        artist_count_hash[key] = 1
      end
    }
    artist_count_hash
  end

end
