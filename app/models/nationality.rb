class Nationality < ApplicationRecord
	has_many :payloads
	has_many :missions, through: :payloads
end