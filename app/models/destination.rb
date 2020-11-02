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


end
