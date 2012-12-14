class Category < ActiveRecord::Base
    has_many :subs
    has_many :products
end
