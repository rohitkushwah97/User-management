class User < Account
	has_many :adresses, as: :addressable
	has_many :orders, dependent: :destroy
end
