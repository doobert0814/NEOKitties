class Toy < ActiveRecord::Base
    has_many :kitties
    has_many :users, through: :kitties
end