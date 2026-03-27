class Employee < Account
	has_many :adresses, as: :addressable
	has_many :salaries, foreign_key: :account_id, dependent: :destroy
end
