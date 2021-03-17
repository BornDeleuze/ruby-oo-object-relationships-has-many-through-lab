require 'pry'
class Artist
    attr_accessor :name, :genre

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        # binding.pry
        Song.all.select {|song| song.artist == self}
    end

    def new_song(name, genre)
        name = Song.new(name, self, genre)
    end

    def genres
        # binding.pry
        self.songs.collect {|song| song.genre}
    end

    def self.all
        @@all
    end

end