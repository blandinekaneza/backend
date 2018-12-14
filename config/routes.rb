Rails.application.routes.draw do
	jsonapi_resources :fetch_data
	jsonapi_resources :missions do
		get 'search', on: :collection
		jsonapi_related_resources :payloads
		jsonapi_related_resources :nationalities
	end
	jsonapi_resources :payloads
	jsonapi_resources :nationalities
end