class Course < ApplicationRecord
	has_many :user_courses
	has_many :users, through: :user_courses
	has_many :exams
	has_many :objectives
	belongs_to :category
end