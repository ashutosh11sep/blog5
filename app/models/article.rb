class Article < ApplicationRecord

  acts_as_commentable
  belongs_to :user


  #has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }

                    

  end
