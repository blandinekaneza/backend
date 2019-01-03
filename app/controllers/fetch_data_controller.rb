class FetchDataController < JSONAPI::ResourceController
	def index
		@missions = Mission.all
		@payloads = Payload.all
		@nationalities = Nationality.all
		render :json => {:missions => @missions, 
                         :payloads => @payloads,
                         :nationalities => @nationalities }
	end
end