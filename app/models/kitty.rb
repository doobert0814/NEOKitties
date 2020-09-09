class Kitty < ActiveRecord::Base
    belongs_to :user
    belongs_to :toys
end