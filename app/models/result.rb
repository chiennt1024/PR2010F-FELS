class Result < ApplicationRecord
	belongs_to :exam
	belongs_to :question
	belongs_to :answer, optional: true
	delegate :is_correct, to: :answer, prefix: :answer, allow_nil: true
end
