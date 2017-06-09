class Product < ApplicationRecord
	#has_many :comment_pros, dependent: :destroy
	validates :name, presence: true,
                    length: { minimum: 3 }

belongs_to :user
   acts_as_commentable
  end
