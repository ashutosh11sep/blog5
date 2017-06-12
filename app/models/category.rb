class Category < ApplicationRecord
has_many :books
has_many :blogs
has_many :products
end
