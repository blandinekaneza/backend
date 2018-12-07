class NationalityResource < JSONAPI::Resource
	attributes :name
	has_many :payloads
	has_many :missions, through: :payloads
end