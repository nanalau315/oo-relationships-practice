require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

ct1 = Listing.new("City A")
ct2 = Listing.new("City B")
ct3 = Listing.new("City C")

p1 = Guest.new("P1")
p2 = Guest.new("P2")
p3 = Guest.new("P3")

tp1 = Trip.new(ct1, p1)
tp2 = Trip.new(ct2, p1)
tp3 = Trip.new(ct3, p3)
tp4 = Trip.new(ct1, p2)
tp5 = Trip.new(ct1, p1)
tp6 = Trip.new(ct2, p3)
tp7 = Trip.new(ct2, p1)
tp8 = Trip.new(ct1, p3)

# p ct1.guests
# p ct2.guests

# p ct1.trips
# p ct2.trips

# p ct1.trip_count

# p Listing.find_all_by_city("City A")
# p Listing.most_popular

# p p1.listings
# p p1.trips
# p p1.trip_count
# p Guest.pro_traveller
# p Guest.find_all_by_name("P1")