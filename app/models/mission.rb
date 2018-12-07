class Mission < ApplicationRecord
	has_many :payloads
	has_many :nationalities, through: :payloads
end