class Course < ApplicationRecord
	searchkick
	has_many :exams
	has_many :users, through: :exams
	has_many :objectives
	belongs_to :category
	has_many :questions
	validates :course_name, presence: true
end