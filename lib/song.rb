class Song
attr_accessor :name, :artist, :genre
 @@artist = []
 @@genre = []
 @@count = 0


def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genre << @genre
    @@artist << @artist
    @@count += 1
end

def self.count
    @@count
end

def self.artist
    @@artist.uniq
end

def self.genres
    @@genres.uniq
end

def self.genre_count
    @@genre.each do |value|
        if value ==@@genre
            @@genre_count << value
        end
    end
end

def self.artist_count
    @@artist_count = {}
    @@artist.each do |artist|
        if artist_count[artist]
            artist_count[artist] += 1
        else
            artist_count[artist] = 1
        end
        end
        artist_count
    end
end