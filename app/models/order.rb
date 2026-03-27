class Order < ApplicationRecord
	belongs_to :account
	has_many :order_items, dependent: :destroy

  enum status: { pending: 0, paid: 1, cancelled: 2 }

  validates :amount, numericality: { greater_than_or_equal_to: 0 }
end
