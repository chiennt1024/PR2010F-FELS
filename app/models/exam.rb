class Exam < ApplicationRecord
	belongs_to :user
	belongs_to :course
	has_many :exam_answers
	has_many :answers, through: :exam_answers
	has_many :exam_questions
	has_many :questions, through: :exam_questions
end
