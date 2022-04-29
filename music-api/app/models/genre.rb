class Genre < ApplicationRecord
    validates :name, presence: true
    validates :name, uniqueness: true
    has_many :musics 
    has_many :artists
end
