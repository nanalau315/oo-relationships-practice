class Dessert
    attr_accessor :dessert, :bakery
    @@all = []

    def initialize(dessert)
        @dessert = dessert
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        Ingredient.all.select {|ingre|ingre.dessert == self}
    end

    def bakery
        Bakery.all.select {|bake|bake.dessert == self}
    end

    def calories
        self.ingredients.calorie.sum
    end
end