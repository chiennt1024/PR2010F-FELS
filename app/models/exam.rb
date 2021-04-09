class Exam < ApplicationRecord
	belongs_to :user
	belongs_to :course
	has_many :results


	has_many :questions, through: :results
	has_many :answers, through: :results

	accepts_nested_attributes_for :results
end
