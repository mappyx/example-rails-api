class Api::V1::HomeController < AbstractApiController
    before_action :authenticate_user!
    def index
        render json: { status: :ok }
    end 
end
