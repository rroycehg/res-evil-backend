class FavoritesController < ApplicationController
    # before_action :authorize
    # skip_before_action :authorize, only: [:index]
    wrap_parameters format: []

    def index
        fave = Favorite.all
        render json: fave
    end


    def show
        fave = Favorite.find_by(user_id: session[:user_id])
        if fave
            render json: fave
        else
            render json: { error: "Character to add to favorites not found"}, status: :not_found
        end
    end

    def create 
        fave = Favorite.create(favorite_params)
        if fave
            render json: fave, status: :created
        else
            render json: { error: "Must be logged in to add"}, status: :unprocessable_entity
        end
    end

    def destroy
        fave = find_favorite
        if fave
            fave.users.destroy_all
            fave.characters.destroy_all
            fave.destroy
            render json: {}
        else
            render json: { error: "Character Not Found"}, status: :not_found
        end
    end

    def index_user_favs
        fav = User.find_by(id: params[:id]).favorites
        render json: fav
    end

    

    private

    def find_favorite
        Favorite.find_by(id: params[:id])
    end

    def favorite_params
        params.permit(:character_id, :user_id)
    end

    def authorize
        return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
    end
end
