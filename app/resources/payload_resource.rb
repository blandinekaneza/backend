class PayloadResource < JSONAPI::Resource
	attributes :payload_id, :reused, :manufacturer, :payload_type, :payload_mass_kg, :payload_mass_lbs, :orbit
	has_one :mission
	has_one :nationality
end