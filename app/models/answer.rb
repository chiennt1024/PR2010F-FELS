class Answer < ApplicationRecord
	has_many :exam_answers
	has_many :exams, through: :exam_answers
	belongs_to :question
end
