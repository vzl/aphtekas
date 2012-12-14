class CategoryProduct < ActiveRecord::Base
    has_many :subcategoryproducts
end
