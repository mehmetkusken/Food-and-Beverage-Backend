class FavoritesController < ApplicationController

    def index
        favorites = Favorite.all
        render json: favorites
    end

    def create
        favorite = logged_in_user.favorites.create!(favorite_params)
        render json: favorite
    end

    def destroy
        favorite = Favorite.find(params[:id])
        favorite.destroy
        render json: {message: 'Restaurant deleted'}
    end

    private

    def favorite_params
        params.permit(:restaurant_id, :user_id , :is_favorite)
    end
end
