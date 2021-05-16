class Bakery
    attr_accessor :bakery
    @@all = []
    def initialize(bakery)
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        Dessert.all.select {|ingre| ingre.bakery == self}
    end

    def desserts
        Dessert.all.select {|dessert| dessert.bakery == self}
    end

    def average_calories
        desserts.calories.sum / desserts.size
    end

    def shopping_list
        ingredients.join(",")
    end
end
