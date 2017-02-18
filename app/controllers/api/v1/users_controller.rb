# app/controllers/api/v1/users_controller.rb

module Api::V1
  class UsersController < ApiController

    # GET /v1/users
    def index
      render json: User.all
    end

  end
end
