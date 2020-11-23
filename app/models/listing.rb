class Listing
    attr_accessor :listing
    @@all = []

    def initialize(listing)
        @listing = listing
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select {|trip| trip.listing == self}
    end

    def trip_count
        self.trips.count
    end

    def guests
        self.trips.map {|trip| trip.guest}
    end

    def self.find_all_by_city(city)
        self.all.select {|list| list.listing == city}
    end

    def self.most_popular
        self.all.sort_by {|list| list.trip_count}.last
    end
end
