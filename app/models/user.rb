class User < ActiveRecord::Base
    has_many :kitties
    has_many :toys, through: :kitties
end