class CharactersController < ApplicationController

    def index
        char = Character.all 
        render json: char
    end

    def show
        char = find_character
        if char
            render json: char, status: :ok
        else
            render json: { error: "Character Not Found"}, status: :not_found
        end
    end

    def create 
        
    end

    private

    def find_character
        Character.find_by(id: params[:id])
    end


end
