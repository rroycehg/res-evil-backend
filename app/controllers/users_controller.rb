class UsersController < ApplicationController

    def create 
        user = User.new(user_params)
        if user.save
            render json: user, status: :created
        else
            render json: { error: "Not valid, please try again"}, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.permit(:username, :password)
    end
end
