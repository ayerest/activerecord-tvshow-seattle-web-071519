class Show < ActiveRecord::Base

    def self.highest_rating
        Show.all.maximum("rating")
    end


    def self.most_popular_show
        big_ratings = self.highest_rating
        Show.find_by(rating: big_ratings)
    end

    def self.lowest_rating
        Show.all.minimum("rating")
    end

    def self.least_popular_show
        low_ratings = self.lowest_rating
        Show.find_by(rating: low_ratings)
    end

    def self.ratings_sum
        Show.all.sum("rating")
    end

    def self.popular_shows
        Show.all.where("rating > 5")
    end

    def self.shows_by_alphabetical_order
        Show.all.order(name: :asc)
    end
end