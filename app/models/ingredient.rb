class Ingredient
    attr_accessor :ingredient, :calorie
    @@all = []

    def initialize(ingredient, calorie)
        @ingredient = ingredient
        @calorie = calorie
        @@all << self

    end
    def self.all
        @@all
    end

    def dessert
        Dessert.all.select {|des| des.ingredient == self}
    end

    def bakeries
        Bakery.all.select {|bake| bake.ingredient == self}
    end
    def self.find_all_by_name(ingredient)
        self.all.find do |ingre|
            self.all.include?(ingre)
        end
    end

enda