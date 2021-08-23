class FavoritesController < ApplicationController

    def index
        fave = Favorite.all
        render json: fave
    end

    def show
        fave = find_favorite
        if fave
            render json: fave
        else
            render json: { error: "Character to add to favorites not found"}, status: :not_found
        end
    end

    def create 
        fave = Character.new(favorite_params)
        if fave.save
            render json: fave, status: :created
        else
            render json: { error: "Not valid, please try again"}, status: :unprocessable_entity
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

    private

    def find_favorite
        Favorite.find_by(id: params[:id])
    end

    def favorite_params
        params.permit(:character_id, :user_id)
    end
end
