class Category < ApplicationRecord
	has_many :courses
	validates :category_name, presence: true
end
