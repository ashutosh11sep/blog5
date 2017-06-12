class Blog < ApplicationRecord
belongs_to :user
belongs_to :category
acts_as_commentable
	validates :title, presence: true,
                    length: { minimum: 3 }

acts_as_commentable
end


