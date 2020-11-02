class Post < ApplicationRecord
    belongs_to :blogger
    belongs_to :destination
    validates :title, presence: true
    validates :content, length: {minimum: 100}


    def likes
        self.likes += 1
    end
end
