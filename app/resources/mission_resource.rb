class MissionResource < JSONAPI::Resource
	attributes :mission_name, :mission_id, :wikipedia, :website, :twitter, :description
	has_many :payloads
	has_many :nationalities, through: :payloads
end