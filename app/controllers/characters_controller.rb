class CharactersController < ApplicationController

    def index
        char = Character.all 
        render json: char
    end

    def show
        char = find_character
        if char
            render json: char
        else
            render json: { error: "Character Not Found"}, status: :not_found
        end
    end

    def create 
        char = Character.new(character_params)
        if char.save
            render json: char, status: :created
        else
            render json: { error: "Not valid, please try again"}, status: :unprocessable_entity
        end
    end

    def update
        char = find_character
        if char
            char.udpate(character_params)
            render json: char
        else
            render json: { error: "Character Not Found" }, status: :not_found
        end
    end

    def destroy
        char = find_character
        if char
            char.users.destroy_all
            char.favorites.destroy_all
            char.destroy
            render json: {}
        else
            render json: { error: "Character Not Found"}, status: :not_found
        end
    end

    private

    def find_character
        Character.find_by(id: params[:id])
    end

    def character_params
        params.permit(:name, :affiliation, :bio, :img, :VIT, :STR, :DEF)
    end

end
