class Blogger < ApplicationRecord
    validates :bio, length: { minimum: 30 }
    validates :name, uniqueness: true
    validates :age, numericality: {greater_than: 0 }

    has_many :posts
    

end
