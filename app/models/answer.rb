class Answer < ApplicationRecord
	has_many :results
	has_many :exams, through: :results
	belongs_to :question
end
