class MissionsController < JSONAPI::ResourceController
    def search
        term = params[:term] || nil
        missions = []
        missions = Mission.where('description LIKE ?', "%#{term}%") if term
        render json: missions
    end
end