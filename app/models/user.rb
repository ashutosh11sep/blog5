class User < ApplicationRecord

	has_many :books
	has_many :comments
	has_many :articles
	has_many :blogs
	has_many :products



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
