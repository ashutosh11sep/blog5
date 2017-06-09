class Book < ApplicationRecord

	acts_as_commentable

#belongs_to :category
belongs_to :user

end
