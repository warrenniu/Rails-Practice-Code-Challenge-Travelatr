class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def last_five_posts
        self.posts.last(5).map do |post|
            post.title
        end
        
    end

    def most_likes
        # self.posts.likes.max
        self.posts.map do |post|
             post.likes
        end
    end

    def blogger_age
        self.bloggers.map do |blogger|
            blogger.age
        end
    end

    def blogger_average_age
        blogger_age.sum / blogger_age.size
    end

end
