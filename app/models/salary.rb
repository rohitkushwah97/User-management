class Salary < ApplicationRecord
	belongs_to :account
	validates :base_salary, presence: true, numericality: { greater_than: 0 }
  validates :bonus, numericality: { greater_than_or_equal_to: 0 }
  validates :deduction, numericality: { greater_than_or_equal_to: 0 }
end
