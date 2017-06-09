class Product < ApplicationRecord
	#has_many :comment_pros, dependent: :destroy
	validates :name, presence: true,
                    length: { minimum: 3 }


   acts_as_commentable
  end
